<?php

namespace App\Http\Controllers\Frontend;

use App\Cause;
use App\CauseLogs;
use App\Helpers\DonationHelpers;
use App\Helpers\FlashMsg;
use App\Http\Controllers\Controller;
use App\Events;
use App\Notification;
use App\Recuring;
use App\Reward;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Str;

use Xgenious\Paymentgateway\Facades\XgPaymentGateway;


class CausesLogController extends Controller
{
    const SUCCESS_ROUTE = 'frontend.donation.payment.success';
    const CANCEL_ROUTE = 'frontend.donation.payment.cancel';

    public function store_donation_logs(Request $request)
    {

        $gift_amount_validation_condition = !empty($request->gift_id) ? 'nullable' : 'required';
        $requring_validation = !is_null($request->cid) || !is_null($request->id) ? 'nullable' : 'required';

        if(!is_null($request->id)){
            $log_exists = CauseLogs::findOrFail($request->id) ;
        }

        $this->validate($request, [
            'name' => ''.$requring_validation.'|string|max:191',
            'email' => ''.$requring_validation.'|email|max:191',
            'cause_id' => ''.$requring_validation.'|string',
            'amount' => ''.$gift_amount_validation_condition.'|string',
            'anonymous' => 'nullable|string',
            'selected_payment_gateway' => 'required|string',
        ],
            [
                'name.required' => __('Name field is required'),
                'email.required' => __('Email field is required'),
                'amount.required' => __('Amount field is required'),
            ]
        );

        $selected_payment_gateway = $request->selected_payment_gateway;

        //Checking campaigns are owner campaigns or not
            $cause = Cause::find($request->cause_id);
            $admin_id = Auth::guard('admin')->id();
            $user_id = Auth::guard('web')->id();

            $alert_msg = back()->with(FlashMsg::item_delete('Campaign owner can not donate on this campaign..!'));

           if(Auth::guard('admin')->check()) {
               if (!empty($cause->admin_id) && $cause->admin_id == $admin_id) {
                   return $alert_msg;
               }
            }

            if(Auth::guard('web')->check()) {
                if (!empty($cause->user_id) && $cause->user_id == $user_id) {
                    return $alert_msg;
                }
            }
        //Checking campaigns are owner campaigns or not



        $minimum_donation_amount = get_static_option('minimum_donation_amount');
        $msg = __('Minimum Donation Amount is : ');
        if (!empty($minimum_donation_amount) && $request->amount < $minimum_donation_amount) {
            return back()->with(FlashMsg::settings_delete($msg . amount_with_currency_symbol($minimum_donation_amount)));
        }

        if (empty(get_static_option($request->selected_payment_gateway. '_gateway'))) {
            return back()->with(['msg' => __('your selected payment gateway is disable, please select avialble payment gateway'), 'type' => 'danger']);
        }

        $cause_details = Cause::find($request->cause_id);
        if (empty($cause_details)) {
            return back()->with(['msg' => __('donation cause not found'), 'type' => 'danger']);
        }
        $admin_charge = $request->has('admin_tip') ? $request->admin_tip : DonationHelpers::get_donation_charge($request->amount, false);

        $amount = $request->amount;

        $minimum_goal_amount = Reward::where('status','publish')->orderBy('reward_goal_from','asc')->get()->min('reward_goal_from');

        if($cause_details->reward == 'on' && auth()->guard('web')->check() && $amount >= $minimum_goal_amount){

            $reward_point = Reward::select('reward_point')
                ->where('status', 'publish')
                ->where('reward_goal_from', '<=', $amount)
                ->where('reward_goal_to', '>=', $amount)
                ->first();

             $reward_point = optional($reward_point)->reward_point ?? 0;
             if($reward_point > 0){
                  $reward_amount = $reward_point / get_static_option('reward_amount_for_point');
             }
        }

        if (!empty($request->order_id)) {
            $payment_log_id = $request->order_id;
        } else {

            if(empty($log_exists)){
                $log_exists  = [];
            }

            $name = $request->name;
            $email = $request->email;
            $cause_id = $request->cause_id;
            $gift_id = $request->gift_id;
            $cid = $request->cid;
            $payment_type = $request->payment_type;
            $captcha_token = $request->captcha_token;
            $admin_tip = $request->admin_tip;

            $anonymous = $request->anonymous;
            $manual_payment_attachment = $request->manual_payment_attachment;
            $validation = $request;


            $data_unset_old_fields = $request;
            unset(
                $data_unset_old_fields['cid'],
                $data_unset_old_fields['cause_id'],
                $data_unset_old_fields['payment_type'],
                $data_unset_old_fields['captcha_token'],
                $data_unset_old_fields['amount'],
                $data_unset_old_fields['name'],
                $data_unset_old_fields['email'],
                $data_unset_old_fields['admin_tip'],
                $data_unset_old_fields['selected_payment_gateway'],
                $data_unset_old_fields['manual_payment_attachment'],
                $data_unset_old_fields['custom_admin_tip'],
                $data_unset_old_fields['payment_gateway'],
                $data_unset_old_fields['gift_id'],
            );


          //Custom Fields Code
            $validated_data = $this->get_filtered_data_from_request(get_static_option('donation_page_form_fields'),$data_unset_old_fields);
            $all_attachment = $validated_data['all_attachment'];
            $all_field_serialize_data = $validated_data['field_data'];


          //Custom Fields Code
            $payment_log_id = CauseLogs::create([
                'recuring_token' => $log_exists->recuring_token ?? ($payment_type == 'monthly' ? Str::random(20) : null),
                'email' => $log_exists->email ?? $email ?? '',
                'name' => $log_exists->name ?? $name ?? '',
                'cause_id' => $log_exists->cause_id ?? $cause_id,
                'gift_id' => $log_exists->gift_id ?? $gift_id ?? null,
                'amount' => $amount,
                'admin_charge' =>$log_exists->admin_charge ??  $admin_charge ?? null,
                'reward_point' =>  $log_exists->reward_point ??  $reward_point ?? null,
                'reward_amount' => $log_exists->reward_amount ?? $reward_amount ?? null,
                'anonymous' => $log_exists->anonymous ?? !empty($anonymous) ? 1 : 0,
                'payment_gateway' =>  $log_exists->payment_gateway ?? $selected_payment_gateway,
                'user_id' => $log_exists->user_id ?? (auth()->check() ? auth()->user()->id : null),
                'status' => $log_exists->status ?? 'pending',
                'track' =>  $log_exists->track ?? (Str::random(10) . Str::random(10)),
                'custom_fields' => json_encode($all_field_serialize_data) ?? [],
                'attachments' => json_encode($all_attachment) ?? [],
            ])->id;
        }

        $payment_type = '';
        if($payment_type == 'monthly'){
            Recuring::create([
                'cause_log_id'=>$payment_log_id,
                'expire_date' => Carbon::now()->addMonth(1)
            ]);
        }

        $donation_payment_details = CauseLogs::find($payment_log_id);
        $total_amount = DonationHelpers::get_donation_total($amount, false, $admin_tip ?? null);

        if(!empty($payment_log_id)){
           Notification::create([
               'cause_log_id'=>$payment_log_id,
               'title'=> 'New donation payment done',
               'type' =>'cause_log',
           ]);
        }

        if ($selected_payment_gateway === 'paypal') {
            
            try{
                $paypal = $this->getPaypalPay();
                $paypal->setExchangeRate(get_exchange_rate('USD'));
                $response = $paypal->charge_customer(
                    $this->common_charge_customer_data($total_amount,$donation_payment_details,route('frontend.donation.paypal.ipn'))
                );
    
                return $response;
            }catch(\Exception $e){
                return back()->with(['msg' => $e->getMessage(),'type' => 'danger']);
            }

        } elseif ($selected_payment_gateway === 'paytm') {

            try{
                $paytm = XgPaymentGateway::paytm();
                $paytm->setMerchantId(getenv('PAYTM_MERCHANT_ID'));
                $paytm->setMerchantKey(getenv('PAYTM_MERCHANT_KEY'));
                $paytm->setMerchantWebsite(getenv('PAYTM_MERCHANT_WEBSITE'));
                $paytm->setChannel(getenv('PAYTM_CHANNEL'));
                $paytm->setIndustryType(getenv('PAYTM_INDUSTRY_TYPE'));
                $paytm->setCurrency(getenv('SITE_GLOBAL_CURRENCY'));
                $paytm->setEnv(getenv('PAYTM_ENVIRONMENT'));
                $paytm->setExchangeRate(get_exchange_rate('INR'));
    
                $response = $paytm->charge_customer(
                    $this->common_charge_customer_data($total_amount,$donation_payment_details,route('frontend.donation.paytm.ipn'))
                );
    
                return $response;
            }catch(\Exception $e){
                return back()->with(['msg' => $e->getMessage(),'type' => 'danger']);
            }

        } elseif ($selected_payment_gateway === 'manual_payment') {
            $this->validate($validation, [
                'manual_payment_attachment' => 'required|file'
            ], ['manual_payment_attachment.required' => __('Bank Attachment Required')]);

            $fileName = time().'.'.$manual_payment_attachment->extension();
            $manual_payment_attachment->move('assets/uploads/attachment/', $fileName);

            CauseLogs::where(['cause_id'=> $cause_id])->update(['manual_payment_attachment' => $fileName]);
            event(new Events\DonationSuccess([
                'donation_log_id' => $donation_payment_details->id,
                'transaction_id' => Str::random(14),
            ]));
            $order_id = Str::random(6) . $donation_payment_details->id . Str::random(6);
            return redirect()->route(self::SUCCESS_ROUTE, $order_id);

        } elseif ($selected_payment_gateway=== 'stripe') {

           try{
                $stripe = XgPaymentGateway::stripe();
                $stripe->setSecretKey(getenv('STRIPE_SECRET_KEY'));
                $stripe->setPublicKey(getenv('STRIPE_PUBLIC_KEY'));
                $stripe->setCurrency(getenv('SITE_GLOBAL_CURRENCY'));
                $stripe->setEnv(getenv('STRIPE_TEST_MODE'));
                $stripe->setExchangeRate(get_exchange_rate('USD'));
    
                $response = $stripe->charge_customer(
                    $this->common_charge_customer_data($total_amount,$donation_payment_details,route('frontend.donation.stripe.ipn'))
                );
                return $response;
           }catch(\Exception $e){
                return back()->with(['msg' => $e->getMessage(),'type' => 'danger']);
            }
            

        } elseif ($selected_payment_gateway === 'razorpay') {

           try{
                $razorpay = XgPaymentGateway::razorpay();
                $razorpay->setApiKey(getenv('RAZORPAY_API_KEY'));
                $razorpay->setApiSecret(getenv('RAZORPAY_API_SECRET'));
                $razorpay->setCurrency(getenv('SITE_GLOBAL_CURRENCY'));
                $razorpay->setEnv(getenv('RAZORPAY_TESTMODE'));
                $razorpay->setExchangeRate(get_exchange_rate('INR'));
    
                $redirect_url = $razorpay->charge_customer(
                    $this->common_charge_customer_data($total_amount,$donation_payment_details,route('frontend.donation.razorpay.ipn'))
                );
                return $redirect_url;
           }catch(\Exception $e){
                return back()->with(['msg' => $e->getMessage(),'type' => 'danger']);
            }

        } elseif ($selected_payment_gateway === 'paystack') {
            
            
            try{
                $paystack = XgPaymentGateway::paystack();
                $paystack->setPublicKey(getenv('PAYSTACK_PUBLIC_KEY'));
                $paystack->setSecretKey(getenv('PAYSTACK_SECRET_KEY'));
                $paystack->setMerchantEmail(getenv('MERCHANT_EMAIL'));
                $paystack->setCurrency(getenv('SITE_GLOBAL_CURRENCY'));
                $paystack->setEnv(getenv('PAYSTACK_TEST_MODE'));
                $paystack->setExchangeRate(get_exchange_rate('NGN'));
    
                $redirect_url = $paystack->charge_customer(
                    $this->common_charge_customer_data($total_amount,$donation_payment_details,route('frontend.event.paystack.ipn'),'donation')
                );
                return $redirect_url;
            }catch(\Exception $e){
                return back()->with(['msg' => $e->getMessage(),'type' => 'danger']);
            }


        } elseif ($selected_payment_gateway === 'mollie') {

            try{
                $mollie = XgPaymentGateway::mollie();
                $mollie->setApiKey(getenv('MOLLIE_KEY'));
                $mollie->setCurrency(getenv('SITE_GLOBAL_CURRENCY'));
                $mollie->setEnv(getenv('MOLLIE_TEST_MODE'));
                $mollie->setExchangeRate(get_exchange_rate('USD'));
    
                $response = $mollie->charge_customer(
                    $this->common_charge_customer_data($total_amount,$donation_payment_details,route('frontend.donation.mollie.ipn'))
                );
                return $response;
            }
            catch(\Exception $e){
                return back()->with(['msg' => $e->getMessage(),'type' => 'danger']);
            }

        } elseif ($selected_payment_gateway === 'flutterwave') {

            try{
                $flutterwave = XgPaymentGateway::flutterwave();
                $flutterwave->setPublicKey(getenv('FLW_PUBLIC_KEY'));
                $flutterwave->setSecretKey(getenv('FLW_SECRET_KEY'));
                $flutterwave->setCurrency(getenv('SITE_GLOBAL_CURRENCY'));
                $flutterwave->setEnv(getenv('FLW_TEST_MODE'));
                $flutterwave->setExchangeRate(get_exchange_rate('USD'));
    
                $response = $flutterwave->charge_customer(
                    $this->common_charge_customer_data($total_amount,$donation_payment_details,route('frontend.donation.flutterwave.ipn'))
                );
                return $response;
            }
            catch(\Exception $e){
                return back()->with(['msg' => $e->getMessage(),'type' => 'danger']);
            }

        } elseif ($selected_payment_gateway === 'payfast') {

            
            try{
                $payfast = XgPaymentGateway::payfast();
                $payfast->setMerchantId(getenv('PF_MERCHANT_ID'));
                $payfast->setMerchantKey(getenv('PF_MERCHANT_KEY'));
                $payfast->setPassphrase(getenv('PAYFAST_PASSPHRASE'));
                $payfast->setCurrency(getenv('SITE_GLOBAL_CURRENCY'));
                $payfast->setEnv(getenv('PF_MERCHANT_ENV'));
                $payfast->setExchangeRate(get_exchange_rate('ZAR'));
    
                $response = $payfast->charge_customer(
                    $this->common_charge_customer_data($total_amount,$donation_payment_details,route('frontend.donation.payfast.ipn'))
                );
              //  session()->put('donation_log_id', $donation_payment_details->id);
                return $response;
            }
            catch(\Exception $e){
                return back()->with(['msg' => $e->getMessage(),'type' => 'danger']);
            }


          } elseif ($selected_payment_gateway === 'midtrans') {

            try{
                $midtrans = XgPaymentGateway::midtrans();
                $midtrans->setClientKey(getenv('MIDTRANS_CLIENT_KEY'));
                $midtrans->setServerKey(getenv('MIDTRANS_SERVER_KEY'));
                $midtrans->setCurrency(getenv('SITE_GLOBAL_CURRENCY'));
                $midtrans->setEnv(getenv('MIDTRANS_ENVIRONTMENT'));
                $midtrans->setExchangeRate(get_exchange_rate('IDR'));
    
                $response = $midtrans->charge_customer(
                      $this->common_charge_customer_data($total_amount,$donation_payment_details,route('frontend.donation.midtrans.ipn'))
                    );
    
                return $response;
            }
            catch(\Exception $e){
                return back()->with(['msg' => $e->getMessage(),'type' => 'danger']);
            }
         }

        elseif ($selected_payment_gateway === 'cashfree') {

            try{
                $cashfree = XgPaymentGateway::cashfree();
                $cashfree->setAppId(getenv('CASHFREE_APP_ID'));
                $cashfree->setSecretKey(getenv('CASHFREE_SECRET_KEY'));
                $cashfree->setCurrency(getenv('SITE_GLOBAL_CURRENCY'));
                $cashfree->setEnv(getenv('CASHFREE_TEST_MODE'));
                $cashfree->setExchangeRate(get_exchange_rate('INR'));
    
                $response = $cashfree->charge_customer(
                    $this->common_charge_customer_data($total_amount,$donation_payment_details,route('frontend.donation.cashfree.ipn'))
                );
                return $response;
            }
            catch(\Exception $e){
                return back()->with(['msg' => $e->getMessage(),'type' => 'danger']);
            }
        }

        elseif ($selected_payment_gateway === 'instamojo') {

            $instamojo = XgPaymentGateway::instamojo();
            $instamojo->setClientId(getenv('INSTAMOJO_CLIENT_ID'));
            $instamojo->setSecretKey(getenv('INSTAMOJO_CLIENT_SECRET'));
            $instamojo->setCurrency(getenv('SITE_GLOBAL_CURRENCY'));
            $instamojo->setEnv(getenv('INSTAMOJO_TEST_MODE'));
            $instamojo->setExchangeRate(get_exchange_rate('INR'));

            $response = $instamojo->charge_customer(
                $this->common_charge_customer_data($total_amount,$donation_payment_details,route('frontend.donation.instamojo.ipn'))
            );
            return $response;
        }

        elseif ($selected_payment_gateway === 'marcadopago') {

            try{
                $marcadopago = XgPaymentGateway::marcadopago();
                $marcadopago->setClientId(getenv('MERCADO_PAGO_CLIENT_ID'));
                $marcadopago->setClientSecret(getenv('MERCADO_PAGO_CLIENT_SECRET'));
                $marcadopago->setCurrency(getenv('SITE_GLOBAL_CURRENCY'));
                $marcadopago->setExchangeRate(get_exchange_rate('BRL'));
                $marcadopago->setEnv(getenv('MERCADO_PAGO_TEST_MODE'));
    
                $response = $marcadopago->charge_customer(
                    $this->common_charge_customer_data($total_amount,$donation_payment_details,route('frontend.donation.marcadopago.ipn'))
                );
                return $response;
            }
            catch(\Exception $e){
                return back()->with(['msg' => $e->getMessage(),'type' => 'danger']);
            }
        }

        elseif ($selected_payment_gateway === 'squareup') {

            
            try{
                $squareup = XgPaymentGateway::squareup();
                $squareup->setLocationId(getenv('SQUAREUP_LOCATION_ID'));
                $squareup->setAccessToken(getenv('SQUAREUP_ACCESS_TOKEN'));
                $squareup->setApplicationId('12515');
                $squareup->setCurrency(getenv('SITE_GLOBAL_CURRENCY'));
                $squareup->setEnv(getenv('SQUAREUP_ACCESS_TEST_MODE'));
                $squareup->setExchangeRate(get_exchange_rate('USD'));
    
                $response = $squareup->charge_customer(
                    $this->common_charge_customer_data($total_amount,$donation_payment_details,route('frontend.donation.squreup.ipn'))
                );
                return $response;
            }
            catch(\Exception $e){
                return back()->with(['msg' => $e->getMessage(),'type' => 'danger']);
            }
        }

        elseif ($selected_payment_gateway === 'cinetpay') {

            
            try{
                $cinetpay = XgPaymentGateway::cinetpay();
                $cinetpay->setAppKey(getenv('CINETPAY_API_KEY'));
                $cinetpay->setSiteId(getenv('CINETPAY_SITE_ID'));
                $cinetpay->setCurrency(getenv('SITE_GLOBAL_CURRENCY'));
                $cinetpay->setEnv(getenv('CINETPAY_TEST_MODE'));
                $cinetpay->setExchangeRate(get_exchange_rate('USD'));
    
                $response = $cinetpay->charge_customer(
                    $this->common_charge_customer_data($total_amount,$donation_payment_details,route('frontend.donation.cinetpay.ipn'))
                );
                return $response;
            }
             catch(\Exception $e){
                return back()->with(['msg' => $e->getMessage(),'type' => 'danger']);
            }
        }

        elseif ($selected_payment_gateway === 'paytabs') {

            
            try{
                $paytabs = XgPaymentGateway::paytabs();
                $paytabs->setProfileId(getenv('PAYTABS_PROFILE_ID'));
                $paytabs->setRegion(getenv('PAYTABS_REGION'));
                $paytabs->setServerKey(getenv('PAYTABS_SERVER_KEY'));
                $paytabs->setCurrency(getenv('SITE_GLOBAL_CURRENCY'));
                $paytabs->setEnv(getenv('PAYTABS_TEST_MODE'));
                $paytabs->setExchangeRate(get_exchange_rate('USD'));
        
                $response = $paytabs->charge_customer(
                    $this->common_charge_customer_data($total_amount,$donation_payment_details,route('frontend.donation.paytabs.ipn'))
                );
                return $response;
            }
            catch(\Exception $e){
                return back()->with(['msg' => $e->getMessage(),'type' => 'danger']);
            }
        }


        elseif ($selected_payment_gateway === 'billplz') {

            try{
                $billplz = XgPaymentGateway::billplz();
                $billplz->setKey(getenv('BILLPLZ_KEY'));
                $billplz->setVersion(getenv('BILLPLZ_VERSION'));
                $billplz->setXsignature(getenv('BILLPLZ_X_SIGNATURE'));
                $billplz->setCollectionName(getenv('BILLPLZ_COLLECTION_NAME'));
                $billplz->setCurrency(getenv('SITE_GLOBAL_CURRENCY'));
                $billplz->setEnv(getenv('BILLPLZ_TEST_MODE'));
                $billplz->setExchangeRate(get_exchange_rate('MYR'));
    
                $response = $billplz->charge_customer(
                    $this->common_charge_customer_data($total_amount,$donation_payment_details,route('frontend.donation.billplz.ipn'))
                );
                return $response;
            }
            catch(\Exception $e){
                return back()->with(['msg' => $e->getMessage(),'type' => 'danger']);
            }
        }

        elseif ($selected_payment_gateway === 'zitopay') {

            try{

                $zitopay = XgPaymentGateway::zitopay();
                $zitopay->setUsername(getenv('ZITOPAY_USERNAME'));
                $zitopay->setCurrency(getenv('SITE_GLOBAL_CURRENCY'));
                $zitopay->setEnv(getenv('ZITOPAY_TEST_MODE'));
                $zitopay->setExchangeRate(get_exchange_rate('INR'));

                $response = $zitopay->charge_customer(
                    $this->common_charge_customer_data($total_amount,$donation_payment_details,route('frontend.donation.zitopay.ipn'))
                );
                return $response;
            }
            catch(\Exception $e){
                return back()->with(['msg' => $e->getMessage(),'type' => 'danger']);
            }
        }


        return redirect()->route('homepage');
    }

    public function paypal_ipn()
    {
        $paypal = $this->getPaypalPay();
        $payment_data = $paypal->ipn_response();
        return $this->common_ipn_data($payment_data);
    }

    public function paytm_ipn()
    {
        $paytm = XgPaymentGateway::paytm();
        $paytm->setMerchantId(getenv('PAYTM_MERCHANT_ID'));
        $paytm->setMerchantKey(getenv('PAYTM_MERCHANT_KEY'));
        $paytm->setMerchantWebsite(getenv('PAYTM_MERCHANT_WEBSITE'));
        $paytm->setChannel(getenv('PAYTM_CHANNEL'));
        $paytm->setIndustryType(getenv('PAYTM_INDUSTRY_TYPE'));
        $paytm->setEnv(getenv('PAYTM_ENVIRONMENT'));

        $payment_data = $paytm->ipn_response();
        return $this->common_ipn_data($payment_data);
    }

    public function flutterwave_ipn(Request $request)
    {
        $flutterwave = XgPaymentGateway::flutterwave();
        $flutterwave->setPublicKey(getenv('FLW_PUBLIC_KEY'));
        $flutterwave->setSecretKey(getenv('FLW_SECRET_KEY'));
        $flutterwave->setCurrency(getenv('SITE_GLOBAL_CURRENCY'));
        $flutterwave->setEnv(getenv('FLW_TEST_MODE'));

        $payment_data = $flutterwave->ipn_response();
        return $this->common_ipn_data($payment_data);
    }

    public function stripe_ipn(Request $request)
    {
        $stripe = XgPaymentGateway::stripe();
        $stripe->setSecretKey(getenv('STRIPE_SECRET_KEY'));
        $stripe->setPublicKey(getenv('STRIPE_PUBLIC_KEY'));
        $stripe->setCurrency(getenv('SITE_GLOBAL_CURRENCY'));
        $stripe->setEnv(getenv('STRIPE_TEST_MODE'));
        $stripe->setExchangeRate(74);

        $payment_data = $stripe->ipn_response();
        return $this->common_ipn_data($payment_data);
    }

    public function razorpay_ipn(Request $request)
    {
        $razorpay = XgPaymentGateway::razorpay();
        $razorpay->setApiKey(getenv('RAZORPAY_API_KEY'));
        $razorpay->setApiSecret(getenv('RAZORPAY_API_SECRET'));
        $razorpay->setEnv(getenv('RAZORPAY_TESTMODE'));

        $payment_data = $razorpay->ipn_response();
        return $this->common_ipn_data($payment_data);
    }

    public function payfast_ipn(Request $request)
    {
        $payfast = XgPaymentGateway::payfast();
        $payfast->setMerchantId(getenv('PF_MERCHANT_ID'));
        $payfast->setMerchantKey(getenv('PF_MERCHANT_KEY'));
        $payfast->setCurrency(getenv('SITE_GLOBAL_CURRENCY'));
        $payfast->setPassphrase(getenv('PAYFAST_PASSPHRASE'));
        $payfast->setEnv(getenv('PF_MERCHANT_ENV'));

        $payment_data = $payfast->ipn_response();
        return $this->common_ipn_data($payment_data);
    }

    public function mollie_ipn()
    {
        $mollie = XgPaymentGateway::mollie();
        $mollie->setApiKey(getenv('MOLLIE_KEY'));
        $mollie->setCurrency(getenv('SITE_GLOBAL_CURRENCY'));
        $mollie->setEnv(getenv('MOLLIE_TEST_MODE'));
        $mollie->setExchangeRate(74);

        $payment_data = $mollie->ipn_response();
        return $this->common_ipn_data($payment_data);
    }

    public function midtrans_ipn()
    {
        $midtrans = XgPaymentGateway::midtrans();
        $midtrans->setClientKey(getenv('MIDTRANS_CLIENT_KEY'));
        $midtrans->setServerKey(getenv('MIDTRANS_SERVER_KEY'));
        $midtrans->setCurrency(getenv('SITE_GLOBAL_CURRENCY'));
        $midtrans->setEnv(getenv('MIDTRANS_ENVAIRONTMENT'));

        $payment_data = $midtrans->ipn_response();
        return $this->common_ipn_data($payment_data);
    }

    public function cashfree_ipn()
    {
        $cashfree = XgPaymentGateway::cashfree();
        $cashfree->setAppId(getenv('CASHFREE_APP_ID'));
        $cashfree->setSecretKey(getenv('CASHFREE_SECRET_KEY'));
        $cashfree->setCurrency(getenv('SITE_GLOBAL_CURRENCY'));
        $cashfree->setEnv(getenv('CASHFREE_TEST_MODE'));

        $payment_data = $cashfree->ipn_response();
        return $this->common_ipn_data($payment_data);
    }

    public function instamojo_ipn()
    {
        $instamojo = XgPaymentGateway::instamojo();
        $instamojo->setClientId(getenv('INSTAMOJO_CLIENT_ID'));
        $instamojo->setSecretKey(getenv('INSTAMOJO_CLIENT_SECRET'));
        $instamojo->setCurrency(getenv('SITE_GLOBAL_CURRENCY'));
        $instamojo->setEnv(getenv('INSTAMOJO_TEST_MODE'));

        $payment_data = $instamojo->ipn_response();
        return $this->common_ipn_data($payment_data);
    }

    public function marcadopago_ipn()
    {
        $marcadopago = XgPaymentGateway::marcadopago();
        $marcadopago->setClientId(getenv('MERCADO_PAGO_CLIENT_ID'));
        $marcadopago->setClientSecret(getenv('MERCADO_PAGO_CLIENT_SECRET'));
        $marcadopago->setCurrency(getenv('SITE_GLOBAL_CURRENCY'));
        $marcadopago->setEnv(getenv('MERCADO_PAGO_TEST_MODE'));

        $payment_data = $marcadopago->ipn_response();
        return $this->common_ipn_data($payment_data);
    }

    public function squreup_ipn()
    {
        $squareup = XgPaymentGateway::squareup();
        $squareup->setLocationId(getenv('SQUAREUP_LOCATION_ID'));
        $squareup->setAccessToken(getenv('SQUAREUP_ACCESS_TOKEN'));
        $squareup->setApplicationId('');
        $squareup->setCurrency(getenv('SITE_GLOBAL_CURRENCY'));
        $squareup->setEnv(getenv('SQUAREUP_ACCESS_TEST_MODE'));

        $payment_data = $squareup->ipn_response();
        return $this->common_ipn_data($payment_data);
    }

    public function cinetpay_ipn()
    {
        $cinetpay = XgPaymentGateway::cinetpay();
        $cinetpay->setAppKey(getenv('CINETPAY_API_KEY'));
        $cinetpay->setSiteId(getenv('CINETPAY_SITE_ID'));
        $cinetpay->setCurrency(getenv('SITE_GLOBAL_CURRENCY'));
        $cinetpay->setEnv(getenv('CINETPAY_TEST_MODE'));

        $payment_data = $cinetpay->ipn_response();
        return $this->common_ipn_data($payment_data);
    }

    public function paytabs_ipn()
    {
        $paytabs = XgPaymentGateway::paytabs();
        $paytabs->setProfileId(getenv('PAYTABS_PROFILE_ID'));
        $paytabs->setRegion(getenv('PAYTABS_REGION'));
        $paytabs->setServerKey(getenv('PAYTABS_SERVER_KEY'));
        $paytabs->setCurrency(getenv('SITE_GLOBAL_CURRENCY'));
        $paytabs->setEnv(getenv('PAYTABS_TEST_MODE'));

        $payment_data = $paytabs->ipn_response();
        return $this->common_ipn_data($payment_data);
    }

    public function billplz_ipn()
    {
        $billplz = XgPaymentGateway::billplz();
        $billplz->setKey(getenv('BILLPLZ_KEY'));
        $billplz->setVersion(getenv('BILLPLZ_VERSION'));
        $billplz->setXsignature(getenv('BILLPLZ_X_SIGNATURE'));
        $billplz->setCollectionName(getenv('BILLPLZ_COLLECTION_NAME'));
        $billplz->setCurrency(getenv('SITE_GLOBAL_CURRENCY'));
        $billplz->setEnv(getenv('BILLPLZ_TEST_MODE'));

        $payment_data = $billplz->ipn_response();
        return $this->common_ipn_data($payment_data);
    }

    public function zitopay_ipn()
    {
        $zitopay = XgPaymentGateway::zitopay();
        $zitopay->setUsername(getenv('ZITOPAY_USERNAME'));
        $zitopay->setCurrency(getenv('SITE_GLOBAL_CURRENCY'));
        $zitopay->setEnv(getenv('ZITOPAY_TEST_MODE'));
        $zitopay->setExchangeRate(get_exchange_rate('INR') ?? 50 );

        $payment_data = $zitopay->ipn_response();
        return $this->common_ipn_data($payment_data);
    }



    private function common_charge_customer_data($total_amount,$donation_payment_details, $ipn_route, $payment_type = null)
    {
        $data = [
                'amount' => $total_amount,
                'title' => __('Payment For Donation:') . ' ' . optional($donation_payment_details->cause)->title ?? '',
                'description' => __('Payment For Donation:') . ' ' . optional($donation_payment_details->cause)->title ?? ''.' #'.$donation_payment_details->id,
                'order_id' => $donation_payment_details->id,
                'track' => $donation_payment_details->track,
                'cancel_url' => route(self::CANCEL_ROUTE, $donation_payment_details->id),
                'success_url' => route(self::SUCCESS_ROUTE, random_int(333333, 999999) . $donation_payment_details->id . random_int(333333, 999999)),
                'email' => $donation_payment_details->email, // user email
                'name' => $donation_payment_details->name, // user name
                'payment_type' => $payment_type, // which kind of payment your are receiving
                'ipn_url' => $ipn_route
             ];
        return $data;

    }

    private function common_ipn_data($payment_data)
    {
        if (isset($payment_data['status']) && $payment_data['status'] === 'complete'){
            event(new Events\DonationSuccess([
                'donation_log_id' => $payment_data['order_id'],
                'transaction_id' => $payment_data['transaction_id'],
            ]));
            $order_id = Str::random(6) . $payment_data['order_id']. Str::random(6);
            return redirect()->route(self::SUCCESS_ROUTE, $order_id);
        }

        return redirect()->route(self::CANCEL_ROUTE);
    }


    public function getPaypalPay(): \Xgenious\Paymentgateway\Base\Gateways\PaypalPay
    {

        $mode = getenv('PAYPAL_MODE');
        $paypal_client_id = $mode == 1 ? getenv('PAYPAL_SANDBOX_CLIENT_ID') : getenv('PAYPAL_LIVE_CLIENT_ID');
        $paypal_client_secret = $mode == 1 ? getenv('PAYPAL_SANDBOX_CLIENT_SECRET') : getenv('PAYPAL_LIVE_CLIENT_SECRET');
        $paypal_app_id = $mode == 1 ? getenv('PAYPAL_SANDBOX_APP_ID') : getenv('PAYPAL_LIVE_APP_ID');

        $paypal = XgPaymentGateway::paypal();
        $paypal->setClientId($paypal_client_id);
        $paypal->setClientSecret($paypal_client_secret);
        $paypal->setAppId($paypal_app_id);
        $paypal->setCurrency(getenv('SITE_GLOBAL_CURRENCY'));
        $paypal->setEnv(getenv('PAYPAL_MODE'));

        return $paypal;
    }


    public function get_filtered_data_from_request($option_value,$request){

        $all_attachment = [];
        $all_quote_form_fields = (array) json_decode($option_value);
        $all_field_type = isset($all_quote_form_fields['field_type']) ? (array) $all_quote_form_fields['field_type'] : [];
        $all_field_name = isset($all_quote_form_fields['field_name']) ? $all_quote_form_fields['field_name'] : [];
        $all_field_required = isset($all_quote_form_fields['field_required'])  ? (object) $all_quote_form_fields['field_required'] : [];
        $all_field_mimes_type = isset($all_quote_form_fields['mimes_type']) ? (object) $all_quote_form_fields['mimes_type'] : [];

        //get field details from, form request
        $all_field_serialize_data = $request->all();
        unset($all_field_serialize_data['_token']);
        if (isset($all_field_serialize_data['captcha_token'])){
            unset($all_field_serialize_data['captcha_token']);
        }


        if (!empty($all_field_name)){
            foreach ($all_field_name as $index => $field){
                $is_required = !empty($all_field_required) && property_exists($all_field_required,$index) ? $all_field_required->$index : '';
                $mime_type = !empty($all_field_mimes_type) && property_exists($all_field_mimes_type,$index) ? $all_field_mimes_type->$index : '';
                $field_type = isset($all_field_type[$index]) ? $all_field_type[$index] : '';
                if (!empty($field_type) && $field_type == 'file'){
                    unset($all_field_serialize_data[$field]);
                }
                $validation_rules = !empty($is_required) ? 'required|': '';
                $validation_rules .= !empty($mime_type) ? $mime_type : '';

                //validate field
                $this->validate($request,[
                    $field => $validation_rules
                ]);

                if ($field_type == 'file' && $request->hasFile($field)) {
                    $filed_instance = $request->file($field);
                    $file_extenstion = $filed_instance->getClientOriginalExtension();
                    $attachment_name = 'attachment-'.Str::random(32).'-'. $field .'.'. $file_extenstion;
                    $filed_instance->move('assets/uploads/attachment/applicant', $attachment_name);
                    $all_attachment[$field] = 'assets/uploads/attachment/applicant/' . $attachment_name;
                }
            }
        }
        return [
            'all_attachment' => $all_attachment,
            'field_data' => $all_field_serialize_data
        ];
    }

}

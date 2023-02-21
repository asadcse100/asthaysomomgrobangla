<?php $__env->startSection('site-title'); ?>
    <?php echo e(__(' Checkout : ') .$gift_name); ?>

<?php $__env->stopSection(); ?>
<?php $__env->startSection('page-title'); ?>
    <?php echo e(__(' Gift Checkout : ') . $gift_name); ?>

<?php $__env->stopSection(); ?>
<?php $__env->startSection('page-meta-data'); ?>
    <meta name="description" content="<?php echo e(get_static_option('donation_page_meta_description')); ?>">
    <meta name="tags" content="<?php echo e(get_static_option('donation_page_meta_tags')); ?>">
<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>
    <section class="donation-content-area padding-top-120 padding-bottom-90" id="donation_gift_checkout_form_wrapper">
        <div class="container">
            <form action="<?php echo e(route('frontend.donations.log.store')); ?>" method="post"
                  enctype="multipart/form-data" class="donation-form-wrapper">
                <?php echo csrf_field(); ?>
                <input type="hidden" name="gift_id" value="<?php echo e($gift->id); ?>">
                <input type="hidden" name="cause_id" value="<?php echo e($donation->id); ?>">
                <input type="hidden" name="amount" value="<?php echo e($gift->amount); ?>">
                <input type="hidden" name="payment_gateway" id="payment_gateway">
                <?php if(!empty(get_static_option('allow_user_to_add_custom_tip_in_donation'))): ?>
                    <input type="hidden" name="admin_tip" value="<?php echo e(\App\Helpers\DonationHelpers::get_donation_charge($gift->amount)); ?>">
                <?php endif; ?>

                <div class="row">
                    <div class="col-lg-6 justify-content-center">
                         <div class="donation_wrapper">
                                <div class="btn-wrapper">
                                    <a href="<?php echo e(route('frontend.donations.single',$donation->slug)); ?>" class="goback-btn"><?php echo e(__('Go Back')); ?></a>
                                </div>

                                <?php if (isset($component)) { $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4 = $component; } ?>
<?php $component = $__env->getContainer()->make(Illuminate\View\AnonymousComponent::class, ['view' => 'components.msg.success','data' => []]); ?>
<?php $component->withName('msg.success'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php $component->withAttributes([]); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4)): ?>
<?php $component = $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4; ?>
<?php unset($__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4); ?>
<?php endif; ?>
                                <?php if (isset($component)) { $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4 = $component; } ?>
<?php $component = $__env->getContainer()->make(Illuminate\View\AnonymousComponent::class, ['view' => 'components.msg.error','data' => []]); ?>
<?php $component->withName('msg.error'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php $component->withAttributes([]); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4)): ?>
<?php $component = $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4; ?>
<?php unset($__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4); ?>
<?php endif; ?>
                                <?php
                                    $auth_user = \Illuminate\Support\Facades\Auth::guard('web');
                                    $auth_name = $auth_user->check() ? $auth_user->user()->name : '';
                                    $auth_email = $auth_user->check() ? $auth_user->user()->email : '';
                                ?>

                                <div class="form-group">
                                    <input type="text" name="name" value="<?php echo e($auth_name); ?>" class="form-control" placeholder="<?php echo e(__('Enter Name')); ?>">
                                </div>
                                <div class="form-group">
                                    <input type="email" name="email" value="<?php echo e($auth_email); ?>" class="form-control" placeholder="<?php echo e(__('Enter Email')); ?>">
                                </div>

                                <?php echo render_form_field_for_frontend(get_static_option('donation_page_form_fields')); ?>

                                <?php echo render_payment_gateway_for_form(); ?>


                                <?php if(!empty(get_static_option('manual_payment_gateway'))): ?>
                                    <div class="form-group manual_payment_transaction_field">
                                        <div class="label"><?php echo e(__('Attach Your Bank Document')); ?></div>
                                        <input class="form-control btn btn-warning btn-sm" type="file" name="manual_payment_attachment">
                                        <p class="help-info"><?php echo get_manual_payment_description(); ?></p>
                                    </div>
                                <?php endif; ?>

                                <div class="donate-seperate-page-button">
                                    <div class="btn-wrapper">
                                        <button type="submit" class="boxed-btn reverse-color btn-sm"><?php echo e(__('Pay Now')); ?></button>
                                    </div>
                                </div>

                            </div>

                    </div>

                    <div class="col-lg-4">
                        <div class="donation-amount-details-wrapper">
                            <h3 class="title"><?php echo e(__('Your Donation Details')); ?></h3>

                            <div class="your-area-donation-wrap">
                                <div class="thumb">
                                    <?php echo render_image_markup_by_attachment_id($donation->image,'','thumb'); ?>

                                </div>
                                <div class="content">
                                    <h4 class="title"><?php echo e($donation->title); ?></h4>
                                    <span class="created_by"><?php echo e(__('Created By')); ?>

                                        <?php if($donation->created_by === 'user'): ?>
                                            <?php echo e(\App\User::find($donation->user_id)->name ?? __('Anonymous')); ?>

                                        <?php else: ?>
                                            <?php echo e(\App\Admin::find($donation->admin_id)->name ?? __('Anonymous')); ?>

                                        <?php endif; ?>
                                    </span>
                                </div>
                            </div>
                            <div class="gift-info-wrapp">
                                <h3 class="gift-title"><?php echo e(__('Gift Title:')); ?> <span><?php echo e($gift->title ?? ''); ?></span></h3>
                                <div class="gift-information-details">
                                    <?php
                                    $colors = ['success','info','warning','danger'];
                                    ?>
                                    <strong><?php echo e(__('Gifts:')); ?></strong>
                                    <?php $__currentLoopData = json_decode($gift->gifts) ?? []; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=> $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <span class="badge badge-<?php echo e($colors[$key % count($colors)]); ?>"><?php echo e($item ?? ''); ?></span>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    <p><?php echo e($gift->description); ?></p>
                                    <p class="estimate-delivery-date"><?php echo e(__('Estimate Delivery Date:')); ?>  <span class="text-primary"><?php echo e($gift->delivery_date ?? ''); ?></span></p>

                                </div>
                            </div>
                            <ul>
                                <li><span><?php echo e(__('Payable Amount')); ?></span> <span class="price donation_amount"><?php echo e(amount_with_currency_symbol($gift->amount) ?? 0); ?></span></li>
                                 <?php if(empty(get_static_option('donation_charge_form')) || get_static_option('donation_charge_form') === 'donor'): ?>
                                    <li>
                                        <span><?php echo e(get_static_option('site_title')); ?> <?php echo e(__('tip')); ?></span>
                                        <span class="price admin_tip">
                                            <?php if(!empty(get_static_option('allow_user_to_add_custom_tip_in_donation'))): ?>
                                            <span class="input-wrap"><input type="number" name="custom_admin_tip" min="1" value="<?php echo e(\App\Helpers\DonationHelpers::get_donation_charge($gift->amount)); ?>"></span>
                                            <?php else: ?>
                                           <span class="amount"> <?php echo e(\App\Helpers\DonationHelpers::get_donation_charge($gift->amount,true)); ?></span>
                                            <?php endif; ?>
                                        </span>
                                    </li>
                                <?php endif; ?>
                                <li class="total"><span><?php echo e(__('Total')); ?></span> <span class="price total_amount"><?php echo e(\App\Helpers\DonationHelpers::get_donation_total($gift->amount,true)); ?></span></li>
                            </ul>

                        </div>
                    </div>
                </div>
            </form>
        </div>
    </section>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('scripts'); ?>
    <script>
        var defaulGateway = $('#site_global_payment_gateway').val();
        $('.payment-gateway-wrapper ul li[data-gateway="'+defaulGateway+'"]').addClass('selected');

        $(document).on('click','.payment-gateway-wrapper > ul > li',function (e) {
            e.preventDefault();
            var gateway = $(this).data('gateway');
            $('#payment_gateway').val(gateway);
            $(this).addClass('selected').siblings().removeClass('selected');
            $('#site_global_payment_gateway').val(gateway);
            if(gateway == 'manual_payment'){
                $('.manual_payment_transaction_field').addClass('show');
            }else{
                $('.manual_payment_transaction_field').removeClass('show');
            }
            $('.payment-gateway-wrapper').find(('input')).val(gateway);
        });
        
        
        //write code for admin tip
        //Donation Charge
        $(document).on('keyup change', 'input[name="custom_admin_tip"]', function () {
            var el = $(this);
           calcCustomTip(el);
        });
        
        function calcCustomTip(el){
            var currentVal = el.val();
            var changeVal;
            if(currentVal > 0){
                changeVal = currentVal
            }else{
                el.val(1);
                changeVal = 1
            }
            $('input[name="admin_tip"]').val(changeVal);
            updateDonationAmount();
        }
        
        
        //todo have to modify this function
        function updateDonationAmount(){
            var donation_amount_user_input = $('input[name="amount"]').val();
            var admin_tip = $('input[name="admin_tip"]').val();

            $.ajax({
                url: "<?php echo e(route('frontend.get.donation.charges.by.ajax')); ?>",
                type: 'post',
                dataType: 'JSON',
                data: {
                    _token: "<?php echo e(csrf_token()); ?>",
                    amount: donation_amount_user_input,
                    admin_tip: admin_tip,
                },
                success: function (data) {
                    var parent = $('#donation_gift_checkout_form_wrapper');
                    parent.find('.donation_amount').text(data.donation_amount);
                    parent.find('.admin_tip .amount').text(data.tip);
                    parent.find('.total_amount').text(data.total);
                }
            });
        }
                
                
    </script>
<?php $__env->stopSection(); ?>


<?php echo $__env->make('frontend.frontend-page-master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /Users/xgenious/Desktop/xgenious/localhost/fundorex-last-server-file-with-api/@core/resources/views/frontend/donations/gift-checkout.blade.php ENDPATH**/ ?>
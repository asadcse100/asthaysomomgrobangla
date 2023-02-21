
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title><?php echo e(__('Donations Invoice')); ?></title>
    <style type="text/css">
        * {
            font-family: Verdana, Arial, sans-serif;
        }
        table {
            font-size: x-small;
        }
        td  {
            font-size: 14px;
            padding: 5px;
            vertical-align: middle !important;
        }
        table tr th {
            line-height: 20px;
            font-size: 14px;
            font-weight: 700;
            padding: 5px 5px;
        }
        tfoot tr td {
            font-weight: bold;
            font-size: x-small;
        }
        .gray {
            background-color: lightgray
        }
        .table-footer tr td {
            text-align: left;
            font-size: 14px;
            padding: 5px;
        }
        .table-top td p,
        .table-footer td p {
            line-height: 18px;
            display: block;
            padding: 5px 0;
        }
        .totalAmount {
            font-width: 700;
            font-size: 25px;
            text-align: right;
            display: block;
        }
        table thead tr th {
            border: 0;
        }
        table thead tr th {
            border: 0;
        }
        table thead tr th:first-child {
            text-align: left;
            padding: 10px 30px;
        }
        table thead tr th:last-child {
            text-align: right;
            padding: 10px 30px;
        }
        .borderStyle{
            margin-bottom: 5px;
        }
        .border-top{ border-top: 2px solid #000;}

        .singleItems{
            font-size: 14px;
        }

    </style>
</head>
<body>

<table width="100%" class="table-top">
    <tr>
        <td valign="top">
            <?php
                $logo = get_attachment_image_by_id(get_static_option('site_logo'));
            ?>
            <img src="<?php echo $logo['img_url']; ?>" alt="" width="150"/>
        </td>
    </tr>

    <tr>
        <td valign="top">
            <p><strong><?php echo e(__('Date : ')); ?></strong> <?php echo e(date('d-m-Y',strtotime($donation_details->created_at))); ?></p>
            <p><strong><?php echo e(__('From : ')); ?></strong> <?php echo e(get_static_option('site_global_email')); ?></p>
            <p><strong><?php echo e(__('To : ')); ?></strong><?php echo e($donation_details->name); ?></p>
            <p><strong><?php echo e(__('Donor Email : ')); ?></strong><?php echo e($donation_details->email); ?></p>
        </td>

        <td align="right">
            <h3> <?php echo e(get_static_option('company_name')); ?> </h3>
            <p><?php echo e(get_static_option('company_address')); ?></p>
            <p><?php echo e(get_static_option('company_email')); ?></p>
            <p> <?php echo e(get_static_option('company_phone')); ?> </p>
        </td>
    </tr>
</table>

<table class="table-footer" width="100%">
    <thead style="background-color: lightgray;">
    <tr>
        <th><?php echo e(__('Description')); ?></th>
        <th><?php echo e(__('Amount')); ?></th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td valign="top">
            <div>
                <p class="singleItems"><strong><?php echo e(__('Title : ')); ?></strong> <?php echo e(optional($donation_details->cause)->title); ?></p>
                <p class="singleItems"><strong><?php echo e(__('Donor Name : ')); ?></strong><?php echo e($donation_details->name); ?></p>
                <p class="singleItems"><strong><?php echo e(__('Payment Gateway : ')); ?></strong><?php echo e(str_replace('_',' ',$donation_details->payment_gateway)); ?></p>
                <p class="singleItems"><strong><?php echo e(__('Payment Status : ')); ?></strong><?php echo e(str_replace('_',' ',$donation_details->status)); ?></p>
                <p class="singleItems"><strong><?php echo e(__('Transaction ID : ')); ?></strong><?php echo e(str_replace('_',' ',$donation_details->transaction_id)); ?></p>
            </div>
        </td>


        <td align="right">
            <div class="borderStyle">
                <h6 class="singleItems" style="margin-bottom: 10px; display: block"><strong><?php echo e(__('Donated Amount : ')); ?></strong><?php echo e(amount_with_currency_symbol($donation_details->amount,true)); ?></h6>
                <h6 class="singleItems" style="margin-bottom: 10px; margin-top: 10px; display: block;"><strong><?php echo e(__('Admin Tip : ')); ?></strong><?php echo e(amount_with_currency_symbol($donation_details->admin_charge,true)); ?></h6>

                <?php
                    $total_amount = $donation_details->amount + $donation_details->admin_charge;
                ?>

                <h2 class=" border-top" style="margin-top: 20px;margin-bottom: 20px; display: block"><strong><?php echo e(__('Total Amount : ')); ?></strong> <?php echo e(amount_with_currency_symbol($total_amount,true) ?? 0); ?></h2>
            </div>
        </td>
    </tr>
    </tbody>

</table>







<?php /**PATH /home/xgenxchi/public_html/laravel/fundorex/@core/resources/views/invoice/donation.blade.php ENDPATH**/ ?>
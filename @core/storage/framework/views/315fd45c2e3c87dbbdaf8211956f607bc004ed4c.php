

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
            padding: 10px;
            vertical-align: bottom !important;
        }

        table tr th {
            line-height: 20px;
            font-size: 14px;
            font-weight: 700;
            padding: 15px 5px;
        }
        tfoot tr td{
            font-weight: bold;
            font-size: x-small;
        }
        .gray {
            background-color: lightgray
        }
        .table-footer tr td {
            text-align: left;
            font-size: 14px;
            padding: 10px;
        }
        .table-footer {
            margin-top: 150px;
        }
        .table-top td p {
            line-height: 18px;
            display: block;
            padding: 5px 0;
        }
    </style>
</head>

<style>
    .totalAmount{
        font-width: 700;
        font-size: 25px;
        text-align: right;
        display: block;
    }

    table thead tr th{
        border: 0;
    }
    table thead tr th{
        border: 0;
    }


    table thead tr th:first-child{
        text-align: left;
        padding: 10px 30px;
    }
    table thead tr th:last-child{
        text-align: right;
        padding: 10px 30px;
    }

    .borderStyle{
        margin-bottom: 20px;
    }
    .border-top{ border-top: 2px solid #000;}

    .singleItems{
        font-size: 14px;
        margin-bottom: 10px;
    }

</style>
<body>

    <table width="100%" class="table-top">
        <tr>
            <td valign="top">
                <?php
                    $logo = get_attachment_image_by_id(get_static_option('site_logo'));
                ?>
                <img src="<?php echo e($logo['img_url']); ?>" alt="" width="150"/>
            </td>

            <td align="right">
                <pre>
                    <h3> <?php echo e(get_static_option('company_name')); ?> </h3>
                    <p></p>
                    <p><?php echo e(get_static_option('company_address')); ?></p>
                    <p></p>
                    <p><?php echo e(get_static_option('company_email')); ?></p>
                    <p></p>
                    <p> <?php echo e(get_static_option('company_phone')); ?> </p>
                    <p></p>
                </pre>
            </td>
        </tr>
        <tr>
            <td>
                <pre>
                    <p><strong><?php echo e(__('Date : ')); ?></strong> <?php echo e(date('d-m-Y',strtotime($donation_details->created_at))); ?></p>
                    <p></p>
                    <p><strong><?php echo e(__('From : ')); ?></strong> <?php echo e(get_static_option('site_global_email')); ?></p>
                    <p></p>
                    <p><strong><?php echo e(__('To : ')); ?></strong><?php echo e($donation_details->name); ?></p>
                    <p></p>
                   <p><strong><?php echo e(__('Donor Email : ')); ?></strong><?php echo e($donation_details->email); ?></p>
                </pre>

            </td>
        </tr>

    </table>

    <br/>

    <table class="table-footer" width="100%">
        <thead style="background-color: lightgray;">
            <tr>
                <th><?php echo e(__('Description')); ?></th>
                <th><?php echo e(__('Amount')); ?></th>
            </tr>
        </thead>
        <tbody>
            <tr>
                    <?php
                        $all_custom_fields = json_decode($donation_details->custom_fields) ?? [];
                    ?>
                <div class="" style="">
                    <div class="d" style="float: left; margin-bottom: 20px">
                        <p class="singleItems" style=" margin-bottom: 20px; padding-bottom: 100px"><strong><?php echo e(__('Title : ')); ?></strong> <?php echo e($donation_details->cause->title); ?></p><br><br>
                        <p class="singleItems"><strong><?php echo e(__('Donor Name : ')); ?></strong><?php echo e($donation_details->name); ?></p><br><br>
                        <p class="singleItems"><strong><?php echo e(__('Payment Gateway : ')); ?></strong><?php echo e(str_replace('_',' ',$donation_details->payment_gateway)); ?></p><br><br>
                        <p class="singleItems"><strong><?php echo e(__('Payment Status : ')); ?></strong><?php echo e(str_replace('_',' ',$donation_details->status)); ?></p><br><br>
                        <p class="singleItems"><strong><?php echo e(__('Transaction ID : ')); ?></strong><?php echo e(str_replace('_',' ',$donation_details->transaction_id)); ?></p><br><br>
                    </div>

                    
                    <div class="d" style="float: right">
                        <div class="borderStyle">
                            <h6 class="singleItems" style="margin-bottom: 10px; display: block"><strong><?php echo e(__('Donated Amount : ')); ?></strong><?php echo e(amount_with_currency_symbol($donation_details->amount)); ?></h6><br>
                            <h6 class="singleItems" style="margin-bottom: 10px; margin-top: 10px; display: block;"><strong><?php echo e(__('Admin Tip : ')); ?></strong><?php echo e(amount_with_currency_symbol($donation_details->admin_charge)); ?></h6><br><br>

                            <h2 class=" border-top" style="margin-top: 20px;margin-bottom: 20px; display: block"><strong><?php echo e(__('Total Amount : ')); ?></strong> <?php echo e(amount_with_currency_symbol($donation_details->amount + $donation_details->admin_charge)); ?></h2>
                        </div>
                    </div>
                </div>
            </tr>
        </tbody>
    </table>

<?php /**PATH /Users/xgenious/Desktop/xgenious/localhost/fundorex-with-api/@core/resources/views/invoice/donation.blade.php ENDPATH**/ ?>
<html>
<head>
    <title><?php echo e(__('Zitopay Payment Gateway')); ?></title>
</head>
<body>

<form class="redirectForm" method="post" action="https://zitopay.africa/sci">
    <input type='hidden' name='amount' value='<?php echo e($args['amount']); ?>' />
    <input type='hidden' name='currency' value='<?php echo e($args['currency']); ?>' />
    <input type='hidden' name='receiver' value='<?php echo e($args['username']); ?>' />
    <input type='hidden' name='ref' value='<?php echo e($args['payment_type']."_#".$args['order_id']); ?>' />
    <input type='hidden' name='success_url' value='<?php echo e($args['success_url']); ?>' />
    <input type='hidden' name='cancel_url' value='<?php echo e($args['cancel_url']); ?>' />
    <input type='hidden' name='memo' value='<?php echo e($args['description']); ?>' />
    
    <input type='hidden' name='notification_url' value='<?php echo e($args['ipn_url']); ?>' />
    
    


    <button type="submit" id="paymentbutton" class="btn btn-block btn-lg bg-ore continue-payment">Continue to Payment</button>

</form>
<script>
    (function(){
        "use strict";
        var submitBtn = document.querySelector('#paymentbutton');
        submitBtn.innerHTML = "<?php echo e(__('Redirecting Please Wait...')); ?>";
        submitBtn.style.color = "#fff";
        submitBtn.style.backgroundColor = "#c54949";
        submitBtn.style.border = "none";
        document.addEventListener('DOMContentLoaded',function (){
            submitBtn.dispatchEvent(new MouseEvent('click'));
        },false);
    })();
</script>
</body>
</html>
<?php /**PATH /home/xgenxchi/public_html/laravel/fundorex/@core/vendor/xgenious/paymentgateway/src/Providers/../../resources/views/zitopay.blade.php ENDPATH**/ ?>
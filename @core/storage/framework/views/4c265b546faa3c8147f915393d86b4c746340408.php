
<?php $__env->startSection('site-title'); ?>
    <?php echo e(__('Redeem Details')); ?>

<?php $__env->stopSection(); ?>
<?php $__env->startSection('section'); ?>
 <div class="form-header-wrap margin-bottom-20 d-flex justify-content-between">
     <h3 class="mb-3"><?php echo e(__('Redeem Details')); ?></h3>
     <a href="<?php echo e(route('user.home.reward.redeem.log')); ?>"
        class="btn btn-info btn-sm mb-3 campaign-title" ><?php echo e(__('All Redeem')); ?></a>
 </div>
  <div class="table-wrap table-responsive all-user-campaign-table">
      <ul class="margin-top-20">
          <li><strong><?php echo e(__('Requested By')); ?>:</strong> <?php echo e(Auth::guard('web')->user()->name); ?></li>
          <?php if($redeem->payment_status === 'pending'): ?>

               <?php
                $available_withdraw =  $total_reward_amount - $redeem->where('payment_status' ,'!=', 'reject')->pluck('withdraw_request_amount')->sum();
               ?>
              
              <li><strong><?php echo e(__('Available For Redeem Amount')); ?>:</strong><?php echo e(amount_with_currency_symbol($available_withdraw)); ?> </li>
          <?php endif; ?>
          <li><strong><?php echo e(__('Requested Redeem Amount')); ?>:</strong> <?php echo e(amount_with_currency_symbol($redeem->withdraw_request_amount)); ?> </li>
          <li><strong><?php echo e(__('Payment Gateway')); ?>:</strong> <?php echo e($redeem->payment_gateway); ?> </li>
          <li><strong><?php echo e(__('Payment Status')); ?>:</strong> <?php echo e($redeem->payment_status); ?> </li>
          <li><strong><?php echo e(__('Request Date')); ?>:</strong> <?php echo e($redeem->created_at->format('D, d M Y')); ?> </li>
          <?php if($redeem->payment_status === 'approved'): ?>
              <li><strong><?php echo e(__('Approved Date')); ?>:</strong> <?php echo e($redeem->updated_at->format('D, d M Y')); ?> </li>
          <?php endif; ?>
          <li><strong><?php echo e(__('Payment Account Details ')); ?>:</strong> <?php echo e($redeem->payment_account_details); ?> </li>
          <li><strong><?php echo e(__('Additional Comment by You')); ?>:</strong> <?php echo e($redeem->additional_comment_by_user); ?> </li>
      </ul>

      <h3 class="header-title margin-top-40"><?php echo e(__('Admin Response')); ?></h3>
      <ul class="margin-top-20">
          <li><strong><?php echo e(__('Transaction Id')); ?>:</strong> <?php echo e($redeem->transaction_id); ?> </li>
          <li><strong><?php echo e(__('Payment Receipt')); ?>:</strong>
              <?php if($redeem->payment_receipt && file_exists('assets/uploads/reward-redeem/'.$redeem->payment_receipt)): ?>
                  <a class="text-primary" href="<?php echo e(asset('assets/uploads/reward-redeem/'.$redeem->payment_receipt)); ?>" download=""><?php echo e($redeem->payment_receipt); ?></a>
              <?php endif; ?>
          </li>
          <li><strong><?php echo e(__('Payment information')); ?>:</strong> <?php echo e($redeem->payment_information); ?> </li>
          <li><strong><?php echo e(__('Additional Comment by Admin')); ?>:</strong> <?php echo e($redeem->additional_comment_by_admin); ?> </li>
      </ul>

  </div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('frontend.user.dashboard.user-master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /Users/xgenious/Desktop/xgenious/localhost/fundorex-last-server-file-with-api/@core/resources/views/frontend/user/dashboard/reward/redeem-view.blade.php ENDPATH**/ ?>
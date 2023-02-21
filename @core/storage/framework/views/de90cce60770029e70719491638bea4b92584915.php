<?php $__env->startSection('site-title'); ?>
    <?php echo e(__('Reward Redeem View')); ?>

<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>
    <div class="col-lg-12 col-ml-12 padding-bottom-30">
        <div class="row">
            <div class="col-lg-12 mt-5">
                <div class="card">
                    <div class="card-body">
                        <div class="header-wrap d-flex justify-content-between">
                            <h4 class="header-title"><?php echo e(__('Redeem Details')); ?></h4>
                            <div class="btn-wrapper">
                                <a class="btn btn-info" href="<?php echo e(route('admin.reward.all.redeem.request')); ?>"><?php echo e(__('All Redeem')); ?></a>
                            </div>
                        </div>
                        <ul class="margin-top-20">
                            <li><strong><?php echo e(__('Requested By')); ?>:</strong> <?php echo e(optional($redeem->user)->name); ?></li>
                            <li><strong><?php echo e(__('Total Rewarded Amount')); ?>:</strong><?php echo e(amount_with_currency_symbol($redeem_balance)); ?> </li>
                            <?php if($redeem->payment_status === 'pending'): ?>
                            <?php
                                $redeem_able_amount = $redeem_balance - $redeem->where('payment_status','!=','reject')->pluck('withdraw_request_amount')->sum();
                            ?>
                                <li><strong><?php echo e(__('Available For Withdraw Amount')); ?>:</strong><?php echo e(amount_with_currency_symbol($redeem_able_amount)); ?> </li>
                            <?php endif; ?>
                            <li><strong><?php echo e(__('Requested Redeemable Amount')); ?>:</strong> <?php echo e(amount_with_currency_symbol($redeem->withdraw_request_amount)); ?> </li>
                            <li><strong><?php echo e(__('Payment Gateway')); ?>:</strong> <?php echo e($redeem->payment_gateway); ?> </li>
                            <li><strong><?php echo e(__('Payment Status')); ?>:</strong> <?php echo e($redeem->payment_status); ?> </li>
                            <li><strong><?php echo e(__('Date')); ?>:</strong> <?php echo e($redeem->created_at->format('D, d M Y')); ?> </li>
                            <?php if($redeem->payment_status === 'approved'): ?>
                                <li><strong><?php echo e(__('Approved Date')); ?>:</strong> <?php echo e($redeem->updated_at->format('D, d M Y')); ?> </li>
                            <?php endif; ?>
                            <li><strong><?php echo e(__('Payment Account Details ')); ?>:</strong> <?php echo e($redeem->payment_account_details); ?> </li>
                            <li><strong><?php echo e(__('Additional Comment by user')); ?>:</strong> <?php echo e($redeem->additional_comment_by_user); ?> </li>
                        </ul>
                        <h3 class="header-title margin-top-40"><?php echo e(__('Admin Response')); ?></h3>
                        <ul class="margin-top-20">
                            <li><strong><?php echo e(__('Transaction Id')); ?>:</strong> <?php echo e($redeem->transaction_id); ?> </li>
                            <li><strong><?php echo e(__('Payment Receipt')); ?>:</strong>
                                <?php if($redeem->payment_receipt && file_exists('assets/uploads/reward-redeem/'.$redeem->payment_receipt)): ?>
                                    <a href="<?php echo e(asset('assets/uploads/reward-redeem/'.$redeem->payment_receipt)); ?>" download=""><?php echo e($redeem->payment_receipt); ?></a>
                                <?php else: ?>
                                    <?php echo e($redeem->payment_receipt); ?>

                                <?php endif; ?>
                            </li>
                            <li><strong><?php echo e(__('Payment information')); ?>:</strong> <?php echo e($redeem->payment_information); ?> </li>
                            <li><strong><?php echo e(__('Additional Comment by Admin')); ?>:</strong> <?php echo e($redeem->additional_comment_by_admin); ?> </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('backend.admin-master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/xgenxchi/public_html/laravel/fundorex/@core/resources/views/backend/pages/reward/redeem-view.blade.php ENDPATH**/ ?>
<?php $__env->startSection('site-title'); ?>
    <?php echo e(__('Edit Reward Redeem')); ?>

<?php $__env->stopSection(); ?>
<?php $__env->startSection('style'); ?>

<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>
    <div class="col-lg-12 col-ml-12 padding-bottom-30">
        <div class="row">
            <div class="col-lg-12">
                <div class="margin-top-40"></div>
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
            </div>
            <div class="col-lg-12 mt-5">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="header-wrap d-flex justify-content-between margin-bottom-30">
                                    <h4 class="header-title">  <?php echo e(__('Edit Reward Redeem')); ?></h4>
                                    <div class="headerbtn-wrap">
                                        <div class="btn-wrapper">
                                            <a href="<?php echo e(route('admin.reward.all.redeem.request')); ?>"
                                               class="btn btn-info"><?php echo e(__('All Reward Redeem')); ?></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <ul class="margin-bottom-40">
                            <li><strong><?php echo e(__('Requested By')); ?>:</strong> <?php echo e(optional($redeem->user)->name); ?></li>
                            <?php if($redeem->payment_status === 'pending'): ?>
                                <?php
                                    $redeem_able_amount = $redeem_balance - $redeem->pluck('withdraw_request_amount')->sum();
                                ?>
                                <li><strong><?php echo e(__('Available For Redeem Amount')); ?>:</strong><?php echo e(amount_with_currency_symbol($redeem_able_amount)); ?> </li>
                            <?php endif; ?>
                            <li><strong><?php echo e(__('Requested Withdraw Amount')); ?>

                                    :</strong> <?php echo e(amount_with_currency_symbol($redeem->withdraw_request_amount)); ?> </li>
                            <li><strong><?php echo e(__('Payment Gateway')); ?>:</strong> <?php echo e($redeem->payment_gateway); ?> </li>
                            <li><strong><?php echo e(__('Payment Status')); ?>:</strong> <?php echo e($redeem->payment_status); ?> </li>
                            <li><strong><?php echo e(__('Date')); ?>:</strong> <?php echo e($redeem->created_at->format('D, d M Y')); ?> </li>
                            <?php if($redeem->payment_status === 'approved'): ?>
                                <li><strong><?php echo e(__('Approved Date')); ?>

                                        :</strong> <?php echo e($redeem->updated_at->format('D, d M Y')); ?> </li>
                            <?php endif; ?>
                            <li><strong><?php echo e(__('Payment Account Details ')); ?>

                                    :</strong> <?php echo e($redeem->payment_account_details); ?> </li>
                            <li><strong><?php echo e(__('Additional Comment ')); ?>

                                    :</strong> <?php echo e($redeem->additional_comment_by_user); ?> </li>
                        </ul>

                        <form action="<?php echo e(route('admin.reward.redeem.update')); ?>" method="post"
                              enctype="multipart/form-data">
                            <?php echo csrf_field(); ?>
                            <input type="hidden" name="withdraw_id" value="<?php echo e($redeem->id); ?>">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <label class="text-info"><?php echo e(__('Transaction ID')); ?></label>
                                        <input type="text" class="form-control" name="transaction_id"
                                               value="<?php echo e($redeem->transaction_id); ?>" id="withdraw_amount">
                                    </div>
                                    <div class="form-group">
                                        <label class="text-info" for="edit_name"><?php echo e(__('Payment Information')); ?></label>
                                        <textarea name="payment_information" cols="30" rows="10"
                                                  class="form-control"> <?php echo $redeem->payment_information; ?></textarea>

                                    </div>
                                    <div class="form-group">
                                        <label class="text-info" for="edit_name"><?php echo e(__('Additional Comment')); ?></label>
                                        <textarea name="additional_comment_by_admin" cols="4" rows="4"
                                                  class="form-control"><?php echo e($redeem->additional_comment_by_admin); ?></textarea>
                                    </div>

                                    <div class="form-group">
                                        <label class="text-info"
                                               for="image"><?php echo e(__('Payment Receipt - Image/PDF')); ?></label>
                                        <input type="file" class="form-control btn btn-info btn-sm"
                                               name="payment_receipt">
                                    </div>
                                    <div>
                                        <?php if($redeem->payment_receipt): ?>

                                            <label for=""><?php echo e(__('Current Payment Receipt')); ?>:</label>
                                            <a href="<?php echo e(asset('assets/uploads/reward-redeem/'.$redeem->payment_receipt)); ?>"
                                               type="application/pdf" target="_blank"><?php echo e(__('View')); ?></a>
                                        <?php else: ?>
                                            <span class="badge badge-danger"><?php echo e(__('Not Added Yet')); ?></span>
                                        <?php endif; ?>
                                    </div>
                                    <div class="form-group col-lg-12 mt-3">
                                        <label class="text-info"><?php echo e(__('Payment Status')); ?></label>
                                        <select name="payment_status" class="form-control">
                                            <option <?php if($redeem->payment_status === 'pending'): ?> selected
                                                    <?php endif; ?> value="pending"><?php echo e(__('Pending')); ?></option>
                                            <option <?php if($redeem->payment_status === 'reject'): ?> selected
                                                    <?php endif; ?> value="reject"><?php echo e(__('Reject')); ?></option>
                                            <option <?php if($redeem->payment_status === 'approved'): ?> selected
                                                    <?php endif; ?> value="approved"><?php echo e(__('Approved')); ?></option>
                                        </select>
                                    </div>
                                </div>

                                <button id="update" type="submit"
                                        class="btn btn-primary mt-4 pr-4 pl-4"><?php echo e(__('Update Redeem')); ?></button>
                            </div>
                    </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    </div>

<?php $__env->stopSection(); ?>
<?php $__env->startSection('script'); ?>
    <script>
        (function ($) {
            "use strict";
            $(document).ready(function () {
                <?php if (isset($component)) { $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4 = $component; } ?>
<?php $component = $__env->getContainer()->make(Illuminate\View\AnonymousComponent::class, ['view' => 'components.btn.update','data' => []]); ?>
<?php $component->withName('btn.update'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php $component->withAttributes([]); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4)): ?>
<?php $component = $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4; ?>
<?php unset($__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4); ?>
<?php endif; ?>

                $(document).on('keyup', '#paid_amount', function () {
                    var paid_amount = $(this).val();
                    var campaign_withdrawable_amount = $('#campaign_withdrawable_amount').val();
                    var remaining_amount = $('#remaining_amount').val();

                    $('#remaining_amount').val(campaign_withdrawable_amount - paid_amount);
                });


            });
        })(jQuery)
    </script>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('backend.admin-master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/xgenxchi/public_html/laravel/fundorex/@core/resources/views/backend/pages/reward/edit-redeem.blade.php ENDPATH**/ ?>
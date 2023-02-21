
<?php $__env->startSection('site-title'); ?>
    <?php echo e(__('Payment Details')); ?>

<?php $__env->stopSection(); ?>
<?php $__env->startSection('style'); ?>
    <?php if (isset($component)) { $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4 = $component; } ?>
<?php $component = $__env->getContainer()->make(Illuminate\View\AnonymousComponent::class, ['view' => 'components.media.css','data' => []]); ?>
<?php $component->withName('media.css'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php $component->withAttributes([]); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4)): ?>
<?php $component = $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4; ?>
<?php unset($__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4); ?>
<?php endif; ?>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>
    <div class="col-lg-12 col-ml-12 margin-top-40">
        <div class="row">
            <div class="col-lg-12 mt-t">
                <div class="card">
                    <div class="card-body">
                        <h4 class="header-title"><?php echo e(__('Payment Details')); ?></h4>
                        <li>
                            <li><strong><?php echo e(__('Name')); ?>:</strong> <?php echo e($payment->name); ?></li>
                            <li><strong><?php echo e(__('Email')); ?>:</strong> <?php echo e($payment->email); ?></li>
                            <li><strong><?php echo e(__('Event')); ?>:</strong> <?php echo e($payment->event_name); ?></li>
                            <li><strong><?php echo e(__('Ticket Cost')); ?> :</strong> <?php echo e(amount_with_currency_symbol($payment->event_cost)); ?></li>
                            <li><strong><?php echo e(__('Payment Gateway')); ?>:</strong> <?php echo e($payment->package_gateway); ?></li>
                            <li><strong><?php echo e(__('Transaction ID')); ?>:</strong> <?php echo e($payment->transaction_id); ?></li>
                            <li><strong><?php echo e(__('Status')); ?>:</strong> <?php echo e($payment->status); ?></li>

                            <?php if(!empty($payment->manual_payment_attachment)): ?>
                                <li>
                                    <strong class="d-block"><?php echo e(__(' Manual Payment Attachment :')); ?>  </strong>
                                        <a class="btn btn-info btn-sm btn-sm" href="<?php echo e(url('assets/uploads/attachment/'.$payment->manual_payment_attachment)); ?>" target="_blank">
                                            <?php echo e(__('View Attachment')); ?></a>

                                </li>
                            <?php endif; ?>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('backend.admin-master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /Users/xgenious/Desktop/xgenious/localhost/fundorex-last-server-file-with-api/@core/resources/views/backend/events/payment-log-view.blade.php ENDPATH**/ ?>
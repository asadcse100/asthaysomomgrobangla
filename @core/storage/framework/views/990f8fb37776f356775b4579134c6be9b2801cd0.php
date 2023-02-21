<?php $__env->startSection('site-title'); ?>
    <?php echo e(__('Job Applicant Details')); ?>

<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>
    <div class="col-lg-12 col-ml-12 padding-bottom-30">
        <div class="row">
            <div class="col-12 mt-5">
                <?php echo $__env->make('backend.partials.message', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                <div class="card">
                    <div class="card-body">
                        <h4 class="header-title"><?php echo e(__("Job Applicant Details")); ?></h4>
                        <ul>
                            <li><strong><?php echo e(__('Title')); ?>:</strong> <?php echo e(optional($applicant->job)->title); ?></li>
                            <li><strong><?php echo e(__('Name')); ?>:</strong> <?php echo e($applicant->name); ?></li>
                            <li><strong><?php echo e(__('Email:')); ?></strong> <?php echo e($applicant->email); ?></li>

                            <li><strong><?php echo e(__('Application Fee:')); ?></strong> <?php echo e(amount_with_currency_symbol($applicant->application_fee)); ?></li>
                            <li><strong><?php echo e(__('Payment Gateway')); ?>:</strong> <?php echo e($applicant->payment_gateway); ?></li>
                            <li><strong><?php echo e(__('Transaction ID')); ?>:</strong> <?php echo e($applicant->transaction_id); ?></li>
                            <li><strong><?php echo e(__('Payment Status')); ?>:</strong> <?php echo e($applicant->payment_status); ?></li>
                            <li><strong><?php echo e(__('Applied At')); ?>:</strong> <?php echo e($applicant->created_at->format('D,d m Y')); ?></li>
                            <?php
                                $custom_fields = unserialize($applicant->form_content,['class' => false]);
                                unset($custom_fields['captcha_token']);
                                $attachments = unserialize($applicant->attachment,['class' => false]);
                            ?>
                            <?php if(!empty($custom_fields)): ?>
                            <li><strong><?php echo e(__('Custom Fields')); ?>:</strong>
                                <ul class="ml-2">
                                    <?php $__currentLoopData = $custom_fields; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $field => $value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <li><strong><?php echo e(str_replace(['-','_'],[' ',' '],$field)); ?>:</strong> <?php echo e(purify_html($value)); ?></li>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                </ul>
                            </li>
                           <?php endif; ?>
                            <?php if(!empty($attachments)): ?>
                            <li><strong><?php echo e(__('Attachments')); ?>:</strong>
                                <ul class="ml-2">
                                    <?php $__currentLoopData = $attachments; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $field => $value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <li><strong><?php echo e(str_replace(['-','_'],[' ',' '],$field)); ?>:</strong>
                                            <a href="<?php echo e(asset($value)); ?>" download=""><?php echo e(purify_html($value)); ?></a>
                                        </li>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                </ul>
                            </li>
                            <?php endif; ?>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('backend.admin-master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/xgenxchi/public_html/laravel/fundorex/@core/resources/views/backend/jobs/applicant-view.blade.php ENDPATH**/ ?>
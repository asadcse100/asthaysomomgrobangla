<?php $__env->startSection('site-title'); ?>
    <?php echo e(__('User Tax Data')); ?>

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
            <div class="col-lg-12 col-ml-12 padding-bottom-30">
                <div class="row">
                    <div class="col-12 mt-5">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="header-title"> <?php echo e(__('User Tax Data')); ?>

                                    <a class="btn btn-info btn-xs pull-right" href="<?php echo e(route('admin.all.frontend.user')); ?>"> <?php echo e(__('All User')); ?></a>
                                </h4>

                                <ul>
                                    <li class="list-item my-2"><?php echo e(__('ID : ')); ?> <?php echo e($user_tax->id); ?></li>
                                    <li class="list-item my-2"><?php echo e(get_static_option('monthly_income_label') ??__('Monthly Income : ')); ?> <?php echo e($user_tax->monthly_income); ?></li>
                                    <li class="list-item my-2 mb-3"><?php echo e(get_static_option('annual_icome_label') ?? __('Annual Income : ')); ?> <?php echo e($user_tax->annual_income); ?></li>
                                    <li class="list-item my-2 mb-3"><?php echo e(get_static_option('income_source_label') ?? __(' Income Source : ')); ?> <?php echo e($user_tax->income_source); ?></li>

                                    <li class="list-item my-2"><?php echo e(get_static_option('nid_image_label') ?? __('NID Image : ')); ?>

                                        <?php echo render_attachment_preview_for_admin($user_tax->nid_image); ?>

                                    </li>
                                    <li class="list-item my-2"><?php echo e(get_static_option('driving_license_image_label') ?? __('Driving License Image : ')); ?>

                                        <?php echo render_attachment_preview_for_admin($user_tax->driving_license_image); ?>

                                    </li>
                                    <li class="list-item my-2"><?php echo e(get_static_option('passport_image_label') ?? __('Passport Image : ')); ?>

                                        <?php echo render_attachment_preview_for_admin($user_tax->passport_image); ?>

                                    </li>
                                </ul>

                            </div>
                        </div>
                    </div>
                </div>
            </div>

    <?php if (isset($component)) { $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4 = $component; } ?>
<?php $component = $__env->getContainer()->make(Illuminate\View\AnonymousComponent::class, ['view' => 'components.media.markup','data' => []]); ?>
<?php $component->withName('media.markup'); ?>
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

<?php $__env->startSection('script'); ?>
    <?php if (isset($component)) { $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4 = $component; } ?>
<?php $component = $__env->getContainer()->make(Illuminate\View\AnonymousComponent::class, ['view' => 'components.media.js','data' => []]); ?>
<?php $component->withName('media.js'); ?>
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


<?php echo $__env->make('backend.admin-master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /Users/xgenious/Desktop/xgenious/localhost/fundorex-last-file/@core/resources/views/backend/frontend-user/tax-data.blade.php ENDPATH**/ ?>
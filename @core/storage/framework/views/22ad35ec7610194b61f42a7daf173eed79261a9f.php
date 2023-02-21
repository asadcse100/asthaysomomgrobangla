<?php $__env->startSection('site-title'); ?>
    <?php echo e(__('User Verify Data')); ?>

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
                                <h4 class="header-title"> <?php echo e(__('User Verify Data')); ?>

                                    <a class="btn btn-info btn-xs pull-right" href="<?php echo e(route('admin.all.frontend.user')); ?>"> <?php echo e(__('All User')); ?></a>
                                </h4>

                                <ul>
                                    <li class="list-item my-2"><?php echo e(__('ID')); ?> <?php echo e($user_verify->id); ?></li>
                                    <li class="list-item my-2"><?php echo e(__('Name : ')); ?> <?php echo e($user_verify->name); ?></li>

                                    <?php if(!empty($user_verify->user_verify_nid) && !empty($user_verify->user_verify_address)): ?>

                                    <?php
                                        $nid_img = get_attachment_image_by_id($user_verify->user_verify_nid) ?? NULL;
                                        $add_img = get_attachment_image_by_id($user_verify->user_verify_address) ?? NULL;
                                    ?>

                                    <li class="list-item my-2"><?php echo e(__('NID Document')); ?>

                                        <?php echo render_attachment_preview_for_admin($user_verify->user_verify_nid); ?>

                                        <a href="<?php echo e($nid_img['img_url']); ?>" class="badge badge-primary px-1 py-1 mt-2" target="_blank"><?php echo e(__('Click to View')); ?></a>
                                    </li>
                                    <li class="list-item my-2"><?php echo e(__('Address Document')); ?>

                                        <?php echo render_attachment_preview_for_admin($user_verify->user_verify_address); ?>

                                        <a href="<?php echo e($add_img['img_url']); ?>" class="badge badge-primary px-1 py-1 mt-2" target="_blank"><?php echo e(__('Click to View')); ?></a>
                                    </li>
                                     <?php else: ?>
                                        <li>
                                            <div class="alert alert-warning"><?php echo e(__('No document available')); ?></div>
                                        </li>
                                     <?php endif; ?>
                                </ul>

                                <?php if($user_verify->user_verify_status == 1): ?>
                                    <div class="approve mt-5">
                                        <a href="<?php echo e(route('admin.frontend.user.verify.update',$user_verify->id)); ?>" class="btn btn-success btn-md"><?php echo e(__('Verify Now')); ?></a>
                                    </div>
                                <?php endif; ?>

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


<?php echo $__env->make('backend.admin-master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/xgenxchi/public_html/laravel/fundorex/@core/resources/views/backend/frontend-user/verify-data.blade.php ENDPATH**/ ?>

<?php $__env->startSection('site-title'); ?>
    <?php echo e(__('Page Settings')); ?>

<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>
    <div class="col-lg-12 col-ml-12 padding-bottom-30">
        <div class="row">
            <div class="col-12 mt-5">
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
                <div class="card">
                    <div class="card-body">
                        <h4 class="header-title"><?php echo e(__("Page Settings")); ?></h4>
                        <form action="<?php echo e(route('admin.support.ticket.page.settings')); ?>" method="POST"
                              enctype="multipart/form-data">
                            <?php echo csrf_field(); ?>

                            <div class="form-group">
                                <label for="support_ticket_login_notice"><?php echo e(__('Login Notice')); ?></label>
                                <input type="text" name="support_ticket_login_notice"
                                       class="form-control"
                                       value="<?php echo e(get_static_option('support_ticket_login_notice')); ?>">
                            </div>
                            <div class="form-group">
                                <label for="support_ticket_form_title"><?php echo e(__('Form Title')); ?></label>
                                <input type="text" name="support_ticket_form_title" class="form-control"
                                       value="<?php echo e(get_static_option('support_ticket_form_title')); ?>">
                            </div>
                            <div class="form-group">
                                <label for="support_ticket_button_text"><?php echo e(__('Button Text')); ?></label>
                                <input type="text" name="support_ticket_button_text"
                                       class="form-control"
                                       value="<?php echo e(get_static_option('support_ticket_button_text')); ?>">
                            </div>
                            <div class="form-group">
                                <label for="support_ticket_success_message"><?php echo e(__('Success Message')); ?></label>
                                <input type="text" name="support_ticket_success_message"
                                       class="form-control"
                                       value="<?php echo e(get_static_option('support_ticket_success_message')); ?>">
                            </div>

                            <button type="submit"
                                    class="btn btn-primary mt-4 pr-4 pl-4"><?php echo e(__('Update Changes')); ?></button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('backend.admin-master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH J:\Server\htdocs\asthaysomomgrobangla\@core\resources\views/backend/support-ticket/page-settings.blade.php ENDPATH**/ ?>
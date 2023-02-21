<?php $__env->startSection('site-title'); ?>
    <?php echo e(__('Events Settings')); ?>

<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>
    <div class="col-lg-12 col-ml-12 padding-bottom-30">
        <div class="row">
            <div class="col-12 mt-5">
                <?php echo $__env->make('backend.partials.message', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                <div class="card">
                    <div class="card-body">
                        <h4 class="header-title"><?php echo e(__("Settings")); ?></h4>
                        <form action="<?php echo e(route('admin.events.page.settings')); ?>" method="POST" enctype="multipart/form-data">
                            <?php echo csrf_field(); ?>
                            <div class="form-group">
                                <label for="disable_guest_mode_for_event_module"><strong><?php echo e(__('Enable/Disable Guest Mode')); ?></strong></label>
                                <label class="switch">
                                    <input type="checkbox" name="disable_guest_mode_for_event_module"  <?php if(!empty(get_static_option('disable_guest_mode_for_event_module'))): ?> checked <?php endif; ?> id="disable_guest_mode_for_event_module">
                                    <span class="slider"></span>
                                </label>
                            </div>
                            <div class="form-group">
                                <label for="event_page_button_text"><?php echo e(__('Event Page Button Text')); ?></label>
                                <input type="text" name="event_page_button_text"  class="form-control" value="<?php echo e(get_static_option('event_page_button_text')); ?>" >
                            </div>
                            <hr>
                            <div class="form-group">
                                <label for="event_attendance_page_title"><?php echo e(__('Attendance Page Title')); ?></label>
                                <input type="text" name="event_attendance_page_title"  class="form-control" value="<?php echo e(get_static_option('event_attendance_page_title')); ?>" id="event_attendance_page_title">
                            </div>
                            <div class="form-group">
                                <label for="event_attendance_page_form_button_title"><?php echo e(__('Attendance Page Form Button Title')); ?></label>
                                <input type="text" name="event_attendance_page_form_button_title"  class="form-control" value="<?php echo e(get_static_option('event_attendance_page_form_button_title')); ?>" id="event_attendance_page_form_button_title">
                            </div>

                            <div class="form-group">
                                <label for="event_attendance_receiver_mail"><?php echo e(__('Events Attendance Mail')); ?></label>
                                <input type="text" name="event_attendance_receiver_mail"  class="form-control" value="<?php echo e(get_static_option('event_attendance_receiver_mail')); ?>" id="event_attendance_receiver_mail">
                            </div>
                            <hr>
                            <div class="form-group">
                                <label for="event_cancel_page_title"><?php echo e(__('Payment Cancel Page Main Title')); ?></label>
                                <input type="text" name="event_cancel_page_title"  class="form-control" value="<?php echo e(get_static_option('event_cancel_page_title')); ?>" id="event_cancel_page_title">
                            </div>
                            <div class="form-group">
                                <label for="event_cancel_page_subtitle"><?php echo e(__('Payment Cancel Page Subtitle')); ?></label>
                                <input type="text" name="event_cancel_page_subtitle"  class="form-control" value="<?php echo e(get_static_option('event_cancel_page_subtitle')); ?>" id="event_cancel_page_subtitle">
                                <small class="info-text"><?php echo e(__('{evname} will be replaced by package name')); ?></small>
                            </div>
                            <div class="form-group">
                                <label for="event_cancel_page_description"><?php echo e(__('Payment Cancel Page Description')); ?></label>
                                <textarea name="event_cancel_page_description" class="form-control" id="event_cancel_page_description" cols="30" rows="5"><?php echo e(get_static_option('event_cancel_page_description')); ?></textarea>
                            </div>
                            <hr>
                            <div class="form-group">
                                <label for="event_success_page_title"><?php echo e(__('Payment Success Page Main Title')); ?></label>
                                <input type="text" name="event_success_page_title" class="form-control"
                                       value="<?php echo e(get_static_option('event_success_page_title')); ?>"
                                       id="event_success_page_title">
                            </div>
                            <div class="form-group">
                                <label for="event_success_page_description"><?php echo e(__('Payment Success Page Description')); ?></label>
                                <textarea name="event_success_page_description" class="form-control"
                                          id="event_success_page_description" cols="30"
                                          rows="10"><?php echo e(get_static_option('event_success_page_description')); ?></textarea>
                            </div>
                            <hr>
                            <button id="update" type="submit" class="btn btn-primary mt-4 pr-4 pl-4"><?php echo e(__('Update Changes')); ?></button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('script'); ?>
    <script>
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
    </script>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('backend.admin-master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /Users/xgenious/Desktop/xgenious/localhost/fundorex-last-server-file-with-api/@core/resources/views/backend/events/event-page-settings.blade.php ENDPATH**/ ?>
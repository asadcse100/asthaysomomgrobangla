<?php $__env->startSection('site-title'); ?>
    <?php echo e(__('Events Single Page Settings')); ?>

<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>
    <div class="col-lg-12 col-ml-12 padding-bottom-30">
        <div class="row">
            <div class="col-12 mt-5">
                <?php echo $__env->make('backend.partials.message', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                <div class="card">
                    <div class="card-body">
                        <h4 class="header-title"><?php echo e(__("Events Single Page Settings")); ?></h4>
                        <form action="<?php echo e(route('admin.events.single.page.settings')); ?>" method="POST" enctype="multipart/form-data">
                            <?php echo csrf_field(); ?>

                                        <div class="form-group">
                                            <label for="event_single_event_info_title"><?php echo e(__('Event Info Title')); ?></label>
                                            <input type="text" name="event_single_event_info_title"  class="form-control" value="<?php echo e(get_static_option('event_single_event_info_title')); ?>" id="event_single_event_info_title">
                                        </div>
                                        <div class="form-group">
                                            <label for="event_single_date_title"><?php echo e(__('Date Title')); ?></label>
                                            <input type="text" name="event_single_date_title"  class="form-control" value="<?php echo e(get_static_option('event_single_date_title')); ?>" id="event_single_date_title">
                                        </div>
                                        <div class="form-group">
                                            <label for="event_single_time_title"><?php echo e(__('Time Title')); ?></label>
                                            <input type="text" name="event_single_time_title"  class="form-control" value="<?php echo e(get_static_option('event_single_time_title')); ?>" id="event_single_time_title">
                                        </div>
                                        <div class="form-group">
                                            <label for="event_single_cost_title"><?php echo e(__('Cost Title')); ?></label>
                                            <input type="text" name="event_single_cost_title"  class="form-control" value="<?php echo e(get_static_option('event_single_cost_title')); ?>" id="event_single_cost_title">
                                        </div>
                                        <div class="form-group">
                                            <label for="event_single_category_title"><?php echo e(__('Category Title')); ?></label>
                                            <input type="text" name="event_single_category_title"  class="form-control" value="<?php echo e(get_static_option('event_single_category_title')); ?>" id="event_single_category_title">
                                        </div>
                                        <div class="form-group">
                                            <label for="event_single_organizer_title"><?php echo e(__('Event Organizer Title')); ?></label>
                                            <input type="text" name="event_single_organizer_title"  class="form-control" value="<?php echo e(get_static_option('event_single_organizer_title')); ?>" id="event_single_organizer_title">
                                        </div>
                                        <div class="form-group">
                                            <label for="event_single_organizer_name_title"><?php echo e(__('Organizer Name Title')); ?></label>
                                            <input type="text" name="event_single_organizer_name_title"  class="form-control" value="<?php echo e(get_static_option('event_single_organizer_name_title')); ?>" id="event_single_organizer_name_title">
                                        </div>
                                        <div class="form-group">
                                            <label for="event_single_organizer_email_title"><?php echo e(__('Organizer Email Title')); ?></label>
                                            <input type="text" name="event_single_organizer_email_title"  class="form-control" value="<?php echo e(get_static_option('event_single_organizer_email_title')); ?>" id="event_single_organizer_email_title">
                                        </div>
                                        <div class="form-group">
                                            <label for="event_single_organizer_phone_title"><?php echo e(__('Organizer Phone Title')); ?></label>
                                            <input type="text" name="event_single_organizer_phone_title"  class="form-control" value="<?php echo e(get_static_option('event_single_organizer_phone_title')); ?>" id="event_single_organizer_phone_title">
                                        </div>
                                        <div class="form-group">
                                            <label for="event_single_organizer_website_title"><?php echo e(__('Organizer Website Title')); ?></label>
                                            <input type="text" name="event_single_organizer_website_title"  class="form-control" value="<?php echo e(get_static_option('event_single_organizer_website_title')); ?>" id="event_single_organizer_website_title">
                                        </div>
                                        <div class="form-group">
                                            <label for="event_single_venue_title"><?php echo e(__('Event Venue Title')); ?></label>
                                            <input type="text" name="event_single_venue_title"  class="form-control" value="<?php echo e(get_static_option('event_single_venue_title')); ?>" id="event_single_venue_title">
                                        </div>
                                        <div class="form-group">
                                            <label for="event_single_venue_name_title"><?php echo e(__('Venue Name Title')); ?></label>
                                            <input type="text" name="event_single_venue_name_title"  class="form-control" value="<?php echo e(get_static_option('event_single_venue_name_title')); ?>" id="event_single_venue_name_title">
                                        </div>
                                        <div class="form-group">
                                            <label for="event_single_venue_location_title"><?php echo e(__('Venue Location Title')); ?></label>
                                            <input type="text" name="event_single_venue_location_title"  class="form-control" value="<?php echo e(get_static_option('event_single_venue_location_title')); ?>" id="event_single_venue_location_title">
                                        </div>
                                        <div class="form-group">
                                            <label for="event_single_venue_phone_title"><?php echo e(__('Venue Phone Title')); ?></label>
                                            <input type="text" name="event_single_venue_phone_title"  class="form-control" value="<?php echo e(get_static_option('event_single_venue_phone_title')); ?>" id="event_single_venue_phone_title">
                                        </div>
                                        <div class="form-group">
                                            <label for="event_single_reserve_button_title"><?php echo e(__('Reserve Seat Button Text')); ?></label>
                                            <input type="text" name="event_single_reserve_button_title"  class="form-control" value="<?php echo e(get_static_option('event_single_reserve_button_title')); ?>" id="event_single_reserve_button_title">
                                        </div>
                                        <div class="form-group">
                                            <label for="event_single_available_ticket_text"><?php echo e(__('Available Ticket Text')); ?></label>
                                            <input type="text" name="event_single_available_ticket_text"  class="form-control" value="<?php echo e(get_static_option('event_single_available_ticket_text')); ?>" id="event_single_available_ticket_text">
                                        </div>
                                        <div class="form-group">
                                            <label for="event_single_event_expire_text"><?php echo e(__('Event Expire Text')); ?></label>
                                            <input type="text" name="event_single_event_expire_text"  class="form-control" value="<?php echo e(get_static_option('event_single_event_expire_text')); ?>" id="event_single_event_expire_text">
                                        </div>


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

<?php echo $__env->make('backend.admin-master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /Users/xgenious/Desktop/xgenious/localhost/fundorex-last-server-file-with-api/@core/resources/views/backend/events/event-single-page-settings.blade.php ENDPATH**/ ?>
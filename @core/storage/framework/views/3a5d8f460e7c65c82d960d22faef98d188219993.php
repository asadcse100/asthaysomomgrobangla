<?php $__env->startSection('site-title'); ?>
<?php echo e(__('User Dashboard')); ?>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('section'); ?>
    <div class="row">
        <?php if(!empty(get_static_option('events_module_status'))): ?>
            <div class="col-lg-6">
                <div class="user-dashboard-card margin-bottom-30">
                    <div class="icon"><i class="fas fa-calendar-alt"></i></div>
                    <div class="content">
                        <h4 class="title"><?php echo e(get_static_option('events_page_name')); ?> <?php echo e(__('Booking')); ?></h4>
                        <span class="number"><?php echo e($event_attendances); ?></span>
                    </div>
                </div>
            </div>
        <?php endif; ?>


        <?php if(get_static_option('donations_module_status')): ?>
            <div class="col-lg-6">
                <div class="user-dashboard-card style-01">
                    <div class="icon"><i class="fas fa-donate"></i></div>
                    <div class="content">
                        <h4 class="title"><?php echo e(__('Total')); ?> <?php echo e(get_static_option('donation_page_name')); ?></h4>
                        <span class="number"><?php echo e($donation); ?></span>
                    </div>
                </div>
            </div>
        <?php endif; ?>

        <div class="col-lg-6">
            <div class="user-dashboard-card style-01">
                <div class="icon"><i class="fas fa-calendar-alt"></i></div>
                <div class="content">
                    <h4 class="title"><?php echo e(__('Total')); ?> <?php echo e(__('Campaigns')); ?></h4>
                    <span class="number"><?php echo e($campaigns); ?></span>
                </div>
            </div>
        </div>

            <div class="col-lg-6">
                <div class="user-dashboard-card style-01">
                    <div class="icon"><i class="fas fa-solid fa-gift"></i></div>
                    <div class="content">
                        <h4 class="title"><?php echo e(__('Total')); ?> <?php echo e(__('Reward Point')); ?></h4>
                        <span class="number"><?php echo e($donation_reward); ?></span>
                    </div>
                </div>
            </div>

    </div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('frontend.user.dashboard.user-master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /Users/xgenious/Desktop/xgenious/localhost/fundorex-with-api/@core/resources/views/frontend/user/dashboard/user-home.blade.php ENDPATH**/ ?>
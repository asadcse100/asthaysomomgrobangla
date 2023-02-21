<?php $__env->startSection('site-title'); ?>
    <?php echo e(get_static_option('team_page_name')); ?>

<?php $__env->stopSection(); ?>
<?php $__env->startSection('page-title'); ?>
    <?php echo e(get_static_option('team_page_name')); ?>

<?php $__env->stopSection(); ?>
<?php $__env->startSection('page-meta-data'); ?>
    <meta name="description" content="<?php echo e(get_static_option('team_page_meta_description')); ?>">
    <meta name="tags" content="<?php echo e(get_static_option('team_page_meta_tags')); ?>">
<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>

    <div class="team-member-area gray-bg team-page padding-top-110 padding-bottom-80">
        <div class="container">
            <div class="row">
                <?php $a = 1;?>
                <?php $__currentLoopData = $all_team_members; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $data): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <div class="col-lg-3  col-sm-6 padding-bottom-40">
                        <div class="team-single-item">
                            <div class="thumb">
                                <?php echo render_image_markup_by_attachment_id($data->image); ?>

                                <div class="content style-<?php echo e($a); ?>">
                                    <h4 class="title"><?php echo e($data->name); ?> </h4>
                                    <div class="social-link">
                                        <ul>
                                            <?php if(!empty($data->icon_one) && !empty($data->icon_one_url)): ?>
                                                <li><a href="<?php echo e($data->icon_one_url); ?>"><i
                                                                class="<?php echo e($data->icon_one); ?>"></i></a></li>
                                            <?php endif; ?>
                                            <?php if(!empty($data->icon_two) && !empty($data->icon_two_url)): ?>
                                                <li><a href="<?php echo e($data->icon_two_url); ?>"><i
                                                                class="<?php echo e($data->icon_two); ?>"></i></a></li>
                                            <?php endif; ?>
                                            <?php if(!empty($data->icon_three) && !empty($data->icon_three_url)): ?>
                                                <li><a href="<?php echo e($data->icon_three_url); ?>"><i
                                                                class="<?php echo e($data->icon_three); ?>"></i></a></li>
                                            <?php endif; ?>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <?php $a++; if ($a == 5){$a=1;} ?>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                <div class="col-lg-12">
                    <div class="pagination-wrapper text-center">
                        <?php echo e($all_team_members->links()); ?>

                    </div>
                </div>
            </div>
        </div>
    </div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('frontend.frontend-page-master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/xgenxchi/public_html/laravel/fundorex/@core/resources/views/frontend/pages/team-page.blade.php ENDPATH**/ ?>
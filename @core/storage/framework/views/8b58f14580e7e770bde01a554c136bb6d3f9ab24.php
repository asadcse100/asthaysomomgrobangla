
<?php $__env->startSection('site-title'); ?>
    <?php echo e(get_static_option('success_story_page_name')); ?>

<?php $__env->stopSection(); ?>
<?php $__env->startSection('page-title'); ?>
    <?php echo e(get_static_option('success_story_page_name')); ?>

<?php $__env->stopSection(); ?>
<?php $__env->startSection('page-meta-data'); ?>
    <meta name="description" content="<?php echo e(get_static_option('success_story_page_name_page_meta_description')); ?>">
    <meta name="tags" content="<?php echo e(get_static_option('success_story_page_name_page_meta_tags')); ?>">
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>

    <section class="success-area padding-top-140 padding-bottom-140">
        <div class="success-icon-shapes">
            <img src="<?php echo e(asset('assets/frontend/img/success/success-icon-s.png')); ?>" alt="">
        </div>
        <div class="container">

            <div class="row ">
                <div class="col-lg-8">
                        <?php $__currentLoopData = $all_success_stories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=> $data): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <div class="single-success-items success-page">
                                <div class="row align-items-center">
                                    <div class="col-lg-12">
                                        <div class="success-contents-all">
                                            <div class="single-success-images">
                                                <div class="success-thums success-thums-two margin-bottom-30">
                                                    <?php echo render_image_markup_by_attachment_id($data->image); ?>

                                                </div>
                                            </div>
                                            <div class="single-success-contents">
                                                <div class="success-contents margin-bottom-30">
                                                    <a href=""><h4 class="success-titles"> <?php echo e($data->title ?? ''); ?></h4></a>

                                                    <p><?php echo e(purify_html($data->excerpt)); ?></p>
                                                    <?php
                                                        $classes = ['reverse-color','btn-color-three','btn-dander','btn-color-three'];
                                                    ?>

                                                    <div class="btn-wrapper">
                                                        <a href="<?php echo e(route('frontend.success.story.single',$data->slug)); ?>" class="boxed-btn <?php echo e($classes[$key % count($classes)]); ?>"> <?php echo get_static_option('home_page_04_success_story_area_button_text'); ?></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                    </div>

                                </div>
                            </div>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

                    <nav class="pagination-wrapper" aria-label="Page navigation ">
                        <?php echo e($all_success_stories->links()); ?>

                    </nav>

                </div>
                <div class="col-lg-4">
                    <div class="widget-area">
                        <?php echo render_frontend_sidebar('success-story',['column' => false]); ?>

                    </div>
                </div>
            </div>
        </div>
    </section>

<?php $__env->stopSection(); ?>
<?php echo $__env->make('frontend.frontend-page-master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/xgenxchi/public_html/laravel/fundorex/@core/resources/views/frontend/pages/success-story/success-story.blade.php ENDPATH**/ ?>
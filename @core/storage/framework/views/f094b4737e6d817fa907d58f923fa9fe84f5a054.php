<?php $__env->startSection('page-title'); ?>
    <?php echo e(__('Category:')); ?> <?php echo e(' '.$category_name); ?>

<?php $__env->stopSection(); ?>
<?php $__env->startSection('site-title'); ?>
    <?php echo e(__('Category:')); ?> <?php echo e(' '.$category_name); ?>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>

    <section class="blog-content-area padding-top-100 padding-bottom-80">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                        <?php $__empty_1 = true; $__currentLoopData = $all_success_stories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $data): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); $__empty_1 = false; ?>
                            <div class="col-lg-12">
                                <div class="contribute-single-item">
                                    <div class="thumb">
                                        <?php echo render_image_markup_by_attachment_id($data->image,'','grid'); ?>

                                    </div>
                                    <div class="content">
                                        <h3 class="title">
                                            <a href="<?php echo e(route('frontend.success.story.single',$data->slug)); ?>"><?php echo e($data->title ?? ''); ?></a>
                                        </h3>
                                        <div class="excpert">
                                            <?php echo e(purify_html($data->excerpt)); ?>

                                        </div>
                                        <div class="btn-wrapper margin-top-30">
                                            <a href="<?php echo e(route('frontend.success.story.single',$data->slug)); ?>" class="boxed-btn"><?php echo e(get_static_option('success_story_page_button_text')); ?></a>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); if ($__empty_1): ?>
                            <div class="alert alert-danger">
                                <?php echo e(__('No Post Available In ').$category_name.__(' Category')); ?>

                            </div>
                        <?php endif; ?>
                    <div class="pagination-wrapper" aria-label="Page navigation">
                       <?php echo e($all_success_stories->links()); ?>

                    </div>
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

<?php echo $__env->make('frontend.frontend-page-master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/xgenxchi/public_html/laravel/fundorex/@core/resources/views/frontend/pages/success-story/success-story-category.blade.php ENDPATH**/ ?>
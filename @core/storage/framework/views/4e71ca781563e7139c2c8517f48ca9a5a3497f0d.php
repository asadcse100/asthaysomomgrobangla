

<?php $__env->startSection('og-meta'); ?>
    <meta name="og:title" content="<?php echo e(purify_html($success_story->og_meta_title)); ?>">
    <meta name="og:description" content="<?php echo e(purify_html($success_story->og_meta_description)); ?>">
    <?php echo render_og_meta_image_by_attachment_id($success_story->og_meta_image); ?>

    <meta name="og:description" content=" <?php echo e(purify_html($success_story->description)); ?>">
<?php $__env->stopSection(); ?>

<?php $__env->startSection('site-title'); ?>
    <?php echo e($success_story->title); ?>

<?php $__env->stopSection(); ?>
<?php $__env->startSection('page-title'); ?>
    <?php echo e($success_story->title); ?>

<?php $__env->stopSection(); ?>
<?php $__env->startSection('page-meta-data'); ?>
    <meta name="description" content="<?php echo e($success_story->meta_tags); ?>">
    <meta name="tags" content="<?php echo e($success_story->meta_description); ?>">
<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>
    <section class="blog-content-area padding-120">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div class="single-event-details">
                        <div class="thumb">
                            <?php echo render_image_markup_by_attachment_id($success_story->image,'','large'); ?>

                        </div>
                        <div class="content">
                            <div class="details-content-area mt-4">
                                <?php echo purify_html_raw($success_story->story_content ); ?>

                            </div>
                    </div>
                </div>
            </div>
                <div class="col-lg-4">
                    <div class="widget-area">
                        <?php echo render_frontend_sidebar('success-story',['column' => false]); ?>

                    </div>
                </div>
        </div>
    </section>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('frontend.frontend-page-master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/xgenxchi/public_html/laravel/fundorex/@core/resources/views/frontend/pages/success-story/success-story-single.blade.php ENDPATH**/ ?>
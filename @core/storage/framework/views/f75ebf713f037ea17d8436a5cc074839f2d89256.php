<?php $__env->startSection('site-title'); ?>
    <?php echo e(get_static_option('testimonial_page_name')); ?>

<?php $__env->stopSection(); ?>
<?php $__env->startSection('page-title'); ?>
    <?php echo e(get_static_option('testimonial_page_name')); ?>

<?php $__env->stopSection(); ?>
<?php $__env->startSection('page-meta-data'); ?>
    <meta name="description" content="<?php echo e(get_static_option('testimonial_page_meta_description')); ?>">
    <meta name="tags" content="<?php echo e(get_static_option('testimonial_page_meta_tags')); ?>">
<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>
    <section class="testimonial-area padding-top-110 padding-bottom-90">
        <div class="container">
            <div class="row">
                <?php $__currentLoopData = $all_testimonials; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $data): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <div class="col-lg-4 col-md-6">
                        <div class="single-testimonial-item-07 margin-bottom-30">
                            <div class="icon style-01">
                                <i class="fas fa-quote-left"></i>
                            </div>
                            <div class="content">
                                <p class="description"><?php echo e($data->description); ?></p>
                                <div class="author-details">
                                    <div class="thumb">
                                        <?php echo render_image_markup_by_attachment_id($data->image); ?>

                                    </div>
                                    <div class="author-meta">
                                        <h4 class="title"><?php echo e($data->name); ?></h4>
                                        <div class="designation"><?php echo e($data->designation); ?></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                <div class="col-lg-12">
                    <nav class="pagination-wrapper" aria-label="Page navigation ">
                        <?php echo e($all_testimonials->links()); ?>

                    </nav>
                </div>
            </div>
        </div>
    </section>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('frontend.frontend-page-master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/xgenxchi/public_html/laravel/fundorex/@core/resources/views/frontend/pages/testimonial-page.blade.php ENDPATH**/ ?>
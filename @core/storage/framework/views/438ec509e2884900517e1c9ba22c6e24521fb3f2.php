<?php $__env->startSection('site-title'); ?>
    <?php echo e(__('Blog Single Page Settings')); ?>

<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>
    <div class="col-lg-12 col-ml-12 padding-bottom-30">
        <div class="row">
            <div class="col-lg-12">
                <div class="margin-top-40"></div>
                <?php echo $__env->make('backend.partials.message', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                <?php echo $__env->make('backend.partials.error', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
            </div>
            <div class="col-lg-12 mt-5">
                <div class="card">
                    <div class="card-body">
                        <h4 class="header-title"><?php echo e(__('Blog Single Page Settings')); ?></h4>
                        <form action="<?php echo e(route('admin.blog.single.settings')); ?>" method="post" enctype="multipart/form-data">
                            <?php echo csrf_field(); ?>
                                    <div class="form-group">
                                        <label for="blog_single_pag_related_post_title"><?php echo e(__('Related Post Title')); ?></label>
                                        <input type="text" class="form-control"  id="blog_single_page_related_post_title" value="<?php echo e(get_static_option('blog_single_page_related_post_title')); ?>" name="blog_single_page_related_post_title" placeholder="<?php echo e(__('Related Post Title')); ?>">
                                    </div>
                                    <div class="form-group">
                                        <label for="blog_single_page_tags_title"><?php echo e(__('Tags Title')); ?></label>
                                        <input type="text" class="form-control"  id="blog_single_page_tags_title" value="<?php echo e(get_static_option('blog_single_page_tags_title')); ?>" name="blog_single_page_tags_title" placeholder="<?php echo e(__('Tags Title')); ?>">
                                    </div>
                                    <div class="form-group">
                                        <label for="blog_single_page_share_title"><?php echo e(__('Share Title')); ?></label>
                                        <input type="text" class="form-control"  id="blog_single_page_share_title" value="<?php echo e(get_static_option('blog_single_page_share_title')); ?>" name="blog_single_page_share_title" placeholder="<?php echo e(__('Share Title')); ?>">
                                    </div>

                            <button id="update" type="submit" class="btn btn-primary mt-4 pr-4 pl-4"><?php echo e(__('Update Blog Page Settings')); ?></button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('script'); ?>
    <script>
        (function($){
            "use strict";
            $(document).ready(function(){
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
            });
        })(jQuery)
    </script>
<?php $__env->stopSection(); ?>


<?php echo $__env->make('backend.admin-master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /Users/xgenious/Desktop/xgenious/localhost/fundorex-last-server-file-with-api/@core/resources/views/backend/blog/page-settings/blog-single.blade.php ENDPATH**/ ?>
<?php $__env->startSection('site-title'); ?>
    <?php echo e(__('Image Gallery Page Settings')); ?>

<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>
    <div class="col-lg-12 col-ml-12 padding-bottom-30">
        <div class="row">
            <div class="col-12 mt-5">
                <?php echo $__env->make('backend.partials.message', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                <div class="card">
                    <div class="card-body">
                        <h4 class="header-title"><?php echo e(__("Image Gallery Page Settings")); ?></h4>
                        <form action="<?php echo e(route('admin.gallery.page.settings')); ?>" method="POST" enctype="multipart/form-data">
                            <?php echo csrf_field(); ?>
                            <div class="form-group">
                                <label for="site_image_gallery_post_items"><?php echo e(__('Image Gallery Topics')); ?></label>
                                <input type="number" class="form-control" name="site_image_gallery_post_items" value="<?php echo e(get_static_option('site_image_gallery_post_items')); ?>">
                            </div>
                            <div class="form-group">
                                <label for="site_image_gallery_order_by"><?php echo e(__('Order By')); ?></label>
                                <select name="site_image_gallery_order_by"  class="form-control">
                                    <option value="id"><?php echo e(__('Id')); ?></option>
                                    <option value="title"><?php echo e(__('Title')); ?></option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="site_image_gallery_order"><?php echo e(__('Order')); ?></label>
                                <select name="site_image_gallery_order"  class="form-control">
                                    <option value="ASC"><?php echo e(__('Ascending')); ?></option>
                                    <option value="DESC"><?php echo e(__('Descending')); ?></option>
                                </select>
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
            (function(){
                "use strict";
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
            })(jQuery)
        </script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('backend.admin-master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\fund\@core\resources\views/backend/image-gallery/image-gallery-page-settings.blade.php ENDPATH**/ ?>
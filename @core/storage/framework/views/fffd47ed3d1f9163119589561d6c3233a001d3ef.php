<?php $__env->startSection('site-title'); ?>
    <?php echo e(__('Tax Information')); ?>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('style'); ?>
    <?php if (isset($component)) { $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4 = $component; } ?>
<?php $component = $__env->getContainer()->make(Illuminate\View\AnonymousComponent::class, ['view' => 'components.media.css','data' => []]); ?>
<?php $component->withName('media.css'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php $component->withAttributes([]); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4)): ?>
<?php $component = $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4; ?>
<?php unset($__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4); ?>
<?php endif; ?>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('section'); ?>
    <div class="dashboard-form-wrapper">

        <div class="row">
            <div class="col-md-12">
                <h2 class="title"><?php echo e(__('Tax Information')); ?>


                </h2>

            </div>
        </div>
        <form action="<?php echo e(route('user.home.tax.information.update')); ?>" method="post" enctype="multipart/form-data">
            <?php echo csrf_field(); ?>

            <div class="row">

            <div class="form-group col-md-6">
                <label for="name"><?php echo e(get_static_option('monthly_income_label') ?? __('Monthly Income')); ?></label>
                <input type="number" class="form-control" id="name" name="monthly_income" value="<?php echo e($user_details->monthly_income); ?>">
            </div>
            <div class="form-group col-md-6">
                <label for="email"><?php echo e(get_static_option('annual_icome_label') ?? __('Annual Income')); ?></label>
                <input type="number" class="form-control" id="email" name="annual_income" value="<?php echo e($user_details->annual_income); ?>">
            </div>

            <div class="form-group col-md-12">
                <label for="email"><?php echo e(get_static_option('income_source_label') ??__('Income Source')); ?></label>
                <input type="text" class="form-control" id="email" name="income_source" value="<?php echo e($user_details->income_source); ?>">
            </div>

            <div class="form-group mt-5 col-md-4">
                <label for="image"><?php echo e(get_static_option('nid_image_label') ??__('NID Image')); ?></label>
                <div class="media-upload-btn-wrapper">
                    <div class="img-wrap">
                         <?php echo render_attachment_preview_for_admin($user_details->nid_image); ?>

                    </div>
                    <input type="hidden" name="nid_image" value="<?php echo e($user_details->nid_image); ?>">
                    <button type="button" class="btn btn-info media_upload_form_btn" data-btntitle="<?php echo e(__('Select Image')); ?>" data-modaltitle="<?php echo e(__('Upload Image')); ?>" data-toggle="modal" data-target="#media_upload_modal">
                        <?php echo e(__('Upload Image')); ?>

                    </button>
                </div>
                <small><?php echo e(__('Recommended image size 150x150')); ?></small>
            </div>

            <div class="form-group col-md-4 mt-5">
                <label for="image"><?php echo e(get_static_option('driving_license_image_label') ?? __('Driving License Image')); ?></label>
                <div class="media-upload-btn-wrapper">
                    <div class="img-wrap">
                        <?php echo render_attachment_preview_for_admin($user_details->driving_license_image); ?>

                    </div>
                    <input type="hidden" name="driving_license_image" value="<?php echo e($user_details->driving_license_image); ?>">
                    <button type="button" class="btn btn-info media_upload_form_btn" data-btntitle="<?php echo e(__('Select Image')); ?>" data-modaltitle="<?php echo e(__('Upload Image')); ?>" data-toggle="modal" data-target="#media_upload_modal">
                        <?php echo e(__('Upload Image')); ?>

                    </button>
                </div>
                <small><?php echo e(__('Recommended image size 150x150')); ?></small>
            </div>

            <div class="form-group col-md-4 mt-5">
                <label for="image"><?php echo e(get_static_option('passport_image_label')  ?? __('Passport Image')); ?></label>
                <div class="media-upload-btn-wrapper">
                    <div class="img-wrap">
                        <?php echo render_attachment_preview_for_admin($user_details->passport_image); ?>

                    </div>
                    <input type="hidden" name="passport_image" value="<?php echo e($user_details->passport_image); ?>">
                    <button type="button" class="btn btn-info media_upload_form_btn" data-btntitle="<?php echo e(__('Select Image')); ?>" data-modaltitle="<?php echo e(__('Upload Image')); ?>" data-toggle="modal" data-target="#media_upload_modal">
                        <?php echo e(__('Upload Image')); ?>

                    </button>
                </div>
                <small><?php echo e(__('Recommended image size 150x150')); ?></small>
            </div>

            </div>

            <div class="btn-wrapper">
                <button id="update" type="submit" class="boxed-btn reverse-color"><?php echo e(__('Save changes')); ?></button>
            </div>
        </form>
   </div>



    <?php if (isset($component)) { $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4 = $component; } ?>
<?php $component = $__env->getContainer()->make(Illuminate\View\AnonymousComponent::class, ['view' => 'components.media.markup','data' => ['userUpload' => true,'imageUploadRoute' => route('user.upload.media.file')]]); ?>
<?php $component->withName('media.markup'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php $component->withAttributes(['userUpload' => true,'imageUploadRoute' => \Illuminate\View\Compilers\BladeCompiler::sanitizeComponentAttribute(route('user.upload.media.file'))]); ?>
     <?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4)): ?>
<?php $component = $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4; ?>
<?php unset($__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4); ?>
<?php endif; ?>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('scripts'); ?>
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
    <?php if (isset($component)) { $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4 = $component; } ?>
<?php $component = $__env->getContainer()->make(Illuminate\View\AnonymousComponent::class, ['view' => 'components.media.js','data' => ['deleteRoute' => route('user.upload.media.file.delete'),'imgAltChangeRoute' => route('user.upload.media.file.alt.change'),'allImageLoadRoute' => route('user.upload.media.file.all')]]); ?>
<?php $component->withName('media.js'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php $component->withAttributes(['deleteRoute' => \Illuminate\View\Compilers\BladeCompiler::sanitizeComponentAttribute(route('user.upload.media.file.delete')),'imgAltChangeRoute' => \Illuminate\View\Compilers\BladeCompiler::sanitizeComponentAttribute(route('user.upload.media.file.alt.change')),'allImageLoadRoute' => \Illuminate\View\Compilers\BladeCompiler::sanitizeComponentAttribute(route('user.upload.media.file.all'))]); ?>
     <?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4)): ?>
<?php $component = $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4; ?>
<?php unset($__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4); ?>
<?php endif; ?>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('frontend.user.dashboard.user-master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /Users/xgenious/Desktop/xgenious/localhost/fundorex-with-api/@core/resources/views/frontend/user/dashboard/tax.blade.php ENDPATH**/ ?>
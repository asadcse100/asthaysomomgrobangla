<?php $__env->startSection('site-title'); ?>
    <?php echo e(__('New Gift')); ?>

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
    <link rel="stylesheet" href="<?php echo e(asset('assets/backend/css/summernote-bs4.css')); ?>">
    <link rel="stylesheet" href="<?php echo e(asset('assets/backend/css/bootstrap-tagsinput.css')); ?>">
    <link rel="stylesheet" href="<?php echo e(asset('assets/backend/css/flatpickr.min.css')); ?>">
<?php $__env->stopSection(); ?>

<?php $__env->startSection('section'); ?>
  <div class="card">
      <div class="card-body">
          <h5 class="modal-title"><?php echo e(__('Add new Cause Gift')); ?>

              <a class="btn btn-success pull-right btn-sm" href="<?php echo e(route('user.campaign.gift.all')); ?>"><?php echo e(__('Go Back')); ?></a>
          </h5>

          <form action="<?php echo e(route('user.campaign.gift.store')); ?>" method="post">
              <div class="modal-body">
                  <?php echo csrf_field(); ?>
                  <div class="form-group">
                      <label for="name"><?php echo e(__('Title')); ?></label>
                      <input type="text" class="form-control" name="title" placeholder="<?php echo e(__('title')); ?>">
                  </div>

                  <div class="form-group">
                      <label for="name"><?php echo e(__('Amount')); ?></label>
                      <input type="number" class="form-control" name="amount" placeholder="<?php echo e(__('Amount')); ?>">
                  </div>

                  <div class="iconbox-repeater-wrapper">
                      <div class="all-field-wrap">
                          <div class="form-group">
                              <label for="name"><?php echo e(__('Gift ')); ?></label>
                              <input type="text" class="form-control" name="gifts[]" placeholder="<?php echo e(__('Gift')); ?>">
                          </div>
                          <div class="action-wrap">
                              <span class="add"><i class="fa fa-plus"></i></span>
                              <span class="remove"><i class="fa fa-trash"></i></span>
                          </div>
                      </div>
                  </div>

                  <div class="form-group">
                      <label for="description"><?php echo e(__('Description')); ?></label>
                      <textarea name="description" class="form-control" cols="30" rows="4" placeholder="<?php echo e(__('Description')); ?>"></textarea>
                  </div>
                  <div class="row">
                      <div class="form-group col-lg-6">
                          <label for="status"><?php echo e(__('Status')); ?></label>
                          <select name="status" class="form-control" id="status">
                              <option value="publish"><?php echo e(__("Publish")); ?></option>
                              <option value="draft"><?php echo e(__("Draft")); ?></option>
                          </select>
                      </div>

                      <div class="form-group col-lg-6">
                          <label for="edit_designation"><?php echo e(__('Delivery Date')); ?></label>
                          <input type="text" class="form-control date-flat" name="delivery_date" placeholder="<?php echo e(__('Delivery Date')); ?>">
                      </div>

                      <div class="form-group col-lg-12">
                          <label for="image"><?php echo e(__('Image')); ?></label>
                          <div class="media-upload-btn-wrapper">
                              <div class="img-wrap"></div>
                              <input type="hidden" name="image">
                              <button type="button" class="btn btn-info media_upload_form_btn"
                                      data-btntitle="<?php echo e(__('Select Image')); ?>" data-modaltitle="<?php echo e(__('Upload Image')); ?>"
                                      data-toggle="modal" data-target="#media_upload_modal">
                                  <?php echo e(__('Upload Image')); ?>

                              </button>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="modal-footer">
                  <button id="submit" type="submit" class="btn btn-primary"><?php echo e(__('Submit')); ?></button>
              </div>
          </form>

      </div>
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
  <script src="<?php echo e(asset('assets/backend/js/summernote-bs4.js')); ?>"></script>
  <script src="<?php echo e(asset('assets/backend/js/bootstrap-tagsinput.js')); ?>"></script>
  <script src="<?php echo e(asset('assets/backend/js/flatpickr.js')); ?>"></script>
    <script>
        (function($){
            "use strict";
            $(document).ready(function () {

                //Date Picker
                flatpickr('.date-flat', {
                    enableTime: false,
                    dateFormat: "d-m-Y",
                });
                
                $(document).on('click','.mobile_nav',function(e){
                  e.preventDefault(); 
                   $(this).parent().toggleClass('show');
               });
               
                <?php if (isset($component)) { $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4 = $component; } ?>
<?php $component = $__env->getContainer()->make(Illuminate\View\AnonymousComponent::class, ['view' => 'components.btn.submit','data' => []]); ?>
<?php $component->withName('btn.submit'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php $component->withAttributes([]); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4)): ?>
<?php $component = $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4; ?>
<?php unset($__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4); ?>
<?php endif; ?>

                $('.summernote').summernote({
                    height: 400,   //set editable area's height
                    codemirror: { // codemirror options
                        theme: 'monokai'
                    },
                    callbacks: {
                        onChange: function(contents, $editable) {
                            $(this).prev('input').val(contents);
                        }
                    }
                });
            });
        })(jQuery);
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
  <?php if (isset($component)) { $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4 = $component; } ?>
<?php $component = $__env->getContainer()->make(Illuminate\View\AnonymousComponent::class, ['view' => 'components.repeater','data' => []]); ?>
<?php $component->withName('repeater'); ?>
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

<?php echo $__env->make('frontend.user.dashboard.user-master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/xgenxchi/public_html/laravel/fundorex/@core/resources/views/frontend/user/dashboard/campaigns/cause-gifts/new-gift.blade.php ENDPATH**/ ?>
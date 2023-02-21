<?php $__env->startSection('site-title'); ?>
    <?php echo e(__('Page Settings')); ?>

<?php $__env->stopSection(); ?>
<?php $__env->startSection('style'); ?>
    <link rel="stylesheet" href="<?php echo e(asset('assets/backend/css/bootstrap-tagsinput.css')); ?>">
<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>
    <div class="col-lg-12 col-ml-12 padding-bottom-30">
        <div class="row">
            <div class="col-12 mt-5">
                <?php echo $__env->make('backend.partials.message', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                <div class="card">
                    <div class="card-body">
                        <h4 class="header-title"><?php echo e(__("Page Name & Slug Settings")); ?></h4>
                        <?php echo $__env->make('backend.partials.error', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                        <form action="<?php echo e(route('admin.general.page.settings')); ?>" method="POST" enctype="multipart/form-data">
                            <?php echo csrf_field(); ?>
                            <div class="row">
                                <div class="col-lg-6">
                                    <?php
                                    $all_page_slug_settings = [
                                        'about_page',
                                        'team_page',
                                        'faq_page',
                                        'blog_page',
                                        'contact_page',
                                        'career_with_us_page',
                                        'events_page',
                                        'donation_page',
                                        'testimonial_page',
                                        'image_gallery_page',
                                        'donor_page',
                                        'success_story_page',
                                        'support_ticket_page',
                                    ];
                                    ?>
                                  <div class="row">
                                      <?php $__currentLoopData = $all_page_slug_settings; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $slug_field): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                          <div class="col-lg-6">
                                              <div class="from-group margin-bottom-30">
                                                  <label for="<?php echo e($slug_field); ?>_slug"><?php echo e(ucfirst(str_replace('_',' ',$slug_field))); ?> <?php echo e(__('slug')); ?></label>
                                                  <input type="text" class="form-control" value="<?php echo e(get_static_option($slug_field.'_slug')); ?>" name="<?php echo e($slug_field.'_slug'); ?>" placeholder="<?php echo e(__('Slug')); ?>" >
                                                  <small><?php echo e(__('slug example:')); ?> <?php echo e(str_replace(['_','-page'],['-',''],$slug_field)); ?></small>
                                              </div>
                                          </div>
                                      <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                  </div>
                                </div>
                                <div class="col-lg-6">

                                    <div class="tab-content margin-top-30" id="nav-tabContent">

                                                <div class="accordion-wrapper">
                                                    <div id="accordion">
                                                        <?php $__currentLoopData = $all_page_slug_settings; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $slug_field): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                        <div class="card">
                                                            <div class="card-header" >
                                                                <h5 class="mb-0">
                                                                    <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#<?php echo e($slug_field.'_content'); ?>" aria-expanded="false" >
                                                                        <span class="page-title"><?php echo e(get_static_option($slug_field.'_name') ?? ucfirst(str_replace(['_','-page'],[' ',''],$slug_field))); ?></span>
                                                                    </button>
                                                                </h5>
                                                            </div>
                                                            <div id="<?php echo e($slug_field.'_content'); ?>" class="collapse"  data-parent="#accordion">
                                                                <div class="card-body">
                                                                    <div class="from-group">
                                                                        <label for="<?php echo e($slug_field); ?>_name"><?php echo e(__('Name')); ?></label>
                                                                        <input type="text" class="form-control" name="<?php echo e($slug_field); ?>_name" value="<?php echo e(get_static_option($slug_field.'_name')); ?>"  placeholder="<?php echo e(__('Name')); ?>" >
                                                                    </div>
                                                                    <div class="form-group margin-top-20">
                                                                        <label for="<?php echo e($slug_field); ?>_meta_tags"><?php echo e(__('Meta Tags')); ?></label>
                                                                        <input type="text" name="<?php echo e($slug_field); ?>_meta_tags"  class="form-control" data-role="tagsinput" value="<?php echo e(get_static_option($slug_field.'_meta_tags')); ?>">
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label for="<?php echo e($slug_field); ?>_meta_description"><?php echo e(__('Meta Description')); ?></label>
                                                                        <textarea name="<?php echo e($slug_field); ?>_meta_description"  class="form-control" rows="5" ><?php echo e(get_static_option($slug_field.'_meta_description')); ?></textarea>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                   <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                            </div>
                                        </div>
                                    </div>
                                </div>
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
    <script src="<?php echo e(asset('assets/backend/js/bootstrap-tagsinput.js')); ?>"></script>
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
<?php $__env->stopSection(); ?>

<?php echo $__env->make('backend.admin-master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/xgenxchi/public_html/laravel/fundorex/@core/resources/views/backend/general-settings/page-settings.blade.php ENDPATH**/ ?>
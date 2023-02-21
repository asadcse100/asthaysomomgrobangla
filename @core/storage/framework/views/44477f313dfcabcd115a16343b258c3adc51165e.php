<?php $__env->startSection('site-title'); ?>
    <?php echo e(__('Section Manage')); ?>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>

    <div class="col-lg-12 col-ml-12 padding-bottom-30">
        <div class="row">
            <div class="col-lg-12">
                <div class="margin-top-40"></div>
                <?php echo $__env->make('backend/partials/message', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                <?php echo $__env->make('backend/partials/error', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
            </div>
            <div class="col-lg-12 mt-t">
                <div class="card">
                    <div class="card-body">
                        <h4 class="header-title"><?php echo e(__('Home Page Section Manage')); ?></h4>
                        <form action="<?php echo e(route('admin.home.four.five.six.section.manage')); ?>" method="post" enctype="multipart/form-data">
                            <?php echo csrf_field(); ?>

                            <?php
                            if($home_variant_number == '04')
                               $section_names = ['header_area_04','category_area_04','feature_area_04','success_story_area_04','aboutus_area_04','counterup_area_04','events_area_04','recent_cause_area_04','blog_area_04','client_area_04'];
                            elseif($home_variant_number == '05')
                                $section_names = ['header_slider_area_05','rise_area_05','feature_area_05','category_area_05','success_story_area_05','counterup_area_05','recent_cause_area_05','events_area_05','blog_area_05','client_area_05'];
                            elseif($home_variant_number == '06')
                                $section_names = ['header_slider_area_06','rise_area_06','feature_area_06','category_area_06','recent_cause_area_06','success_story_area_06','aboutus_area_06','counterup_area_06','events_area_06','client_area_06'];
                            ?>
                            <div class="row">
                                <?php $__currentLoopData = $section_names; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $section_name): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <div class="col-lg-4">
                                    <div class="form-group">
                                        <label for="home_page_<?php echo e($section_name); ?>_section_status"><strong><?php echo e(__(Str::ucfirst(str_replace('_',' ',$section_name)).' Section Show/Hide')); ?></strong></label>
                                        <label class="switch">
                                            <input type="checkbox" name="home_page_<?php echo e($section_name); ?>_section_status"  <?php if(!empty(get_static_option('home_page_'.$section_name.'_section_status'))): ?> checked <?php endif; ?> id="home_page_<?php echo e($section_name); ?>_section_status">
                                            <span class="slider"></span>
                                        </label>
                                    </div>
                                </div>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            </div>
                            <button type="submit" id="update" class="btn btn-primary mt-4 pr-4 pl-4"><?php echo e(__('Update Settings')); ?></button>
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
        $(document).ready(function () {
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
        })(jQuery);
    </script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('backend.admin-master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/xgenxchi/public_html/laravel/fundorex/@core/resources/views/backend/pages/section-manage-home-04-05-06/section-manage.blade.php ENDPATH**/ ?>
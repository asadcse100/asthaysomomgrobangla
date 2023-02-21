<?php $__env->startSection('site-title'); ?>
    <?php echo e(__('Navbar Settings')); ?>

<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>
    <div class="col-lg-12 col-ml-12 padding-bottom-30">
        <div class="row">
            <div class="col-lg-12">
                <div class="margin-top-40"></div>
                <?php echo $__env->make('backend/partials/message', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                <?php echo $__env->make('backend.partials.error', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
            </div>
            <div class="col-lg-12 mt-5">
                <div class="card">
                    <div class="card-body">
                        <h4 class="header-title"><?php echo e(__('Navbar Settings')); ?></h4>
                        <form action="<?php echo e(route('admin.navbar.settings')); ?>" method="post" enctype="multipart/form-data">
                            <?php echo csrf_field(); ?>
                            <div class="form-group">
                                <label for="home_page_navbar_button_status"><strong><?php echo e(__('Button Show/Hide')); ?></strong></label>
                                <label class="switch">
                                    <input type="checkbox" name="home_page_navbar_button_status"  <?php if(!empty(get_static_option('home_page_navbar_button_status'))): ?> checked <?php endif; ?> >
                                    <span class="slider"></span>
                                </label>
                            </div>
                            <div class="form-group">
                                <label for="home_page_navbar_button_status"><strong><?php echo e(__('Search Show/Hide')); ?></strong></label>
                                <label class="switch">
                                    <input type="checkbox" name="home_page_navbar_search_show_hide"  <?php if(!empty(get_static_option('home_page_navbar_search_show_hide'))): ?> checked <?php endif; ?> >
                                    <span class="slider"></span>
                                </label>
                            </div>

                            <div class="tab-content margin-top-20" id="nav-tabContent">

                            <div class="form-group">
                                <label for="home_page_navbar_button_subtitle"><?php echo e(__('Button Subtitle')); ?></label>
                                <input type="text" name="home_page_navbar_button_subtitle" class="form-control" value="<?php echo e(get_static_option('home_page_navbar_button_subtitle')); ?>">
                            </div>
                            <div class="form-group">
                                <label for="home_page_navbar_button_title"><?php echo e(__('Button Title')); ?></label>
                                <input type="text" name="home_page_navbar_button_title" class="form-control" value="<?php echo e(get_static_option('home_page_navbar_button_title')); ?>">
                            </div>

                            </div>
                            <div class="form-group">
                                <label for="home_page_navbar_button_url"><?php echo e(__('Button URL')); ?></label>
                                <input type="text" name="home_page_navbar_button_url" class="form-control" value="<?php echo e(get_static_option('home_page_navbar_button_url')); ?>">
                                <small class="text-danger"><?php echo e(__('** If you dont have any custom url then please leave this field blank or provide a valid URL **')); ?></small>
                            </div>
                            <div class="form-group">
                                <label for="home_page_navbar_button_icon" class="d-block"><?php echo e(__('Icon')); ?></label>
                                <div class="btn-group ">
                                    <button type="button" class="btn btn-primary iconpicker-component">
                                        <i class="<?php echo e(get_static_option('home_page_navbar_button_icon')); ?>"></i>
                                    </button>
                                    <button type="button" class="icp icp-dd btn btn-primary dropdown-toggle"
                                            data-selected="<?php echo e(get_static_option('home_page_navbar_button_icon')); ?>" data-toggle="dropdown">
                                        <span class="caret"></span>
                                        <span class="sr-only">Toggle Dropdown</span>
                                    </button>
                                    <div class="dropdown-menu"></div>
                                </div>
                                <input type="hidden" class="form-control" value="<?php echo e(get_static_option('home_page_navbar_button_icon')); ?>" name="home_page_navbar_button_icon">
                            </div>
                            <button id="update" type="submit" class="btn btn-primary mt-4 pr-4 pl-4"><?php echo e(__('Update Settings')); ?></button>
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
                $('.icp-dd').iconpicker();
                $('.icp-dd').on('iconpickerSelected', function (e) {
                    var selectedIcon = e.iconpickerValue;
                    $(this).parent().parent().children('input').val(selectedIcon);
                });
            });
        })(jQuery)
    </script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('backend.admin-master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /Users/xgenious/Desktop/xgenious/localhost/fundorex-last-server-file-with-api/@core/resources/views/backend/pages/navbar-settings.blade.php ENDPATH**/ ?>
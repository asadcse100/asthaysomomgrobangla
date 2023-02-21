<?php $__env->startSection('site-title'); ?>
    <?php echo e(__('404 Error Page Settings')); ?>

<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>
    <div class="col-lg-12 col-ml-12 padding-bottom-30">
        <div class="row">
            <div class="col-lg-12">
                <div class="margin-top-40"></div>
                <?php echo $__env->make('backend/partials/message', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                <?php if($errors->any()): ?>
                    <div class="alert alert-danger">
                        <ul>
                            <?php $__currentLoopData = $errors->all(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $error): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <li><?php echo e($error); ?></li>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </ul>
                    </div>
                <?php endif; ?>
            </div>
            <div class="col-lg-12 mt-t">
                <div class="card">
                    <div class="card-body">
                        <h4 class="header-title"><?php echo e(__('404 Error Pagte Settings')); ?></h4>
                        <form action="<?php echo e(route('admin.404.page.settings')); ?>" method="post" enctype="multipart/form-data">
                            <?php echo csrf_field(); ?>


                                    <div class="form-group">
                                        <label for="error_404_page_title"><?php echo e(__('Title')); ?></label>
                                        <input type="text" name="error_404_page_title" class="form-control" value="<?php echo e(get_static_option('error_404_page_title')); ?>" id="error_404_page_title">
                                    </div>
                                    <div class="form-group">
                                        <label for="error_404_page_subtitle"><?php echo e(__('Subtitle')); ?></label>
                                        <input type="text" name="error_404_page_subtitle" class="form-control" value="<?php echo e(get_static_option('error_404_page_subtitle')); ?>" id="error_404_page_subtitle">
                                    </div>
                                    <div class="form-group">
                                        <label for="error_404_page_paragraph"><?php echo e(__('Paragraph')); ?></label>
                                        <textarea name="error_404_page_paragraph" class="form-control" id="error_404_page_paragraph" cols="30" rows="4"><?php echo e(get_static_option('error_404_page_paragraph')); ?></textarea>
                                    </div>
                                    <div class="form-group">
                                        <label for="error_404_page_button_text"><?php echo e(__('Button Text')); ?></label>
                                        <input type="text" name="error_404_page_button_text" class="form-control" value="<?php echo e(get_static_option('error_404_page_button_text')); ?>" id="error_404_page_button_text">
                                    </div>

                            <button type="submit" class="btn btn-primary mt-4 pr-4 pl-4"><?php echo e(__('Update Settings')); ?></button>
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

                var imgSelect = $('.img-select');
                var id = $('#header_type').val();
                imgSelect.removeClass('selected');
                $('img[data-header_type="'+id+'"]').parent().parent().addClass('selected');

                $(document).on('click','.img-select img',function (e) {
                    e.preventDefault();
                    imgSelect.removeClass('selected');
                    $(this).parent().parent().addClass('selected').siblings();
                    $('#header_type').val($(this).data('header_type'));
                });

            })

        })(jQuery);
    </script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('backend.admin-master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/xgenxchi/public_html/laravel/fundorex/@core/resources/views/backend/pages/404/404-page-settings.blade.php ENDPATH**/ ?>
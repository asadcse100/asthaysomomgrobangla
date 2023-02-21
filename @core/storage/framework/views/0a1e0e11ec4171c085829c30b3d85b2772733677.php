<?php $__env->startSection('site-title'); ?>
    <?php echo e(get_static_option('contact_page_name')); ?>

<?php $__env->stopSection(); ?>
<?php $__env->startSection('page-title'); ?>
    <?php echo e(get_static_option('contact_page_name')); ?>

<?php $__env->stopSection(); ?>
<?php $__env->startSection('page-meta-data'); ?>
    <meta name="description" content="<?php echo e(get_static_option('contact_page_meta_description')); ?>">
    <meta name="tags" content="<?php echo e(get_static_option('contact_page_meta_tags')); ?>">
<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>
    <?php if(!empty(get_static_option('contact_page_contact_info_section_status'))): ?>
        <div class="inner-contact-section padding-top-120 padding-bottom-120">
            <div class="container">
                <div class="row">
                    <?php $a = 1;?>
                    <?php $__currentLoopData = $all_contact_info; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $data): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <div class="col-md-6 col-lg-3">
                            <div class="single-contact-item">
                                <div class="icon style-0<?php echo e($a); ?>">
                                    <i class="<?php echo e($data->icon); ?>"></i>
                                </div>
                                <div class="content">
                                    <span class="title"><?php echo e($data->title); ?></span>
                                    <?php
                                        $info_details = !empty($data->description) ? explode("\n",$data->description) : [];
                                    ?>
                                    <?php $__currentLoopData = $info_details; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <p class="details"><?php echo e($item); ?></p>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                </div>
                            </div>
                        </div>
                        <?php if($a == 4){$a =1;}else{$a++;} ?>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                </div>
            </div>

        </div>
    <?php endif; ?>
    <?php if(!empty(get_static_option('contact_page_contact_section_status'))): ?>
        <div class="contact-section padding-bottom-120">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="contact-info">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="section-title">
                                        <h4 class="title"><?php echo e(get_static_option('contact_page_form_section_title')); ?></h4>
                                    </div>
                                    <?php echo $__env->make('backend.partials.message', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                                    <?php if($errors->any()): ?>
                                        <ul class="alert alert-danger">
                                            <?php $__currentLoopData = $errors->all(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $error): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                <li><?php echo e($error); ?></li>
                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                        </ul>
                                    <?php endif; ?>
                                </div>
                            </div>
                            <form action="<?php echo e(route('frontend.contact.message')); ?>" method="POST"
                                  class="contact-page-form style-01" id="contact_us_form">
                                <input type="hidden" name="captcha_token" id="gcaptcha_token">
                                <?php echo csrf_field(); ?>
                                <div class="error-message margin-bottom-20"></div>
                                <?php echo render_form_field_for_frontend(get_static_option('contact_page_contact_form_fields')); ?>

                                <div class="btn-wrapper">
                                    <button id="contact_us_submit_btn" type="submit" class="boxed-btn reverse-color"><?php echo e(get_static_option('contact_page_form_submit_btn_text')); ?></button>
                                </div>

                            </form>
                        </div>
                    </div>


                    <div class="col-md-6 offset-lg-1 col-lg-5">
                        <div class="map-area mt-5 pt-5">
                            <div class="container-fluid p-0">
                                <div class="contact_map">
                                    <?php echo render_embed_google_map(get_static_option('contact_page_map_section_location'),get_static_option('contact_page_map_section_zoom')); ?>

                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    <?php endif; ?>
<?php $__env->stopSection(); ?>
<?php $__env->startSection('scripts'); ?>
    <script>
        (function ($) {
            "use strict";
            $(document).ready(function () {
                function removeTags(str) {
                    if ((str === null) || (str === '')) {
                        return false;
                    }
                    str = str.toString();
                    return str.replace(/(<([^>]+)>)/ig, '');
                }

                $(document).on('click', '#contact_us_submit_btn', function (e) {
                    e.preventDefault();
                    var el = $(this);
                    var myForm = document.getElementById('contact_us_form');
                    var formData = new FormData(myForm);
                    $.ajax({
                        type: "POST",
                        url: "<?php echo e(route('frontend.contact.message')); ?>",
                        data: formData,
                        processData: false,
                        contentType: false,
                        beforeSend: function () {
                            el.html('<i class="fas fa-spinner fa-spin mr-1"></i> <?php echo e(__("Submitting")); ?>');
                        },
                        success: function (data) {
                            var errMsgContainer = $('#contact_us_form').find('.error-message');
                            errMsgContainer.html('');
                            errMsgContainer.html('<div class="alert alert-' + data.type + '">' + removeTags(data.msg) + '</div>');
                            $('#contact_us_form').find('.form-control').val('');
                            el.text('<?php echo e(__("Submit")); ?>');
                        },
                        error: function (data) {
                            var error = data.responseJSON;
                            var errMsgContainer = $('#contact_us_form').find('.error-message');
                            errMsgContainer.html('<div class="alert alert-danger"></div>');
                            $.each(error.errors, function (index, value) {
                                errMsgContainer.find('.alert').append('<span>' + removeTags(value) + '</span>');
                            });
                            el.text('<?php echo e(__("Submit")); ?>');
                        }
                    });
                });
            });
        })(jQuery);
    </script>

    <?php if(!empty(get_static_option('site_google_captcha_v3_site_key'))): ?>
        <script src="https://www.google.com/recaptcha/api.js?render=<?php echo e(get_static_option('site_google_captcha_v3_site_key')); ?>"></script>
        <script>
            grecaptcha.ready(function () {
                grecaptcha.execute("<?php echo e(get_static_option('site_google_captcha_v3_site_key')); ?>", {action: 'homepage'}).then(function (token) {
                    document.getElementById('gcaptcha_token').value = token;
                });
            });
        </script>
    <?php endif; ?>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('frontend.frontend-page-master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/xgenxchi/public_html/laravel/fundorex/@core/resources/views/frontend/pages/contact-page.blade.php ENDPATH**/ ?>
<?php $__env->startSection('style'); ?>
    <link rel="stylesheet" href="<?php echo e(asset('assets/backend/css/nice-select.css')); ?>">
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

<?php $__env->startSection('site-title'); ?>
    <?php echo e(__('Header Area')); ?>

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
                        <h4 class="header-title"><?php echo e(__('Header Area Settings')); ?></h4>
                        <form action="<?php echo e(route('admin.home.six.header.area')); ?>" method="post"
                              enctype="multipart/form-data">
                            <?php echo csrf_field(); ?>


                            <div class="form-group mt-3">
                                <label for="home_page_04_idiology_area_item_image mt-3"><?php echo e(__('Background Shade')); ?></label>
                                <?php $signature_image_upload_btn_label = 'Upload Background Shade'; ?>
                                <div class="media-upload-btn-wrapper">
                                    <div class="img-wrap">
                                        <?php
                                            $signature_img = get_attachment_image_by_id(get_static_option('home_page_06_header_area_bg_image'),null,false);
                                        ?>
                                        <?php if(!empty($signature_img)): ?>
                                            <div class="attachment-preview">
                                                <div class="thumbnail">
                                                    <div class="centered">
                                                        <img class="avatar user-thumb"
                                                             src="<?php echo e($signature_img['img_url']); ?>">
                                                    </div>
                                                </div>
                                            </div>
                                            <?php $signature_image_upload_btn_label = 'Change BG Image'; ?>
                                        <?php endif; ?>
                                    </div>
                                    <input type="hidden" name="home_page_06_header_area_bg_image"
                                           value="<?php echo e(get_static_option('home_page_06_header_area_bg_image')); ?>">
                                    <button type="button" class="btn btn-info media_upload_form_btn"
                                            data-btntitle="<?php echo e(__('Select Image')); ?>"
                                            data-modaltitle="<?php echo e(__('Upload Image')); ?>"
                                            data-imgid="<?php echo e(get_static_option('home_page_06_header_area_bg_image')); ?>" data-toggle="modal"
                                            data-target="#media_upload_modal">
                                        <?php echo e(__($signature_image_upload_btn_label)); ?>

                                    </button>
                                </div>
                                <small><?php echo e(__('recommended image size is 1920 x 980 pixel')); ?></small>
                            </div>



                            <?php
                                $all_image_fields =  get_static_option('home_page_06_header_area_image');
                                $all_image_fields = !empty($all_image_fields) ? unserialize($all_image_fields,['class' => false]) : [''];
                            ?>

                        <?php $__currentLoopData = $all_image_fields; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $index => $image_field): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <div class="iconbox-repeater-wrapper">
                                    <div class="all-field-wrap">

                                        <div class="tab-content margin-top-30" id="myTabContent">
                                            <?php
                                                $all_title_fields = get_static_option('home_page_06_header_area_title');
                                                $all_title_fields = !empty($all_title_fields) ? unserialize($all_title_fields) : [''];

                                                $all_sub_fields = get_static_option('home_page_06_header_area_subtitle');
                                                $all_sub_fields = !empty($all_sub_fields) ? unserialize($all_sub_fields) : [''];

                                                $all_donate_button_title_fields = get_static_option('home_page_06_header_area_donate_button_title');
                                                $all_donate_button_title_fields = !empty($all_donate_button_title_fields) ? unserialize($all_donate_button_title_fields) : [''];

                                                $all_donate_button_title_url_fields = get_static_option('home_page_06_header_area_donate_button_url');
                                                $all_donate_button_title_url_fields = !empty($all_donate_button_title_url_fields) ? unserialize($all_donate_button_title_url_fields) : [''];

                                                $all_read_more_button_title_fields = get_static_option('home_page_06_header_area_read_more_button_title');
                                                $all_read_more_button_title_fields = !empty($all_read_more_button_title_fields) ? unserialize($all_read_more_button_title_fields) : [''];

                                                $all_read_more_button_title_url_fields =  get_static_option('home_page_06_header_area_read_more_button_url');
                                                $all_read_more_button_title_url_fields = !empty($all_read_more_button_title_url_fields) ? unserialize($all_read_more_button_title_url_fields) : ['#'];
                                            ?>
                                            <div class="form-group">
                                                <label><?php echo e(__('Title')); ?></label>
                                                <input type="text" name="home_page_06_header_area_title[]" class="form-control" value="<?php echo e($all_title_fields[$index] ?? ''); ?>">
                                            </div>
                                            <div class="form-group">
                                                <label ><?php echo e(__('Subtitle')); ?></label>
                                                <input type="text" name="home_page_06_header_area_subtitle[]" class="form-control" value="<?php echo e($all_sub_fields[$index] ?? ''); ?>">
                                            </div>

                                            <div class="form-group">
                                                <label ><?php echo e(__('Donate Button Title')); ?></label>
                                                <input type="text" name="home_page_06_header_area_donate_button_title[]" class="form-control"value="<?php echo e($all_donate_button_title_fields[$index] ?? ''); ?>">
                                            </div>

                                            <div class="form-group">
                                                <label><?php echo e(__('Donate Button Url')); ?></label>
                                                <input type="text" name="home_page_06_header_area_donate_button_url[]" class="form-control donation_button_url" value="<?php echo e($all_donate_button_title_url_fields[$index] ?? ''); ?>">
                                            </div>

                                            <div class="form-group">
                                                <label ><?php echo e(__('Read More Button Title')); ?></label>
                                                <input type="text" name="home_page_06_header_area_read_more_button_title[]" class="form-control" value="<?php echo e($all_read_more_button_title_fields[$index] ?? ''); ?>">
                                            </div>

                                            <div class="form-group">
                                                <label><?php echo e(__('Read More Button Url')); ?></label>
                                                <input type="text" name="home_page_06_header_area_read_more_button_url[]" class="form-control donation_read_more_url" value="<?php echo e($all_read_more_button_title_url_fields[$index] ?? ''); ?>">
                                            </div>

                                            <div class="form-group">
                                                <label><?php echo e(__('Select Cause')); ?></label>
                                                <select class="form-control nice-select wide" name="home_page_06_header_area_donation[]" id="donation_select">
                                                    <?php $__currentLoopData = $all_donations; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $donation): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                    <option value="<?php echo e($donation->id); ?>"><?php echo e($donation->title); ?></option>
                                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                                </select>
                                            </div>


                                            <div class="form-group mt-3">
                                                <label for="home_page_04_idiology_area_item_image mt-3"><?php echo e(__(' Image')); ?></label>
                                                <?php $signature_image_upload_btn_label = 'Upload Image'; ?>
                                                <div class="media-upload-btn-wrapper">
                                                    <div class="img-wrap">
                                                        <?php
                                                            $signature_img = get_attachment_image_by_id($image_field,null,false);
                                                        ?>
                                                        <?php if(!empty($signature_img)): ?>
                                                            <div class="attachment-preview">
                                                                <div class="thumbnail">
                                                                    <div class="centered">
                                                                        <img class="avatar user-thumb"
                                                                             src="<?php echo e($signature_img['img_url']); ?>">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <?php $signature_image_upload_btn_label = 'Change Image'; ?>
                                                        <?php endif; ?>
                                                    </div>
                                                    <input type="hidden" name="home_page_06_header_area_image[]"
                                                           value="<?php echo e($image_field); ?>">
                                                    <button type="button" class="btn btn-info media_upload_form_btn"
                                                            data-btntitle="<?php echo e(__('Select Image')); ?>"
                                                            data-modaltitle="<?php echo e(__('Upload Image')); ?>"
                                                            data-imgid="<?php echo e($image_field); ?>" data-toggle="modal"
                                                            data-target="#media_upload_modal">
                                                        <?php echo e(__($signature_image_upload_btn_label)); ?>

                                                    </button>
                                                </div>
                                                <small><?php echo e(__('recommended image size is 1920 x 980 pixel')); ?></small>
                                            </div>


                                        </div>
                                        <div class="action-wrap">
                                            <span class="add"><i class="ti-plus"></i></span>
                                            <span class="remove"><i class="ti-trash"></i></span>
                                        </div>
                                    </div>
                                </div>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            <button id="update" type="submit" class="btn btn-primary mt-4 pr-4 pl-4"><?php echo e(__('Update Settings')); ?></button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <?php echo $__env->make('backend.partials.media-upload.media-upload-markup', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('script'); ?>
    <script src="<?php echo e(asset('assets/backend/js/jquery.nice-select.min.js')); ?>"></script>
    <script src="<?php echo e(asset('assets/backend/js/dropzone.js')); ?>"></script>
    <script src="<?php echo e(asset('assets/backend/js/summernote-bs4.js')); ?>"></script>
    <?php echo $__env->make('backend.partials.media-upload.media-js', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <script>
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

            // $(document).on('change','#donation_select',function(){
            //     var donationId = $(this).val();
            //     var PaymentPageUrl = $('#donation_select option[value="'+donationId+'"]').data('url');
            //     var singlePageUrl = $('#donation_select option[value="'+donationId+'"]').data('singleurl');
            //     $('.donation_button_url').val(PaymentPageUrl);
            //     $('.donation_read_more_url').val(singlePageUrl);
            //
            // })

            var $selector = $('.nice-select');
            if($selector.length > 0){
                $selector.niceSelect();
            }
        });
    </script>

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
    <?php if (isset($component)) { $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4 = $component; } ?>
<?php $component = $__env->getContainer()->make(Illuminate\View\AnonymousComponent::class, ['view' => 'components.icon-picker-activate-js','data' => []]); ?>
<?php $component->withName('icon-picker-activate-js'); ?>
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

<?php echo $__env->make('backend.admin-master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /Users/xgenious/Desktop/xgenious/localhost/fundorex-last-server-file-with-api/@core/resources/views/backend/pages/home/home-06/header-area.blade.php ENDPATH**/ ?>
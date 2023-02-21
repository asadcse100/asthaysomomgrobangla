<div class="media-upload-btn-wrapper">
    <div class="img-wrap">
        <?php
            $image = get_attachment_image_by_id(get_static_option(($value)?? ''),null,true);
            $image_btn_label = __('Upload Image');
        ?>
        <?php if(!empty($image)): ?>
            <div class="attachment-preview">
                <div class="thumbnail">
                    <div class="centered">
                        <img class="avatar user-thumb" src="<?php echo e($image['img_url']); ?>" alt="">
                    </div>
                </div>
            </div>
            <?php  $image_btn_label =__( 'Change Image'); ?>
        <?php endif; ?>
    </div>
    <input type="hidden" id="<?php echo e($id); ?>" name="<?php echo e($name); ?>" value="<?php echo e(get_static_option(($value)?? '')); ?>">
    <button type="button" class="btn btn-info media_upload_form_btn" data-btntitle="<?php echo e(__('Select Image')); ?>" data-modaltitle="<?php echo e(__('Upload Image')); ?>" data-toggle="modal" data-target="#media_upload_modal">
        <?php echo e(__($image_btn_label)); ?>

    </button>
</div>
<?php /**PATH /home/xgenxchi/public_html/laravel/fundorex/@core/resources/views/components/image.blade.php ENDPATH**/ ?>
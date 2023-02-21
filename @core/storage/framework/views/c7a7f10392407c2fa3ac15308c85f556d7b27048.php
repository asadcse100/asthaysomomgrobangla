<div class="single-donation-category-item"
        <?php echo render_background_image_markup_by_attachment_id($image,'grid'); ?>

>
    <a href="<?php echo e(route('frontend.donations.category',['id' => $id,'any' => Str::slug($title) ?? '' ])); ?>">

        <div class="hover-content">
            <h3 class="title"><?php echo e($title); ?> <span class="count">(<?php echo e($count); ?>)</span>
            </h3>
            <p class="description"><?php echo e($description); ?></p>
        </div>
    </a>
</div><?php /**PATH /home/xgenxchi/public_html/laravel/fundorex/@core/resources/views/components/frontend/donation/category.blade.php ENDPATH**/ ?>
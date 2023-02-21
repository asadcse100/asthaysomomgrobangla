<div class="team-single-item">
    <div class="thumb">
        <?php echo render_image_markup_by_attachment_id($image); ?>

        <div class="content style-<?php echo e($index); ?>">
            <h4 class="title"><?php echo e($name); ?> </h4>
            <div class="social-link">
                <ul>
                    <?php if(!empty($iconone) && !empty($icononeurl)): ?>
                        <li><a href="<?php echo e($icononeurl); ?>"><i class="<?php echo e($iconone); ?>"></i></a></li>
                    <?php endif; ?>
                    <?php if(!empty($icontwo) && !empty($icontwourl)): ?>
                        <li><a href="<?php echo e($icontwourl); ?>"><i class="<?php echo e($icontwo); ?>"></i></a></li>
                    <?php endif; ?>
                    <?php if(!empty($iconthree) && !empty($iconthreeurl)): ?>
                        <li><a href="<?php echo e($iconthreeurl); ?>"><i class="<?php echo e($iconthree); ?>"></i></a></li>
                    <?php endif; ?>
                </ul>
            </div>
        </div>
    </div>
</div><?php /**PATH /home/xgenxchi/public_html/laravel/fundorex/@core/resources/views/components/frontend/team/grid.blade.php ENDPATH**/ ?>
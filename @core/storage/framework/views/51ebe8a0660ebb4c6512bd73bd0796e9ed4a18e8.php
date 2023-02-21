<div class="single-event-slider-wrap">
    <div class="events-single-item bg-image margin-bottom-30"
         style="background-image: url(<?php echo e(asset('assets/frontend/img/bg/event-item-bg.png')); ?>)"
    >
        <div class="thumb">
            <a href="<?php echo e(route('frontend.events.single',$slug)); ?>">
            <div class="bg-image" <?php echo render_background_image_markup_by_attachment_id($image); ?>>
                <div class="post-time">
                    <h6 class="title"><?php echo e(date('d',strtotime($date))); ?></h6>
                    <span><?php echo e(date('M',strtotime($date))); ?></span>
                </div>
            </div>
            </a>
        </div>
        <div class="content-wrapper">
            <div class="content">
                <h2 class="title"><a href="<?php echo e(route('frontend.events.single',$slug)); ?>"><?php echo e($title); ?></a></h2>
                <ul class="info-items-03">
                    <li><i class="far fa-clock"></i> <?php echo e($time); ?></li>
                    <li><i class="fas fa-map-marker-alt"></i> <?php echo e($venuelocation); ?></li>
                </ul>
                <div class="events-btn-wrapper">
                    <a href="<?php echo e(route('frontend.events.single',$slug)); ?>" class="book-btn"><?php echo e($buttontext); ?></a>
                    <span class="free-btn"><?php echo e($cost ? amount_with_currency_symbol($cost) : __('Free')); ?></span>
                </div>
            </div>
        </div>
    </div>
</div><?php /**PATH /home/xgenxchi/public_html/laravel/fundorex/@core/resources/views/components/frontend/event/grid.blade.php ENDPATH**/ ?>
<div class="search navbar-search position-relative">
    <div class="search-open">
        <i class="las la-search icon"></i>
    </div>
    <div class="search-bar">
        <form class="menu-search-form" action="<?php echo e(route('frontend.donation.search')); ?>">
            <div class="search-close"> <i class="las la-times"></i> </div>
            <input class="item-search" name="search" id="search" type="text" placeholder="<?php echo e(__('Search Here.....')); ?>">
            <button type="submit"><?php echo e(__('Search')); ?></button>
        </form>
    </div>
</div><?php /**PATH /Users/xgenious/Desktop/xgenious/localhost/fundorex-with-api/@core/resources/views/components/frontend/search-popup.blade.php ENDPATH**/ ?>
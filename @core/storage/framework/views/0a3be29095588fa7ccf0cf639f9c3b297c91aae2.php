$(document).on('click','#search',function () {
    $(this).addClass("disabled")
    $(this).html('<i class="fas fa-spinner fa-spin mr-1"></i> <?php echo e(__("Searching..")); ?>');
});<?php /**PATH /Users/xgenious/Desktop/xgenious/localhost/fundorex-last-server-file-with-api/@core/resources/views/components/btn/search.blade.php ENDPATH**/ ?>
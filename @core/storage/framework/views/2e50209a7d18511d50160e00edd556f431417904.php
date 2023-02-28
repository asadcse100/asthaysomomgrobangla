<script>
    $('.icp-dd').iconpicker();
    $('body').on('iconpickerSelected','.icp-dd', function (e) {
        var selectedIcon = e.iconpickerValue;
        $(this).parent().parent().children('input').val(selectedIcon);
        $('body .dropdown-menu.iconpicker-container').removeClass('show');
    });
</script><?php /**PATH J:\Server\htdocs\asthaysomomgrobangla\@core\resources\views/components/icon-picker-activate-js.blade.php ENDPATH**/ ?>
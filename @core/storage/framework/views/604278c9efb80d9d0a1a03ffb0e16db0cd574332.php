<!doctype html>
<html class="no-js" lang="<?php echo e(get_default_language()); ?>"  dir="<?php echo e(get_default_language_direction()); ?>">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>
        <?php echo e(get_static_option('site_title')); ?> -
        <?php if(request()->path() == 'admin-home'): ?>
            <?php echo e(get_static_option('site_tag_line')); ?>

        <?php else: ?>
            <?php echo $__env->yieldContent('site-title'); ?>
        <?php endif; ?>
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <?php
        $site_favicon = get_attachment_image_by_id(get_static_option('site_favicon'),"full",false);
    ?>
    <?php if(!empty($site_favicon)): ?>
        <link rel="icon" href="<?php echo e($site_favicon['img_url']); ?>" type="image/png">
    <?php endif; ?>

    <link rel="stylesheet" href="<?php echo e(asset('assets/common/css/bootstrap.min.css')); ?>">
    <link rel="stylesheet" href="<?php echo e(asset('assets/common/css/font-awesome.min.css')); ?>">
    <link rel="stylesheet" href="<?php echo e(asset('assets/common/css/themify-icons.css')); ?>">
    <link rel="stylesheet" href="<?php echo e(asset('assets/common/css/toastr.css')); ?>">
    <link rel="stylesheet" href="<?php echo e(asset('assets/backend/css/metisMenu.css')); ?>">
    <link rel="stylesheet" href="<?php echo e(asset('assets/backend/css/slicknav.min.css')); ?>">
    <link rel="stylesheet" href="<?php echo e(asset('assets/frontend/css/flaticon.css')); ?>">
    <!-- others css -->
    <link rel="stylesheet" href="<?php echo e(asset('assets/backend/css/typography.css')); ?>">
    <link rel="stylesheet" href="<?php echo e(asset('assets/backend/css/default-css.css')); ?>">
    <link rel="stylesheet" href="<?php echo e(asset('assets/backend/css/styles.css')); ?>">
    <link rel="stylesheet" href="<?php echo e(asset('assets/backend/css/responsive.css')); ?>">
    <link rel="stylesheet" href="<?php echo e(asset('assets/backend/css/fontawesome-iconpicker.min.css')); ?>">
    <link rel="stylesheet" href="<?php echo e(asset('assets/backend/css/bootstrap-datepicker.min.css')); ?>">
    <link rel="stylesheet" href="<?php echo e(asset('assets/frontend/css/fontawesome.min.css')); ?>">
    <link rel="stylesheet" href="<?php echo e(asset('assets/frontend/css/flaticon.css')); ?>">
    <link rel="stylesheet" href="<?php echo e(asset('assets/backend/css/flatpickr.min.css')); ?>">
    <script src="<?php echo e(asset('assets/frontend/js/jquery-3.4.1.min.js')); ?>"></script>
    <script src="<?php echo e(asset('assets/common/js/jquery-migrate-3.3.2.min.js')); ?>"></script>
    <link rel="stylesheet" href="<?php echo e(asset('assets/backend/css/custom-style.css')); ?>">

    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Lato:wght@300;400;700;900&family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <?php echo $__env->yieldContent('style'); ?>
    <?php if(get_static_option('site_admin_dark_mode') == 'on'): ?>
    <link rel="stylesheet" href="<?php echo e(asset('assets/backend/css/dark-mode.css')); ?>">
    <?php endif; ?>
    <?php if( get_default_language_direction() === 'rtl'): ?>
        <link rel="stylesheet" href="<?php echo e(asset('assets/backend/css/rtl.css')); ?>">
    <?php endif; ?>
</head>

<body>
<!-- preloader area start -->
<?php if(!empty(get_static_option('admin_loader_animation'))): ?>
<div id="preloader">
    <div class="loader"></div>
</div>
<?php endif; ?>
<div class="page-container">
    <?php echo $__env->make('backend/partials/sidebar', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <div class="main-content">

        <div class="header-area">
            <div class="row align-items-center">
                <!-- nav and search button -->
                <div class="col-md-6 col-sm-8 clearfix">
                    <div class="nav-btn pull-left">
                        <span></span>
                        <span></span>
                        <span></span>
                    </div>
                </div>



                <div class="col-md-6 col-sm-4 clearfix">
                    <ul class="notification-area pull-right">

                        
                            <li class="dropdown">
                                <i class="ti-bell dropdown-toggle" data-toggle="dropdown">
                                    <span><?php echo e(count($new_notification)); ?></span>
                                </i>
                                <div class="dropdown-menu bell-notify-box notify-box">
                                    <?php if(count($new_notification) > 0): ?>
                                        <span class="notify-title"><?php echo e(sprintf('You have %s new notifications',count($new_notification))); ?>

                                            <a href="<?php echo e(route('admin.notification')); ?>"><?php echo e(__('view all')); ?></a>
                                        </span>
                                    <?php else: ?>
                                        <span class="notify-title"><?php echo e(__('You have no new notifications')); ?>

                                            <a href="<?php echo e(route('admin.notification')); ?>">
                                                <?php echo e(__('view all')); ?></a>
                                        </span>
                                    <?php endif; ?>
                                    <div class="slimScrollDiv" style="position: relative; overflow: hidden; width: auto; height: 380px;">
                                        <div class="nofity-list">

                                            <?php $__currentLoopData = $all_notifiacations->take(4); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                <?php
                                                    $seen_condition = $item->seen == 1 ? 'notify-seen' : '';
                                                ?>
                                                <a href="<?php echo e(route('admin.notification.view',$item->id)); ?>" class="notify-item <?php echo e($seen_condition); ?>">
                                                    <div class="notify-thumb"><i class="ti-file btn-danger"></i></div>
                                                    <div class="notify-text">
                                                        <p class="title"><?php echo e($item->title ?? ''); ?></p>
                                                        <?php if($item->type == 'cause_log'): ?>
                                                            <p class="pera"><?php echo e(optional(optional($item->cause_log)->cause)->title); ?></p>

                                                        <?php elseif($item->type == 'user_campaign'): ?>
                                                            <p class="pera"><?php echo e(optional($item->user_campaign)->title); ?></p>
                                                         <?php else: ?>
                                                            <p class="pera"><?php echo e(optional(optional($item->cause_withdraw)->cause)->title); ?></p>

                                                        <?php endif; ?>
                                                        <span><?php echo e($item->created_at->diffForHumans()); ?></span>
                                                    </div>
                                                </a>
                                             <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

                                        </div><div class="slimScrollBar" style="background: rgb(0, 0, 0); width: 7px; position: absolute; top: 0px; opacity: 0.4; display: block; border-radius: 7px; z-index: 99; right: 1px; height: 295.203px;"></div><div class="slimScrollRail" style="width: 7px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 7px; background: rgb(51, 51, 51); opacity: 0.2; z-index: 90; right: 1px;"></div></div>
                                </div>
                            </li>
                        


                        
                            <li ><label class="switch yes">
                            <input id="darkmode" type="checkbox" data-mode=<?php echo e(get_static_option('site_admin_dark_mode')); ?> <?php if(get_static_option('site_admin_dark_mode') == 'on'): ?> checked <?php else: ?> <?php endif; ?>>
                                <span class="slider-color-mode onff"></span>
                            </label></li>
                        

                        <li id="full-view"><i class="ti-fullscreen"></i></li>
                        <li id="full-view-exit"><i class="ti-zoom-out"></i></li>
                        <li><a class="btn <?php if(get_static_option('site_admin_dark_mode') == 'off'): ?>btn-primary <?php else: ?> btn-dark  <?php endif; ?>" target="_blank" href="<?php echo e(url('/')); ?>"><i class="fas fa-external-link-alt mr-1"></i>   <?php echo e(__('View Site')); ?> </a></li>
                    </ul>
                </div>
            </div>
        </div>

        <div class="page-title-area">
            <div class="row align-items-center">
                <div class="col-sm-6">
                    <div class="breadcrumbs-area clearfix">
                        <h4 class="page-title pull-left"><?php echo $__env->yieldContent('site-title'); ?></h4>
                        <ul class="breadcrumbs pull-left">
                            <li><a href="<?php echo e(route('admin.home')); ?>"><?php echo e(__('Home')); ?></a></li>
                            <li><span><?php echo $__env->yieldContent('site-title'); ?></span></li>
                        </ul>
                    </div>
                </div>


                <div class="col-sm-6 clearfix">
                    <div class="user-profile pull-right">
                      <?php
                       $profile_img = get_attachment_image_by_id(auth()->user()->image,null,true);
                       ?>
                       <?php if(!empty($profile_img)): ?>
                           <img class="avatar user-thumb" src="<?php echo e($profile_img['img_url']); ?>" alt="<?php echo e(auth()->user()->name); ?>">
                       <?php endif; ?>
                     <h4 class="user-name dropdown-toggle" data-toggle="dropdown"><?php echo e(Auth::user()->name); ?> <i class="fa fa-angle-down"></i></h4>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="<?php echo e(route('admin.profile.update')); ?>"><?php echo e(__('Edit Profile')); ?></a>
                            <a class="dropdown-item" href="<?php echo e(route('admin.password.change')); ?>"><?php echo e(__('Password Change')); ?></a>
                            <a class="dropdown-item" href="<?php echo e(route('admin.logout')); ?>"><?php echo e(__('Logout')); ?></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <?php echo $__env->yieldContent('content'); ?>
    </div>

    <footer>
        <div class="footer-area footer-wrap">
            <p>
                <?php echo render_footer_copyright_text(); ?>

            </p>
            <p class="version">v-<?php echo e(get_static_option('site_script_version','1.2.2')); ?></p>
        </div>
    </footer>
</div>

<script src="<?php echo e(asset('assets/common/js/bootstrap.min.js')); ?>"></script>
<script src="<?php echo e(asset('assets/backend/js/sweetalert2.js')); ?>"></script>
<script src="<?php echo e(asset('assets/backend/js/metisMenu.min.js')); ?>"></script>
<script src="<?php echo e(asset('assets/backend/js/jquery.slimscroll.min.js')); ?>"></script>
<script src="<?php echo e(asset('assets/backend/js/jquery.slicknav.min.js')); ?>"></script>
<script src="<?php echo e(asset('assets/backend/js/fontawesome-iconpicker.min.js')); ?>"></script>
<script src="<?php echo e(asset('assets/backend/js/bootstrap-datepicker.min.js')); ?>"></script>
<script src="<?php echo e(asset('assets/common/js/toastr.min.js')); ?>"></script>
<script src="<?php echo e(asset('assets/backend/js/flatpickr.js')); ?>"></script>
<?php echo $__env->yieldContent('script'); ?>
<script src="<?php echo e(asset('assets/backend/js/plugins.js')); ?>"></script>
<script src="<?php echo e(asset('assets/backend/js/scripts.js')); ?>"></script>
<script>
    (function ($){
        "use strict";
     $('input[type="date"]').datepicker({
         format: 'yyyy-mm-dd'
     });

        $('#reload').on('click', function(){
            location.reload();
        })
        $('#darkmode').on('click', function(){
           var el = $(this)
            var mode = el.data('mode')
            $.ajax({
                type:'GET',
                url:  '<?php echo e(route("admin.dark.mode.toggle")); ?>',
                data:{mode:mode},
                success: function(){
                    location.reload();
                },error: function(){
                }
            });
        });

        $(document).on('click','.swal_delete_button',function(e){
          e.preventDefault();
            Swal.fire({
              title: '<?php echo e(__("Are you sure?")); ?>',
              text: '<?php echo e(__("You would not be able to revert this item!")); ?>',
              icon: 'warning',
              showCancelButton: true,
              confirmButtonColor: '#3085d6',
              cancelButtonColor: '#d33',
              confirmButtonText: "<?php echo e(__('Yes, delete it!')); ?>",
               cancelButtonText: "<?php echo e(__('Cancel')); ?>"
            }).then((result) => {
              if (result.isConfirmed) {
                $(this).next().find('.swal_form_submit_btn').trigger('click');
              }
            });
        });

        $(document).on('click','.swal_change_language_button',function(e){
            e.preventDefault();
            Swal.fire({
                title: '<?php echo e(__("Are you sure to make this language as a default language?")); ?>',
                text: '<?php echo e(__("Languages will be turn changed as default")); ?>',
                icon: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: "<?php echo e(__('Yes, Change it!')); ?>",
                 cancelButtonText: "<?php echo e(__('Cancel')); ?>"
            }).then((result) => {
                if (result.isConfirmed) {
                    $(this).next().find('.swal_form_submit_btn').trigger('click');
                }
            });
        });

        $(document).on('click','.swal_change_approve_payment_button',function(e){
            e.preventDefault();
            Swal.fire({
                title: '<?php echo e(__("Are you sure to approve this payment?")); ?>',
                icon: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: "<?php echo e(__('Yes, Accept it!')); ?>",
                 cancelButtonText: "<?php echo e(__('Cancel')); ?>"
            }).then((result) => {
                if (result.isConfirmed) {
                    $(this).next().find('.swal_form_submit_btn').trigger('click');
                }
            });
        });

        //Donation Status Change Custom Message JS
        $(document).on('change','.custom_message_enable_disable',function(){
            if($(this).is(':checked')){
                $('.custom_message').removeClass('d-none');
            }else{
                $('.custom_message').addClass('d-none');
            }
        })

        $(document).on('click','.donation_status_change_btn',function(){
            let el = $(this);
            $('.donation_status_change_id').val(el.data('id'));
        });

    })(jQuery);
</script>
</body>

</html>
<?php /**PATH /home/xgenxchi/public_html/laravel/fundorex/@core/resources/views/backend/admin-master.blade.php ENDPATH**/ ?>
<?php
    $home_page_variant = $home_page ?? get_static_option('home_page_variant');
?>
<div class="header-style-01 home-page-variant-<?php echo e($home_page_variant); ?>">
    <div class="topbar-area style-02 home-page-four">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="topbar-inner style-01">
                        <div class="left-contnet">
                            <ul class="info-items">
                                <?php
                                    $all_icon_fields =  filter_static_option_value('home_page_01_topbar_info_list_icon_icon',$global_static_field_data);
                                    $all_icon_fields =  !empty($all_icon_fields) ? unserialize($all_icon_fields,['class' => false]) : [];
                                    $all_title_fields = filter_static_option_value('home_page_01_topbar_info_list_text',$global_static_field_data);
                                    $all_title_fields = !empty($all_title_fields) ? unserialize($all_title_fields,['class' => false]) : [];
                                ?>
                                <?php $__currentLoopData = $all_icon_fields; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $index => $icon): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <li><i class="<?php echo e($icon); ?> "></i> <?php echo e(isset($all_title_fields[$index]) ? $all_title_fields[$index] : ''); ?></li>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            </ul>
                        </div>
                        <div class="right-contnet">
                            <div class="social-link">
                                <ul>
                                    <?php $__currentLoopData = $all_social_item; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $data): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <li><a href="<?php echo e($data->url); ?>"><i class="<?php echo e($data->icon); ?>"></i></a></li>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    <?php if (isset($component)) { $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4 = $component; } ?>
<?php $component = $__env->getContainer()->make(Illuminate\View\AnonymousComponent::class, ['view' => 'components.front-user-login-li','data' => []]); ?>
<?php $component->withName('front-user-login-li'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php $component->withAttributes([]); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4)): ?>
<?php $component = $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4; ?>
<?php unset($__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4); ?>
<?php endif; ?>

                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <nav class="navbar navbar-area navbar-expand-lg charity-nav-04 has-topbar has-topbar-04 nav-style-02">
        <div class="container nav-container">
            <div class="responsive-mobile-menu">
                <div class="logo-wrapper">
                    <a href="<?php echo e(url('/')); ?>" class="logo">
                        <?php if(!empty(filter_static_option_value('site_white_logo',$global_static_field_data))): ?>
                            <?php echo render_image_markup_by_attachment_id(filter_static_option_value('site_white_logo',$global_static_field_data)); ?>

                        <?php else: ?>
                            <h2 class="site-title"><?php echo e(filter_static_option_value('site_title',$global_static_field_data)); ?></h2>
                        <?php endif; ?>
                    </a>
                </div>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#bizcoxx_main_menu" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
            </div>
            <div class="collapse navbar-collapse" id="bizcoxx_main_menu">
                <ul class="navbar-nav">
                    <?php echo render_frontend_menu($primary_menu); ?>

                    <li class="search-lists">
                        <?php if(!empty(get_static_option('home_page_navbar_search_show_hide'))): ?>
                        <?php if (isset($component)) { $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4 = $component; } ?>
<?php $component = $__env->getContainer()->make(Illuminate\View\AnonymousComponent::class, ['view' => 'components.frontend.search-popup','data' => []]); ?>
<?php $component->withName('frontend.search-popup'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php $component->withAttributes([]); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4)): ?>
<?php $component = $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4; ?>
<?php unset($__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4); ?>
<?php endif; ?>
                        <?php endif; ?>
                    </li>
                </ul>
            </div>
            <div class="nav-right-content">
                <ul>
                    <?php if (isset($component)) { $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4 = $component; } ?>
<?php $component = $__env->getContainer()->make(Illuminate\View\AnonymousComponent::class, ['view' => 'components.front-donate-btn-last-three-home','data' => []]); ?>
<?php $component->withName('front-donate-btn-last-three-home'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php $component->withAttributes([]); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4)): ?>
<?php $component = $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4; ?>
<?php unset($__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4); ?>
<?php endif; ?>
                </ul>
            </div>
        </div>
    </nav>
</div>


<?php
    $classes = ['reverse-color','btn-color-three','btn-dander','btn-color-three'];
?>

<?php if(get_static_option('home_page_header_area_04_section_status')): ?>
<div class=" header-slider-four">
    <div class="header-area style-02 header-bg-04 banner-padiing" <?php echo render_background_image_markup_by_attachment_id(filter_static_option_value('home_page_04_header_area_bg_image',$static_field_data)); ?>>
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6">
                    <div class="header-inner-02 header-inner-04">
                        <p class="animate-style-02"><?php echo filter_static_option_value('home_page_04_header_area_title',$static_field_data); ?></p>
                        <h1 class="title animate-style"><?php echo filter_static_option_value('home_page_04_header_area_subtitle',$static_field_data); ?>

                            <?php echo render_image_markup_by_attachment_id(filter_static_option_value('home_page_04_header_area_line_image',$static_field_data)); ?>

                        </h1>
                        <?php
                            $url = get_static_option('home_page_04_donate_button_text_url') ?? route('frontend.donations');
                        ?>
                        <div class="btn-wrapper padding-top-30">
                            <a href="<?php echo e($url); ?>" class="boxed-btn secondary-color-two btn-rounded"><?php echo e(filter_static_option_value('home_page_04_donate_button_text',$static_field_data)); ?></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-5 offset-lg-1">
                    <div class="inner-right-contents">
                        <span class="donate-title"> <?php echo filter_static_option_value('home_page_04_right_side_heading',$static_field_data); ?> </span>
                        <div class="inner-content-all">
                            <div class="nice-selects">
                                <select id="donation_cause_id">
                                    <?php $__currentLoopData = $all_donation; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $donation): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <option value="<?php echo e($donation->id); ?>" data-url="<?php echo e(route('frontend.donation.in.separate.page',$donation->id)); ?>"> <?php echo e(Str::words($donation->title,8)); ?></option>
                                     <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                </select>
                            </div>
                            <div class="donate-input">
                                <input class="form--control donation-amount" type="number" value="500">
                                <?php
                                    $custom_amounts =  [50,100,150,200];
                                ?>

                                <ul class="donate-lists">
                                    <?php $__currentLoopData = $custom_amounts; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $amount): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                         <li data-value="<?php echo e(trim($amount)); ?>" class=""> <?php echo e(amount_with_currency_symbol($amount)); ?> </li>
                                     <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

                                </ul>
                            </div>
                            <a href="#" class="boxed-btn donate-btn" id="donation_redirect_btn">  <?php echo filter_static_option_value('home_page_04_right_side_donate_button_text',$static_field_data); ?> </a>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
<?php endif; ?>


<?php if(get_static_option('home_page_category_area_04_section_status')): ?>
<section class="category-area padding-top-120 padding-bottom-125">
    <div class="top-shapes">
        <img src="<?php echo e(asset('assets/frontend/img/category/top-shapes.png')); ?>" alt="">
    </div>
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="category-slider">
                    <?php $__currentLoopData = $all_donation_category; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $data): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <div class="single-category-01">
                        <div class="category-01-shape">
                            <img src="<?php echo e(asset('assets/frontend/img/category/health-shape1.png')); ?>" alt="">
                            <img src="<?php echo e(asset('assets/frontend/img/category/health-shape2.png')); ?>" alt="">
                        </div>
                        <div class="category-01-image">
                            <?php echo render_image_markup_by_attachment_id($data->image,'thumb'); ?>

                        </div>
                        <div class="category-01-content">
                            <h4 class="category-para"> <a href="<?php echo e(route('frontend.donations.category',['id' => $data->id,'any' => Str::slug($data->title) ?? '' ])); ?>"> <?php echo e($data->title); ?> </a> </h4>
                        </div>
                    </div>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                </div>
            </div>
        </div>
    </div>
</section>
<?php endif; ?>

<?php if(get_static_option('home_page_feature_area_04_section_status')): ?>
<section class="featured-area section-bg-2 padding-top-90 padding-bottom-120">
    <div class="section-shapes">
        <img src="<?php echo e(asset('assets/frontend/img/bg/top-shapes.png')); ?>" alt="">
        <img src="<?php echo e(asset('assets/frontend/img/bg/bottom-shapes.png')); ?>" alt="">
    </div>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-8 col-sm-11 col-11">
                <div class="section-title section-title-four b-top desktop-center padding-top-25 margin-bottom-55">
                    <span><?php echo filter_static_option_value('home_page_04_feature_area_title',$static_field_data); ?></span>
                    <h2 class="title"><?php echo filter_static_option_value('home_page_04_feature_area_subtitle',$static_field_data); ?> <img src="<?php echo e(asset('assets/frontend/img/section-line-shape.png')); ?>" alt=""> </h2>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="featured-slider">
                    <?php $__currentLoopData = $feature_cause; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=> $data): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <div class="single-featured-items">
                        <div class="single-featured">
                            <div class="featured-image">
                                <a href="<?php echo e(route('frontend.donations.single',$data->slug)); ?>">
                                    <?php echo render_image_markup_by_attachment_id($data->image,'','grid'); ?>

                                </a>
                                <div class="award-flex-position">
                                    <?php if($data->featured === 'on'): ?>
                                        <div class="award-new-icon">
                                            <i class="las la-award"></i>
                                        </div>
                                    <?php endif; ?>

                                    <?php if($data->reward === 'on'): ?>
                                        <div class="award-new-icon">
                                            <i class="las la-gift"></i>
                                        </div>
                                    <?php endif; ?>
                                </div>
                            </div>

                            <div class="progress-item">
                                <div class="single-progressbar">
                                    <div class="donation-progress" data-percentage="<?php echo e(get_percentage($data->amount,$data->raised)); ?>"></div>
                                </div>
                            </div>
                            <div class="featured-contents">
                                <h3 class="title">
                                    <a href="<?php echo e(route('frontend.donations.single',$data->slug)); ?>"><?php echo e($data->title); ?></a>
                                </h3>
                                <p class="excpert">
                                    <?php echo e($data->excerpt); ?>

                                </p>

                                <div class="goal">
                                    <h4 class="raised"><?php echo e(__('Raised')); ?>:  <span class="main-color-three"><?php echo e(amount_with_currency_symbol($data->raised ?? 0 )); ?> </span></h4>
                                    <h4 class="raised"><?php echo e(__('Goal')); ?>: <span class="danger-color"><?php echo e(amount_with_currency_symbol($data->amount)); ?></span></h4>
                                </div>
                                <?php
                                    $classes = ['reverse-color','btn-color-three','btn-dander','btn-color-three'];
                                ?>
                                <div class="btn-wrapper">
                                    <a href="<?php echo e(route('frontend.donation.in.separate.page',$data->id)); ?>" class="boxed-btn <?php echo e($classes[$key % count($classes)]); ?>"> <?php echo filter_static_option_value('home_page_04_feature_area_donation_button_text',$static_field_data); ?> </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                </div>
            </div>
        </div>
    </div>
</section>
<?php endif; ?>


<?php if(get_static_option('home_page_success_story_area_04_section_status')): ?>
<section class="success-area padding-top-140 padding-bottom-140">
    <div class="success-icon-shapes">
        <img src="<?php echo e(asset('assets/frontend/img/success/success-icon-s.png')); ?>" alt="">
    </div>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-8 col-sm-11 col-11">
                <div class="section-title section-title-four b-top desktop-center padding-top-25 margin-bottom-55">
                    <span><?php echo filter_static_option_value('home_page_04_success_story_area_title',$static_field_data); ?> </span>
                    <h2 class="title"> <?php echo filter_static_option_value('home_page_04_success_story_area_subtitle',$static_field_data); ?><img src="<?php echo e(asset('assets/frontend/img/section-line-shape.png')); ?>" alt=""> </h2>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="success-slider">
                    <?php $__currentLoopData = $all_success_stories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=> $data): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <div class="single-success-items">
                        <div class="row align-items-center">
                            <div class="col-lg-6">
                                <div class="success-thums success-thums-two margin-bottom-30">
                                   <?php echo render_image_markup_by_attachment_id($data->image); ?>

                                </div>
                            </div>
                            <div class="col-lg-5 offset-lg-1">
                                <div class="success-contents margin-bottom-30">
                                   <h4 class="success-titles"> <a href="<?php echo e(route('frontend.success.story.single',$data->slug)); ?>"> <?php echo e($data->title ?? ''); ?></a></h4>

                                     <p><?php echo e(purify_html($data->excerpt)); ?></p>

                                    <div class="btn-wrapper">
                                        <a href="<?php echo e(route('frontend.success.story.single',$data->slug)); ?>" class="boxed-btn <?php echo e($classes[$key % count($classes)]); ?>"> <?php echo filter_static_option_value('home_page_04_success_story_area_button_text',$static_field_data); ?></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                  <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                </div>
            </div>
        </div>
    </div>
</section>
<?php endif; ?>


<?php if(get_static_option('home_page_aboutus_area_04_section_status')): ?>
<section class="about-area section-bg-2 padding-top-120 padding-bottom-90">
    <div class="section-shapes">
        <img src="<?php echo e(asset('assets/frontend/img/bg/top-shapes.png')); ?>" alt="">
        <img src="<?php echo e(asset('assets/frontend/img/bg/bottom-shapes.png')); ?>" alt="">
    </div>
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-6 margin-bottom-30">
                <div class="about-text-contents">
                    <div class="section-title section-title-four padding-top-25 margin-bottom-40">
                        <span><?php echo e(filter_static_option_value('home_page_04_about_us_area_title',$static_field_data)); ?></span>
                        <h2 class="title"><?php echo e(filter_static_option_value('home_page_04_about_us_area_subtitle',$static_field_data)); ?><img src="<?php echo e(asset('assets/frontend/img/section-line-shape.png')); ?>" alt=""> </h2>
                    </div>
                    <p> <?php echo purify_html( filter_static_option_value('home_page_04_about_us_area_description',$static_field_data)); ?> </p>
                    <p>

                    <div class="btn-wrapper">
                        <a href="<?php echo purify_html( filter_static_option_value('home_page_04_about_us_area_button_url',$static_field_data)); ?>" class="boxed-btn btn-color-three"> <?php echo purify_html( filter_static_option_value('home_page_04_about_us_area_button_text',$static_field_data)); ?> </a>
                    </div>
                </div>
            </div>

            <div class="col-xl-5 col-lg-6 offset-xl-1 margin-bottom-30">
                <div class="row p-0">
                    <?php $__currentLoopData = $all_counterup; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $data): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <div class="col-lg-6 col-md-6 p-0 counter-child">
                        <div class="single-counterup-02">
                            <div class="counter-contents">
                                <div class="icon">
                                    <div class="icon-shapes">
                                        <img src="<?php echo e(asset('assets/frontend/img/about/about-counter-s.png')); ?>" alt="">
                                        <img src="<?php echo e(asset('assets/frontend/img/about/about-counter-s2.png')); ?>" alt="">
                                    </div>
                                    <i class="<?php echo e($data->icon); ?>"></i>
                                </div>
                                <div class="content">
                                    <div class="count-wrap"><span class="count-num"><?php echo e($data->number); ?></span><?php echo e($data->extra_text); ?></div>
                                    <p class="title"><?php echo e($data->title); ?></p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                </div>
            </div>
        </div>
    </div>
</section>
<?php endif; ?>

<?php if(get_static_option('home_page_events_area_04_section_status')): ?>
<section class="events-area-two padding-top-140 padding-bottom-140">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-8 col-sm-11 col-11">
                <div class="section-title section-title-four b-top desktop-center padding-top-25 margin-bottom-55">
                    <span> <?php echo filter_static_option_value('home_page_04_events_area_title',$static_field_data); ?> </span>
                    <h2 class="title"> <?php echo filter_static_option_value('home_page_04_events_area_subtitle',$static_field_data); ?> <img src="<?php echo e(asset('assets/frontend/img/section-line-shape.png')); ?>" alt=""> </h2>
                </div>
            </div>
        </div>
        <div class="row">
           <?php $__currentLoopData = $all_recent_events; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $data): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <div class="col-lg-6 event-child">
                <div class="single-events margin-bottom-50">
                    <div class="events-flex-contents">
                        <div class="events-date">
                            <div class="events-boxe">
                                <span class="events-title"> <?php echo e(date('d', strtotime($data->date))); ?> </span>
                                <p class="event-para"><?php echo e(date('M', strtotime($data->date))); ?> </p>
                            </div>
                        </div>
                        <div class="events-content">
                            <h3 class="title"><a href="<?php echo e(route('frontend.events.single',$data->slug)); ?>"><?php echo e($data->title); ?></a></h3>
                            <p class="content-para"> <?php echo Str::words(purify_html( strip_tags($data->content)),12); ?> </p>
                            <span class="event-place"> <?php echo e($data->venue_location); ?> </span>
                        </div>
                    </div>
                </div>
            </div>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </div>
    </div>
</section>
<?php endif; ?>



<?php if(get_static_option('home_page_recent_cause_area_04_section_status')): ?>
<section class="recent-area section-bg-2 padding-top-90 padding-bottom-120">
    <div class="section-shapes">
        <img src="<?php echo e(asset('assets/frontend/img/bg/top-shapes.png')); ?>" alt="">
        <img src="<?php echo e(asset('assets/frontend/img/bg/bottom-shapes.png')); ?>" alt="">
    </div>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-8 col-sm-11 col-11">
                <div class="section-title section-title-four b-top desktop-center padding-top-25 margin-bottom-55">
                    <span><?php echo filter_static_option_value('home_page_04_recent_causes_area_title',$static_field_data); ?></span>
                    <h2 class="title"><?php echo filter_static_option_value('home_page_04_recent_causes_area_subtitle',$static_field_data); ?><img src="<?php echo e(asset('assets/frontend/img/section-line-shape.png')); ?>" alt=""> </h2>
                </div>
            </div>
        </div>
        <div class="row">

            <?php $__currentLoopData = $all_recent_donation; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=> $data): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <div class="col-lg-4 col-md-6">
                <div class="recent-single margin-bottom-30">
                    <div class="recent-thumb">
                        <a href="<?php echo e(route('frontend.donations.single',$data->slug)); ?>">
                            <?php echo render_image_markup_by_attachment_id($data->image,'','grid'); ?>

                        </a>

                        <div class="award-flex-position">
                            <?php if($data->featured === 'on'): ?>
                                <div class="award-new-icon">
                                    <i class="las la-award"></i>
                                </div>
                            <?php endif; ?>

                            <?php if($data->reward === 'on'): ?>
                                <div class="award-new-icon">
                                    <i class="las la-gift"></i>
                                </div>
                            <?php endif; ?>
                        </div>

                    </div>
                    <div class="recent-contents">
                        <h3 class="title">
                            <a href="<?php echo e(route('frontend.donations.single',$data->slug)); ?>"> <?php echo e($data->title ?? ''); ?> </a>
                        </h3>
                       <div class="description margin-bottom-40">
                            <?php echo Str::words(purify_html_raw(strip_tags($data->cause_content)),15); ?>

                        </div>
                        <div class="progress-item">
                            <div class="single-progressbar">
                                <div class="donation-progress" data-percentage="<?php echo e(get_percentage($data->amount,$data->raised)); ?>"></div>
                            </div>
                        </div>
                        <div class="goal">
                            <h4 class="raised"><?php echo e(__('Raised')); ?>:  <span class="main-color-three"><?php echo e(amount_with_currency_symbol($data->raised ?? 0 )); ?> </span></h4>
                            <h4 class="raised"><?php echo e(__('Goal')); ?>: <span class="danger-color"><?php echo e(amount_with_currency_symbol($data->amount)); ?></span></h4>
                        </div>

                        <div class="btn-wrapper">
                            <a href="<?php echo e(route('frontend.donations.single',$data->slug)); ?>" class="boxed-btn <?php echo e($classes[$key % count($classes)]); ?>"> <?php echo filter_static_option_value('home_page_04_recent_causes_area_button_text',$static_field_data); ?> </a>
                        </div>
                    </div>
                </div>
            </div>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

            <div class="col-lg-12">
                <div class="btn-wrapper text-center">
                    <a href="<?php echo e(route('frontend.donations')); ?>" class="boxed-btn btn-color-three"><?php echo filter_static_option_value('home_page_04_recent_causes_area_see_all_button_text',$static_field_data); ?> </a>
                </div>
            </div>
        </div>
    </div>
</section>
<?php endif; ?>

<?php if(get_static_option('home_page_blog_area_04_section_status')): ?>
<section class="blog-area-two padding-top-140 padding-bottom-120">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-8 col-sm-11 col-11">
                <div class="section-title section-title-four b-top desktop-center padding-top-25 margin-bottom-55">
                    <span> <?php echo filter_static_option_value('home_page_04_recent_blog_area_title',$static_field_data); ?></span>
                    <h2 class="title"> <?php echo filter_static_option_value('home_page_04_recent_blog_area_subtitle',$static_field_data); ?> <img src="<?php echo e(asset('assets/frontend/img/section-line-shape.png')); ?>" alt=""> </h2>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="blog-slider">
                    <?php $__currentLoopData = $all_blog; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=> $data): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <div class="single-blog-items">
                        <div class="single-blog">
                            <?php
                                $blogClasses = ['color-two','color-three'];
                            ?>
                            <div class="blog-thums">
                                <a href="<?php echo e(route('frontend.blog.single',$data->slug)); ?>">
                                    <?php echo render_image_markup_by_attachment_id($data->image,'','grid'); ?>

                                </a>
                                <div class="blog-date-content <?php echo e($blogClasses[$key % count($blogClasses)]); ?> ">
                                    <div class="blog-dates">
                                        <h4> <?php echo e(date('d', strtotime($data->created_at))); ?> </h4>
                                        <span><?php echo e(date('M',strtotime($data->created_at))); ?></span>
                                    </div>
                                </div>
                            </div>
                            <div class="blog-contents">
                                <span class="blog-tag"> <?php echo get_blog_category_by_id($data->blog_categories_id,'link'); ?> </span>
                                <h4 class="blog-title"> <a href="<?php echo e(route('frontend.blog.single',$data->slug)); ?>"> <?php echo e($data->title  ?? __("Anonymous")); ?> </a> </h4>
                                <p> <?php echo Str::words(purify_html_raw($data->blog_content),15); ?> </p>
                            </div>
                        </div>
                    </div>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                </div>
            </div>
        </div>
    </div>
</section>
<?php endif; ?>

<?php echo $__env->make('frontend.partials.client-area', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

<?php $__env->startSection('scripts'); ?>
    <script>
        (function ($){
            "use strict";
            $(document).on('click','#donation_redirect_btn',function (e){
                e.preventDefault();

                var select = $('#donation_cause_id');
                var causeId = select.val();
                var causeUrl = $('#donation_cause_id option[value="'+causeId+'"]').data('url');
                var amount = $(this).parent().find('input[type="number"]').val();
                 window.location = causeUrl+'?number='+amount;
            });

        })(jQuery);
    </script>
<?php $__env->stopSection(); ?>

<?php /**PATH /Users/xgenious/Desktop/xgenious/localhost/fundorex-with-api/@core/resources/views/frontend/home-pages/home-04.blade.php ENDPATH**/ ?>
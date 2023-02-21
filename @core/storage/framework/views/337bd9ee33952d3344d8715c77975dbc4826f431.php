

<?php $__env->startSection('og-meta'); ?>
    <meta property="og:url" content="<?php echo e(route('frontend.donations.single',$donation->slug)); ?>"/>
    <meta property="og:type" content="article"/>
    <meta property="og:title" content="<?php echo e($donation->title); ?>"/>
    <?php echo render_og_meta_image_by_attachment_id($donation->image); ?>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('site-title'); ?>
    <?php echo e($donation->title); ?>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('page-title'); ?>
    <?php echo e($donation->title); ?>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('page-meta-data'); ?>
    <meta name="description" content="<?php echo e($donation->meta_tags); ?>">
    <meta name="tags" content="<?php echo e($donation->meta_description); ?>">
<?php $__env->stopSection(); ?>

<?php $__env->startSection('style'); ?>
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


<?php $__env->startSection('content'); ?>
    <?php
        $selected_amount = request()->get('number');
    ?>
    <section class="blog-content-area padding-top-120 padding-bottom-90">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-6">
                    <div class="donation_wrapper">
                        <div class="btn-wrapper">
                            <a href="<?php echo e(route('frontend.donations.single',$donation->slug)); ?>"
                               class="goback-btn pull-right"><?php echo e(__('Go Back')); ?></a>
                        </div>

                        <?php if (isset($component)) { $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4 = $component; } ?>
<?php $component = $__env->getContainer()->make(Illuminate\View\AnonymousComponent::class, ['view' => 'components.msg.error','data' => []]); ?>
<?php $component->withName('msg.error'); ?>
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
<?php $component = $__env->getContainer()->make(Illuminate\View\AnonymousComponent::class, ['view' => 'components.msg.success','data' => []]); ?>
<?php $component->withName('msg.success'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php $component->withAttributes([]); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4)): ?>
<?php $component = $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4; ?>
<?php unset($__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4); ?>
<?php endif; ?>

                        <form action="<?php echo e(route('frontend.donations.log.store')); ?>" method="post" enctype="multipart/form-data" class="donation-form-wrapper">
                         <?php echo csrf_field(); ?>
                            <input type="hidden" name="cid" value="">
                            <input type="hidden" name="cause_id" value="<?php echo e($donation->id); ?>">
                            <div class="tab_section mb-4">
                                <nav>
                                    <div class="nav nav-tabs" id="nav-tab" role="tablist">
                                        <input type="hidden" name="payment_type" class="payment_type" value="once">
                                        <a class="nav-link active once_tab" id="nav-home-tab" data-toggle="tab" href="#one_time_donation_tab" role="tab" aria-controls="nav-home" aria-selected="true"><?php echo e(__('Once')); ?></a>
                                        <a class="nav-link ml-2 monthly_tab" id="nav-profile-tab" data-toggle="tab" href="#monthly_donation_tab" role="tab" aria-controls="nav-profile" aria-selected="false"><?php echo e(__('Monthly')); ?></a>
                                    </div>
                                </nav>

                                <div class="tab-content" id="nav-tabContent">
                                    
                                    <div class="tab-pane fade show active" id="one_time_donation_tab" role="tabpanel" >
                                        <div class="single_amount_wrapper">
                                            <?php
                                                $custom_amounts_once  =  get_static_option('donation_custom_amount_once');
                                                $custom_amounts_once = !empty($custom_amounts_once) ? explode(',',$custom_amounts_once) : [50,100,150,200];
                                                $minimum_donation_amount = get_static_option('minimum_donation_amount');
                                            ?>
                                            <?php $__currentLoopData = $custom_amounts_once; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $amount): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                <div class="single_amount <?php if($selected_amount === $amount): ?> selected <?php endif; ?>" data-value="<?php echo e(trim($amount)); ?>" >
                                                    <?php echo e(amount_with_currency_symbol($amount)); ?>

                                                </div>
                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                        </div>

                                        <input type="hidden" name="captcha_token" id="gcaptcha_token">
                                        <div class="amount_wrapper">
                                            <div class="suffix"><?php echo e(get_static_option('site_global_currency')); ?></div>

                                            <input type="number" name="amount" <?php $default_donation_amount = trim(get_static_option('donation_default_amount')); ?>
                                            value="<?php echo e($selected_amount ?? $default_donation_amount); ?>" step="1" maxlength="6" inputmode="numeric"
                                                   min="1" id="donation_amount_user_input" class="bg-info text-light"><br>
                                        </div>
                                    </div>

                                    
                                    <div class="tab-pane fade" id="monthly_donation_tab" role="tabpanel">
                                        <div class="single_amount_wrapper">
                                            <?php
                                                $custom_amounts_monthly  =  get_static_option('donation_custom_amount_monthly');
                                                $custom_amounts_monthly = !empty($custom_amounts_monthly) ? explode(',',$custom_amounts_monthly) : [50,100,150,200];
                                                $minimum_donation_amount = get_static_option('minimum_donation_amount');
                                            ?>
                                            <?php $__currentLoopData = $custom_amounts_monthly; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $amount): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                <div class="single_amount <?php if($selected_amount === $amount): ?> selected <?php endif; ?>" data-value="<?php echo e(trim($amount)); ?>" >
                                                    <?php echo e(amount_with_currency_symbol($amount)); ?>

                                                </div>
                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                        </div>

                                        <input type="hidden" name="captcha_token" id="gcaptcha_token">
                                        <div class="amount_wrapper">
                                            <div class="suffix"><?php echo e(get_static_option('site_global_currency')); ?></div>

                                            <input type="number" name="amount" <?php $default_donation_amount = trim(get_static_option('donation_default_amount')); ?>
                                            value="<?php echo e($selected_amount ?? $default_donation_amount); ?>" step="1" maxlength="6" inputmode="numeric"
                                                   min="1" id="donation_amount_user_input" class="bg-info text-light"><br>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <input type="hidden" name="captcha_token" id="gcaptcha_token">
                            <?php if(!empty($minimum_donation_amount)): ?>
                                <small class="text-primary"><?php echo e(__('Minimum Donation Amount is:') . amount_with_currency_symbol($minimum_donation_amount)); ?></small>
                            <?php endif; ?>

                            <div class="form-group mt-2">
                                <input type="text" name="name" placeholder="<?php echo e(__('Name')); ?>"
                                       <?php if(auth()->guard('web')->check()): ?>
                                           value="<?php echo e(auth()->guard('web')->user()->name); ?>"
                                       <?php endif; ?>
                                       class="form-control">
                            </div>
                            <div class="form-group">
                                <input type="email" name="email" placeholder="<?php echo e(__('Email')); ?>"
                                       <?php if(auth()->guard('web')->check()): ?>
                                           value="<?php echo e(auth()->guard('web')->user()->email); ?>"
                                       <?php endif; ?>
                                       class="form-control">
                            </div>


                            <?php echo render_form_field_for_frontend(get_static_option('donation_page_form_fields')); ?>


                            <div class="form-check">
                                <input type="checkbox" name="anonymous" class="form-check-input" id="anonymous">
                                <label class="form-check-label" for="anonymous"><?php echo e(__('Donate Anonymously')); ?></label>
                            </div>

                            <?php if(!empty(get_static_option('allow_user_to_add_custom_tip_in_donation'))): ?>
                                <input type="hidden" name="admin_tip" value="<?php echo e(\App\Helpers\DonationHelpers::get_donation_charge($selected_amount ?? $default_donation_amount)); ?>">
                            <?php endif; ?>

                            <?php echo render_payment_gateway_for_form(); ?>

                            <?php if(!empty(get_static_option('manual_payment_gateway'))): ?>
                                <div class="form-group manual_payment_transaction_field">
                                    <div class="label"><?php echo e(__('Attach Your Bank Document')); ?></div>
                                    <input class="form-control btn btn-warning btn-sm" type="file" name="manual_payment_attachment">
                                    <span class="help-info"><?php echo get_manual_payment_description(); ?></span>
                                </div>
                            <?php endif; ?>
                            <div class="donate-seperate-page-button">
                                <div class="btn-wrapper">
                                    <button class="boxed-btn reverse-color btn-sm" type="submit">
                                        <?php echo e(get_static_option('donation_single_form_button_text')); ?>

                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="donation-amount-details-wrapper">
                        <h3 class="title"><?php echo e(__('Your Donation Details')); ?></h3>
                        <div class="your-area-donation-wrap">
                            <div class="thumb">
                                <?php echo render_image_markup_by_attachment_id($donation->image,'','thumb'); ?>

                            </div>
                            <div class="content">
                                <h4 class="title"><?php echo e($donation->title); ?></h4>
                                <span class="created_by"><?php echo e(__('Created By')); ?>

                                    <?php if($donation->created_by === 'user'): ?>
                                        <?php echo e(\App\User::find($donation->user_id)->name ?? __('Anonymous')); ?>

                                    <?php else: ?>
                                        <?php echo e(\App\Admin::find($donation->admin_id)->name ?? __('Anonymous')); ?>

                                    <?php endif; ?>
                          </span>
                            </div>
                        </div>
                        <ul>
                            <li><span><?php echo e(__('Your Donation')); ?></span> <span
                                        class="price donation_amount"><?php echo e(amount_with_currency_symbol($selected_amount ?? $default_donation_amount)); ?></span>
                            </li>
                            <?php if(empty(get_static_option('donation_charge_form')) || get_static_option('donation_charge_form') === 'donor'): ?>
                                <li>
                                    <span><?php echo e(get_static_option('site_title')); ?> <?php echo e(__('tip')); ?></span>
                                    <span class="price admin_tip">
                                        <?php if(!empty(get_static_option('allow_user_to_add_custom_tip_in_donation'))): ?>
                                        <span class="input-wrap"><input type="number" name="custom_admin_tip" min="1" value="<?php echo e(\App\Helpers\DonationHelpers::get_donation_charge($selected_amount ?? $default_donation_amount)); ?>"></span>
                                        <?php else: ?>
                                       <span class="amount"> <?php echo e(\App\Helpers\DonationHelpers::get_donation_charge($selected_amount ?? $default_donation_amount,true)); ?></span>
                                        <?php endif; ?>
                                    </span>
                                </li>
                            <?php endif; ?>
                            <li class="total"><span><?php echo e(__('Total')); ?></span> <span class="price total_amount"><?php echo e(\App\Helpers\DonationHelpers::get_donation_total($selected_amount ?? $default_donation_amount,true)); ?></span></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <?php if (isset($component)) { $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4 = $component; } ?>
<?php $component = $__env->getContainer()->make(Illuminate\View\AnonymousComponent::class, ['view' => 'components.media.markup','data' => ['userUpload' => true,'imageUploadRoute' => route('user.upload.media.file')]]); ?>
<?php $component->withName('media.markup'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php $component->withAttributes(['userUpload' => true,'imageUploadRoute' => \Illuminate\View\Compilers\BladeCompiler::sanitizeComponentAttribute(route('user.upload.media.file'))]); ?>
     <?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4)): ?>
<?php $component = $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4; ?>
<?php unset($__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4); ?>
<?php endif; ?>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('scripts'); ?>
    <script src="<?php echo e(asset('assets/frontend/js/jQuery.rProgressbar.min.js')); ?>"></script>
    <script>
        (function ($) {
            'use strict';
            $(document).ready(function () {

                //Sohan Custom Js
                $(document).on('click','.once_tab',function(){
                    $('.payment_type').val('once')
                })

                $(document).on('click','.monthly_tab',function(){
                    $('.payment_type').val('monthly')
                })

                function updateDonationAmount(){
                    var donation_amount_user_input = $('#donation_amount_user_input').val();
                    var admin_tip = $('input[name="admin_tip"]').val();

                    $.ajax({
                        url: "<?php echo e(route('frontend.get.donation.charges.by.ajax')); ?>",
                        type: 'post',
                        dataType: 'JSON',
                        data: {
                            _token: "<?php echo e(csrf_token()); ?>",
                            amount: donation_amount_user_input,
                            admin_tip: admin_tip,
                        },
                        success: function (data) {
                            var parent = $('.donation-amount-details-wrapper');
                            parent.find('.donation_amount').text(data.donation_amount);
                            parent.find('.admin_tip .amount').text(data.tip);
                            parent.find('.total_amount').text(data.total);
                        }
                    });
                }
                //Donation Charge
                $(document).on('keyup change', 'input[name="custom_admin_tip"]', function () {
                    var el = $(this);
                   calcCustomTip(el);
                });

                function calcCustomTip(el){
                    var currentVal = el.val();
                    var changeVal;
                    if(currentVal > 0){
                        changeVal = currentVal
                    }else{
                        el.val(1);
                        changeVal = 1
                    }
                    $('input[name="admin_tip"]').val(changeVal);
                    updateDonationAmount();
                }

                $(document).on('keyup', '#donation_amount_user_input', function () {
                    updateDonationAmount();
                });

                //name="amount"
                $(document).on('input', '#one_time_donation_tab input[name="amount"]', function (e) {
                    e.preventDefault();
                    $('#monthly_donation_tab input[name="amount"]').val($(this).val());
                });

                $(document).on('input', '#monthly_donation_tab input[name="amount"]', function (e) {
                    e.preventDefault();
                    $('#one_time_donation_tab input[name="amount"]').val($(this).val());
                });

                /*------------------------------
                    donate activation
                -------------------------------*/
                $(document).on('click', '.donation_wrapper .single_amount', function (e) {
                    e.preventDefault();
                    $(this).addClass('selected').siblings().removeClass('selected');
                    $('input[name="amount"]').val($(this).data('value')).trigger('keyup');
                });

                var defaulGateway = $('#site_global_payment_gateway').val();
                $('.payment-gateway-wrapper ul li[data-gateway="' + defaulGateway + '"]').addClass('selected');

                $(document).on('click', '.payment-gateway-wrapper > ul > li', function (e) {
                    e.preventDefault();
                    var gateway = $(this).data('gateway');
                    if (gateway == 'manual_payment') {
                        $('.manual_payment_transaction_field').addClass('show');
                    } else {
                        $('.manual_payment_transaction_field').removeClass('show');
                    }
                    $(this).addClass('selected').siblings().removeClass('selected');
                    $('.payment-gateway-wrapper').find(('input')).val(gateway);
                });


            });

        })(jQuery);
    </script>
    <?php if (isset($component)) { $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4 = $component; } ?>
<?php $component = $__env->getContainer()->make(Illuminate\View\AnonymousComponent::class, ['view' => 'components.media.js','data' => ['deleteRoute' => route('user.upload.media.file.delete'),'imgAltChangeRoute' => route('user.upload.media.file.alt.change'),'allImageLoadRoute' => route('user.upload.media.file.all')]]); ?>
<?php $component->withName('media.js'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php $component->withAttributes(['deleteRoute' => \Illuminate\View\Compilers\BladeCompiler::sanitizeComponentAttribute(route('user.upload.media.file.delete')),'imgAltChangeRoute' => \Illuminate\View\Compilers\BladeCompiler::sanitizeComponentAttribute(route('user.upload.media.file.alt.change')),'allImageLoadRoute' => \Illuminate\View\Compilers\BladeCompiler::sanitizeComponentAttribute(route('user.upload.media.file.all'))]); ?>
     <?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4)): ?>
<?php $component = $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4; ?>
<?php unset($__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4); ?>
<?php endif; ?>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('frontend.frontend-page-master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /Users/xgenious/Desktop/xgenious/localhost/fundorex-with-api/@core/resources/views/frontend/donations/donation-payment-separate-page.blade.php ENDPATH**/ ?>
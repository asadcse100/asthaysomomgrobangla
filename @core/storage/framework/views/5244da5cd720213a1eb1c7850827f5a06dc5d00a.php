<?php $__env->startSection('page-title'); ?>
    <?php echo e(__('Payment Success For:')); ?> <?php echo e(optional($donation_logs->cause)->title); ?>

<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>
    <div class="donation-success-page-content padding-120">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-8">
                    <div class="order-success-area">
                        <h1 class="title"><?php echo e(get_static_option('donation_success_page_title')); ?></h1>
                        <p><?php echo e(get_static_option('donation_success_page_description')); ?></p>
                    </div>
                </div>
                <div class="col-lg-6">
                    <h2 class="billing-title"><?php echo e(__('Donation Details')); ?></h2>
                    <ul class="billing-details">

                        <li><strong><?php echo e(__('Name')); ?>:</strong> <?php echo e($donation_logs->name); ?></li>
                        <li><strong><?php echo e(__('Email')); ?>:</strong> <?php echo e($donation_logs->email); ?></li>
                        <li><strong><?php echo e(__('Amount')); ?>:</strong> <?php echo e(amount_with_currency_symbol($donation_logs->amount)); ?></li>

                        <?php if(!empty($donation_logs->gift)): ?>
                            <li><strong><?php echo e(__('Gift Title')); ?>:</strong><?php echo e(optional($donation_logs->gift)->title); ?></li>
                            <?php
                                $gifts = optional($donation_logs->gift)->gifts ;
                                $colors = ['warning','info','primary','success'];
                            ?>
                            <li> <strong><?php echo e(__('Donation Gifts')); ?>:</strong>
                                <?php $__currentLoopData = json_decode($gifts) ?? []; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=> $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <span class="badge badge-<?php echo e($colors[$key % count($colors)]); ?>"><?php echo e($item ?? ''); ?></span>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            </li>
                        <?php endif; ?>


                    <?php
                        $all_custom_fields = json_decode($donation_logs->custom_fields) ?? [];
                    ?>
                    <?php if(!empty($all_custom_fields)): ?>
                        <?php $__currentLoopData = $all_custom_fields ?? []; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=> $field): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <li><strong class="text-dark "><?php echo e(ucfirst($key) . ' : '); ?></strong><?php echo e($field); ?></li>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    <?php endif; ?>


                    <?php if(!empty($donation_logs->reward_point)): ?>
                              <li><strong><?php echo e(__('Reward Points')); ?>:</strong> <?php echo e($donation_logs->reward_point); ?></li>
                        <?php endif; ?>
                        <li><strong><?php echo e(__('Payment Method')); ?>:</strong>  <?php echo e(str_replace('_',' ',$donation_logs->payment_gateway)); ?></li>
                        <li><strong><?php echo e(__('Payment Status')); ?>:</strong> <?php echo e($donation_logs->status); ?></li>
                        <li><strong><?php echo e(__('Transaction id')); ?>:</strong> <?php echo e($donation_logs->transaction_id); ?></li>
                    </ul>
                    <div class="donation-wrap donation-success-page">
                        <div class="contribute-single-item">
                            <div class="thumb">
                                <?php echo render_image_markup_by_attachment_id($donation->image,'','grid'); ?>

                                <div class="thumb-content">
                                </div>
                            </div>
                            <div class="content">
                                <a href="<?php echo e(route('frontend.donations.single',$donation->slug)); ?>"><h4 class="title"><?php echo e($donation->title); ?></h4></a>
                                <p><?php echo e(strip_tags(Str::words(strip_tags($donation->donation_content),20))); ?></p>
                                <div class="btn-wrapper">
                                    <a href="<?php echo e(route('frontend.donations.single',$donation->slug)); ?>" class="boxed-btn"><?php echo e(get_static_option('donation_button_text')); ?></a>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="btn-wrapper margin-top-40">
                        <?php if(auth()->guard('web')->check()): ?>
                            <div class="btn-wrapper">
                              <a href="<?php echo e(route('user.home')); ?>" class="boxed-btn reverse-color"><?php echo e(__('Go To Dashboard')); ?></a>
                            </div>
                        <?php else: ?>
                            <div class="btn-wrapper">
                            <a href="<?php echo e(url('/')); ?>" class="boxed-btn reverse-color"><?php echo e(__('Back To Home')); ?></a>
                            </div>
                        <?php endif; ?>
                    </div>
                </div>
            </div>
        </div>
    </div>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('frontend.frontend-page-master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /Users/xgenious/Desktop/xgenious/localhost/fundorex-with-api/@core/resources/views/frontend/donations/donation-success.blade.php ENDPATH**/ ?>
<?php $__env->startSection('page-title'); ?>
    <?php echo e(__('Register')); ?>

<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>
    <section class="login-page-wrapper py-5 my-5">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-6">
                    <div class="login-form-wrapper">
                        <h2 class="text-center"><?php echo e(__('Register New Account')); ?></h2><br>
                        <?php echo $__env->make('backend.partials.message', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                        <?php if($errors->any()): ?>
                            <div class="alert alert-danger">
                                <ul>
                                    <?php $__currentLoopData = $errors->all(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $error): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <li><?php echo e($error); ?></li>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                </ul>
                            </div>
                        <?php endif; ?>
                        <form action="<?php echo e(route('user.register')); ?>" method="post" enctype="multipart/form-data" class="account-form">
                            <?php echo csrf_field(); ?>
                            <input type="hidden" name="captcha_token" id="gcaptcha_token">
                            <div class="form-group">
                                <input type="text" name="name" class="form-control" placeholder="<?php echo e(__('Name')); ?>">
                            </div>
                            <div class="form-group">
                                <input type="text" name="username" class="form-control" placeholder="<?php echo e(__('Username')); ?>">
                            </div>
                            <div class="form-group">
                                <input type="email" name="email" class="form-control" placeholder="<?php echo e(__('Email')); ?>">
                            </div>
                            <div class="form-group">
                                <select id="country" class="form-control" name="country_id">
                                    <?php $__currentLoopData = $all_countries; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $country): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                     <option value="<?php echo e($country->id); ?>"><?php echo e($country->name); ?></option>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                </select>
                            </div>
                            <div class="form-group">
                                <input type="text" name="city" class="form-control" placeholder="<?php echo e(__('City')); ?>">
                            </div>
                            <div class="form-group">
                                <input type="password" name="password" class="form-control" placeholder="<?php echo e(__('Password')); ?>">
                            </div>
                            <div class="form-group">
                                <input type="password" name="password_confirmation" class="form-control" placeholder="<?php echo e(__('Confirm Password')); ?>">
                            </div>

                            <div class="form-group form-check col-12">
                                <input type="checkbox" class="form-check-input" name="agree_terms" id="Check11">
                                <label class="form-check-label" for="Check11">
                                   <?php echo e(__('By creating an account, you agree to the')); ?>

                                    <a href="<?php echo e(get_static_option('register_page_terms_of_service_url')); ?>"><?php echo e(__('terms of service and Conditions')); ?>,</a> <?php echo e(__('and')); ?>

                                    <a href="<?php echo e(get_static_option('register_page_privacy_policy_url')); ?>"><?php echo e(__('privacy policy')); ?></a>
                                </label>
                            </div>

                            <div class="form-group btn-wrapper">
                                <button type="submit" class="submit-btn boxed-btn reverse-color"><?php echo e(__('Register')); ?></button>
                            </div>
                            <div class="row mb-4 rmber-area">
                                <div class="col-12 text-center">
                                    <a href="<?php echo e(route('user.login')); ?>"><?php echo e(__('Already Have account?')); ?></a>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
<?php $__env->stopSection(); ?>
<?php $__env->startSection('scripts'); ?>
    <script src="https://www.google.com/recaptcha/api.js?render=<?php echo e(get_static_option('site_google_captcha_v3_site_key')); ?>"></script>
    <script>

        grecaptcha.ready(function() {
            grecaptcha.execute("<?php echo e(get_static_option('site_google_captcha_v3_site_key')); ?>", {action: 'homepage'}).then(function(token) {
                document.getElementById('gcaptcha_token').value = token;
            });
        });
    </script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('frontend.frontend-page-master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/xgenxchi/public_html/laravel/fundorex/@core/resources/views/frontend/user/register.blade.php ENDPATH**/ ?>
<?php $__env->startSection('section'); ?>
    <?php
         $text1 = __('Total Rewarded Amount till now :');
         $text2 = __('Available Redeemable Amount :');
    ?>
    <div class="heading-wrap d-flex justify-content-between margin-bottom-25">
        <h4 class="title"><?php echo e(__('All Redeems')); ?></h4>
        <br>
        <?php if(!empty($redeem_balance) && ($am = $redeem_balance - $total_requested_amount) > 0 ? $am : 0 ): ?>
        <div class="info">
            <h6><?php echo e($text1 . amount_with_currency_symbol($redeem_balance)); ?></h6>
            <h6><?php echo e($text2. amount_with_currency_symbol($am)); ?></h6>
        </div>
        <?php endif; ?>
        <div class="btn-wrapper">
            <a href="#" data-toggle="modal" data-target="#redeem_modal" class="boxed-btn reverse-color new_redeem_button"><?php echo e(__('New Redeem')); ?></a>
        </div>
    </div>
    <div class="table-responsive">
            <table class="table table-striped">
                <thead>
                <tr>
                    <th scope="col"><?php echo e(__('Information')); ?></th>
                    <th scope="col"> <?php echo e(__('Redeem Status')); ?></th>
                    <th scope="col"><?php echo e(__('Actions')); ?></th>
                </tr>
                </thead>
                <tbody>

                  <?php $__currentLoopData = $reward_redeem_logs; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $data): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <tr>
                        <td>
                            <ul>
                                <li><strong><?php echo e(__("Redeem Request Amount")); ?>:</strong> <?php echo e(amount_with_currency_symbol($data->withdraw_request_amount)); ?></li>
                                <li><strong><?php echo e(__("Payment Gateway")); ?>:</strong> <?php echo e($data->payment_gateway); ?></li>
                            </ul>
                        </td>
                        <td><?php if (isset($component)) { $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4 = $component; } ?>
<?php $component = $__env->getContainer()->make(Illuminate\View\AnonymousComponent::class, ['view' => 'components.status-span','data' => ['status' => $data->payment_status]]); ?>
<?php $component->withName('status-span'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php $component->withAttributes(['status' => \Illuminate\View\Compilers\BladeCompiler::sanitizeComponentAttribute($data->payment_status)]); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4)): ?>
<?php $component = $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4; ?>
<?php unset($__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4); ?>
<?php endif; ?></td>
                        <td>
                            <a href="<?php echo e(route('user.reward.redeem.view',$data->id)); ?>" target="_blank" class="btn btn-info"><i class="fas fa-eye"></i></a>
                        </td>
                    </tr>
                  <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                </tbody>
            </table>
        </div>

    <div class="blog-pagination">
         <?php echo e($reward_redeem_logs->links()); ?>

    </div>

    
    <div class="modal fade" id="redeem_modal" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h4><?php echo e(__('User Reward Redeem')); ?></h4>
                    <button type="button" class="close" data-dismiss="modal"><span>×</span></button>
                </div>
                <form action="<?php echo e(route('user.reward.redeem.submit')); ?>" method="post" id="reward_redeem_form">
                    <div class="modal-body">
                        <?php echo csrf_field(); ?>
                        <input type="hidden" name="user_id" value="" id="user_id">
                        <input type="hidden" name="reward_id" value="" id="reward_id">
                        <div class="withdraw_modal_msg_wrap" ></div>
                        <div class="form-group">
                            <label for="edit_name"><?php echo e(__('Redeemable Amount')); ?></label>
                            <input type="text" readonly class="redeemable_amount form-control">
                            <input type="hidden" name="r_amount" class="r_amount" value="<?php echo e($redeem_balance); ?>">
                        </div>
                        <div class="field_wrap d-block">
                            <div class="form-group">
                                <label for="edit_name"><?php echo e(__('Withdraw Amount')); ?></label>
                                <input type="number" min="1" class="form-control" name="withdraw_request_amount" id="withdraw_amount">
                                <div id="withdraw_able_amount_wrap"></div>
                            </div>
                            <div class="form-group">
                                <label for="edit_name"><?php echo e(__('Payment Gateway')); ?></label>
                                <select class="form-control" name="payment_gateway">
                                    <?php echo render_payment_gateway_select(); ?>

                                </select>
                            </div>

                            <div class="form-group">
                                <label for="edit_name"><?php echo e(__('Payment Account Details')); ?></label>
                                <textarea name="payment_account_details" cols="4" rows="4" class="form-control"></textarea>
                                <span class="info-text"><?php echo e(__('enter your selected payment gateway account details, where admin will send your withdrawal amount')); ?></span>
                            </div>

                            <div class="form-group">
                                <label for="edit_name"><?php echo e(__('Additional Comment ')); ?></label>
                                <textarea name="additional_comment_by_user" cols="4" rows="4" class="form-control"></textarea>
                                <span class="info-text"><?php echo e(__('leave any additional comment if you have any')); ?></span>
                            </div>
                            <button type="submit" class="submit-btn"><?php echo e(__('Submit')); ?></button>

                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
<?php $__env->stopSection(); ?>


<?php $__env->startSection('scripts'); ?>
    <script>

      (function($){
        "use strict";

        $(document).ready(function(){
            
       $(document).on('click','.mobile_nav',function(e){
          e.preventDefault(); 
           $(this).parent().toggleClass('show');
       });
            <?php if (isset($component)) { $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4 = $component; } ?>
<?php $component = $__env->getContainer()->make(Illuminate\View\AnonymousComponent::class, ['view' => 'components.btn.submit','data' => []]); ?>
<?php $component->withName('btn.submit'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php $component->withAttributes([]); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4)): ?>
<?php $component = $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4; ?>
<?php unset($__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4); ?>
<?php endif; ?>

         var withdrawAbleAmount = 0;
            $(document).on('click','.new_redeem_button',function(){
                var r_amount =  $('.r_amount').val();
                var value = $(this).val();
                var modalForm = $('#reward_redeem_form');
                $.ajax({
                    type: 'POST',
                    url: "<?php echo e(route('user.reward.redeem.check')); ?>",
                    data: {
                        amount: r_amount,
                        _token : "<?php echo e(csrf_token()); ?>"
                    },
                    success: function (data){
                        $('.redeemable_amount').val( '<?php echo e(site_currency_symbol()); ?>' +data.available_amount);

                        if(data.available_amount < 1){
                            modalForm.find('.withdraw_modal_msg_wrap').append('<p class="text-danger text-capitalize"><?php echo e(__('does not have amount to withdraw from this cause')); ?></p>');
                            modalForm.find('.field_wrap').removeClass('d-block').addClass('d-none');
                        }
                    }
                });

            });

        $(document).on('keyup','#withdraw_amount',function (){
            var value = $(this).val();
            var modalForm = $('#reward_redeem_form');
            var amountWrap = $('#withdraw_able_amount_wrap');
            var r_amount =  $('.r_amount').val();


            $.ajax({
                type: 'POST',
                url: "<?php echo e(route('user.reward.redeem.check')); ?>",
                data: {
                    amount: r_amount,
                    _token : "<?php echo e(csrf_token()); ?>"
                },
                success: function (data){
                    withdrawAbleAmount = data.available_amount;

                    if (withdrawAbleAmount < value){
                        modalForm.find('#withdraw_able_amount_wrap').html('<p class="text-danger"><?php echo e(__('You can not redeem avobe')); ?> ' +withdrawAbleAmount+ '<?php echo e(get_static_option('site_global_currency')); ?></p>');
                    }else{
                        modalForm.find('#withdraw_able_amount_wrap').html('');
                    }

                    if(value > withdrawAbleAmount){
                        modalForm.find('button[type="submit"]').attr('disabled',true);
                    }else{
                        modalForm.find('button[type="submit"]').attr('disabled',false);
                    }
                }
            });
        });


        })
      })(jQuery);

    </script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('frontend.user.dashboard.user-master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/xgenxchi/public_html/laravel/fundorex/beta/@core/resources/views/frontend/user/dashboard/reward/reward-redeem-log.blade.php ENDPATH**/ ?>
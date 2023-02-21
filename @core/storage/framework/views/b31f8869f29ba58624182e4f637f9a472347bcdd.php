<?php $__env->startSection('site-title'); ?>
    <?php echo e(__('All Rewards')); ?>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('style'); ?>
    <?php if (isset($component)) { $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4 = $component; } ?>
<?php $component = $__env->getContainer()->make(Illuminate\View\AnonymousComponent::class, ['view' => 'components.datatable.css','data' => []]); ?>
<?php $component->withName('datatable.css'); ?>
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

    <div class="col-lg-12 col-ml-12 padding-bottom-30">
        <div class="row">
            <div class="col-lg-12">
                <div class="margin-top-40"></div>
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
            </div>
            <div class="col-lg-12 mt-5">
                <div class="card">
                    <div class="card-body">
                        <h4 class="header-title"> <?php echo e(__('All Rewards')); ?></h4>
                        <div class="bulk-delete-wrapper">
                            <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('reward-delete')): ?>
                                <div class="select-box-wrap">
                                    <?php if (isset($component)) { $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4 = $component; } ?>
<?php $component = $__env->getContainer()->make(Illuminate\View\AnonymousComponent::class, ['view' => 'components.bulk-action','data' => []]); ?>
<?php $component->withName('bulk-action'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php $component->withAttributes([]); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4)): ?>
<?php $component = $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4; ?>
<?php unset($__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4); ?>
<?php endif; ?>
                                </div>
                            <?php endif; ?>
                            <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('reward-create')): ?>
                                <div class="btn-wrapper">
                                    <a href="" data-toggle="modal" data-target="#new_reward_modal"
                                       class="btn btn-info pull-right mb-4 .new_reward_btn"><?php echo e(__('Add New')); ?></a>
                                </div>
                            <?php endif; ?>
                        </div>

                        <small class="text-primary"><?php echo e(__('Please put your rewards like (1-20, 21-50, 51-100 and so on like this sequence)')); ?></small>

                        <div class="table-wrap table-responsive">
                            <table class="table table-default">
                                <thead>
                                <?php if (isset($component)) { $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4 = $component; } ?>
<?php $component = $__env->getContainer()->make(Illuminate\View\AnonymousComponent::class, ['view' => 'components.bulk-th','data' => []]); ?>
<?php $component->withName('bulk-th'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php $component->withAttributes([]); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4)): ?>
<?php $component = $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4; ?>
<?php unset($__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4); ?>
<?php endif; ?>
                                <th><?php echo e(__('ID')); ?></th>
                                <th><?php echo e(__('Title')); ?></th>
                                <th><?php echo e(__('From')); ?></th>
                                <th><?php echo e(__('To')); ?></th>
                                <th><?php echo e(__('Reward Point')); ?></th>
                                <th><?php echo e(__('Reward Amount')); ?></th>
                                <th><?php echo e(__('Reward Expire Date')); ?></th>
                                <th><?php echo e(__('Status')); ?></th>
                                <th><?php echo e(__('Action')); ?></th>
                                </thead>
                                <tbody>
                                <?php $__currentLoopData = $all_reward; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $data): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <tr>
                                        <td>
                                            <?php if (isset($component)) { $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4 = $component; } ?>
<?php $component = $__env->getContainer()->make(Illuminate\View\AnonymousComponent::class, ['view' => 'components.bulk-delete-checkbox','data' => ['id' => $data->id]]); ?>
<?php $component->withName('bulk-delete-checkbox'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php $component->withAttributes(['id' => \Illuminate\View\Compilers\BladeCompiler::sanitizeComponentAttribute($data->id)]); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4)): ?>
<?php $component = $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4; ?>
<?php unset($__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4); ?>
<?php endif; ?>
                                        </td>
                                        <td><?php echo e($data->id); ?></td>
                                        <td><?php echo e($data->reward_title); ?></td>
                                        <td><?php echo e(amount_with_currency_symbol($data->reward_goal_from)); ?></td>
                                        <td><?php echo e(amount_with_currency_symbol($data->reward_goal_to)); ?></td>
                                        <td><?php echo e($data->reward_point); ?></td>
                                        <td><?php echo e(amount_with_currency_symbol($data->reward_amount)); ?></td>
                                        <td><?php echo e(date('d-m-Y',strtotime($data->reward_expire_date))); ?></td>
                                        <td>
                                            <?php if (isset($component)) { $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4 = $component; } ?>
<?php $component = $__env->getContainer()->make(Illuminate\View\AnonymousComponent::class, ['view' => 'components.status-span','data' => ['status' => $data->status]]); ?>
<?php $component->withName('status-span'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php $component->withAttributes(['status' => \Illuminate\View\Compilers\BladeCompiler::sanitizeComponentAttribute($data->status)]); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4)): ?>
<?php $component = $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4; ?>
<?php unset($__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4); ?>
<?php endif; ?>
                                        </td>
                                        <td>
                                            <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('reward-delete')): ?>
                                                <?php if (isset($component)) { $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4 = $component; } ?>
<?php $component = $__env->getContainer()->make(Illuminate\View\AnonymousComponent::class, ['view' => 'components.delete-popover','data' => ['url' => route('admin.reward.delete',$data->id)]]); ?>
<?php $component->withName('delete-popover'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php $component->withAttributes(['url' => \Illuminate\View\Compilers\BladeCompiler::sanitizeComponentAttribute(route('admin.reward.delete',$data->id))]); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4)): ?>
<?php $component = $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4; ?>
<?php unset($__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4); ?>
<?php endif; ?>
                                            <?php endif; ?>

                                            <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('reward-edit')): ?>
                                                <a href="#"
                                                   data-toggle="modal"
                                                   data-target="#reward_item_edit_modal"
                                                   class="btn btn-primary btn-xs mb-3 mr-1 reward_edit_btn"
                                                   data-id="<?php echo e($data->id); ?>"
                                                   data-reward_title="<?php echo e($data->reward_title); ?>"
                                                   data-reward_goal_from="<?php echo e($data->reward_goal_from); ?>"
                                                   data-reward_goal_to="<?php echo e($data->reward_goal_to); ?>"
                                                   data-reward_amount="<?php echo e($data->reward_amount); ?>"
                                                   data-reward_point="<?php echo e($data->reward_point); ?>"
                                                   data-reward_expire_date="<?php echo e(date('d-m-Y',strtotime($data->reward_expire_date))); ?>"
                                                   data-status="<?php echo e($data->status); ?>">
                                                    <i class="ti-pencil"></i>
                                                </a>

                                            <?php endif; ?>
                                        </td>
                                    </tr>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                </tbody>
                            </table>
                        </div>

                    </div>
                </div>
            </div>
            <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('reward-create')): ?>
                <div class="modal fade" id="new_reward_modal" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title"><?php echo e(__('New Reward Item')); ?></h5>
                                <button type="button" class="close" data-dismiss="modal"><span>×</span></button>
                            </div>
                            <form action="<?php echo e(route('admin.reward')); ?>" method="post" enctype="multipart/form-data">
                                <div class="modal-body">
                                    <?php echo csrf_field(); ?>
                                    <div class="form-group">
                                        <label for="edit_name"><?php echo e(__('Title')); ?></label>
                                        <input type="text" class="form-control" name="reward_title"
                                               placeholder="<?php echo e(__('Title')); ?>">
                                    </div>

                                <div class="row">
                                    <div class="form-group col-md-6">
                                        <label for="edit_designation"><?php echo e(__('Reward Goal From')); ?></label>
                                        <input type="number" class="form-control reward_goal_from_add" name="reward_goal_from"
                                               placeholder="<?php echo e(__('Reward Goal From')); ?>">
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label><?php echo e(__('Reward Goal To')); ?></label>
                                        <input type="number" class="form-control reward_goal_to_add" name="reward_goal_to"
                                               placeholder="<?php echo e(__('Reward Goal To')); ?>">
                                    </div>
                                </div>

                                    <div class="form-group">
                                        <label><?php echo e(__('Reward Point')); ?></label>
                                        <input type="number" class="form-control reward_point_add" name="reward_point"
                                               placeholder="<?php echo e(__('Reward Point')); ?>">
                                    </div>

                                    <input type="hidden" class="form-control reward_amount_add_database"
                                           placeholder="<?php echo e(__('Reward Amount')); ?>" name="reward_amount" >

                                    <div class="form-group">
                                        <label><?php echo e(__('Reward Amount')); ?></label>
                                        <input type="text" class="form-control reward_amount_add_show"
                                               placeholder="<?php echo e(__('Reward Amount')); ?>" disabled>
                                    </div>

                                    <div class="form-group">
                                        <label><?php echo e(__('Reward Expire Date')); ?></label>
                                        <input type="date" class="form-control date-flat" name="reward_expire_date"
                                               placeholder="<?php echo e(__('Reward Expire Date')); ?>">
                                    </div>

                                    <div class="form-group">
                                        <label for="edit_status"><?php echo e(__('Status')); ?></label>
                                        <select name="status" class="form-control">
                                            <option value="publish"><?php echo e(__('Publish')); ?></option>
                                            <option value="draft"><?php echo e(__('Draft')); ?></option>
                                        </select>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary"
                                            data-dismiss="modal"><?php echo e(__('Close')); ?></button>
                                    <button type="submit" class="btn btn-primary"><?php echo e(__('Save Changes')); ?></button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            <?php endif; ?>

            <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('reward-edit')): ?>
                <div class="modal fade" id="reward_item_edit_modal" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title"><?php echo e(__('Edit Reward Item')); ?></h5>
                                <button type="button" class="close" data-dismiss="modal"><span>×</span></button>
                            </div>
                            <form action="<?php echo e(route('admin.reward.update')); ?>" id="reward_edit_modal_form" method="post"
                                  enctype="multipart/form-data">
                                <div class="modal-body">
                                    <?php echo csrf_field(); ?>
                                    <input type="hidden" name="id" id="reward_id" value="">
                                    <div class="form-group">
                                        <label for="edit_name"><?php echo e(__('Title')); ?></label>
                                        <input type="text" class="form-control" name="reward_title" id="reward_title"
                                               placeholder="<?php echo e(__('Title')); ?>">
                                    </div>
                                    <div class="row">
                                        <div class="form-group col-md-6">
                                            <label for="edit_designation"><?php echo e(__('Reward Goal From')); ?></label>
                                            <input type="number" class="form-control" name="reward_goal_from" id="reward_goal_from"
                                                   placeholder="<?php echo e(__('Reward Goal From')); ?>">
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label><?php echo e(__('Reward Goal To')); ?></label>
                                            <input type="number" class="form-control" name="reward_goal_to" id="reward_goal_to"
                                                   placeholder="<?php echo e(__('Reward Goal To')); ?>">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label><?php echo e(__('Reward Point')); ?></label>
                                        <input type="text" class="form-control reward_point_edit" name="reward_point" id="reward_point"
                                               placeholder="<?php echo e(__('Reward Point')); ?>">
                                    </div>

                                    <input type="hidden" class="form-control reward_amount_edit_database" name="reward_amount"
                                           placeholder="<?php echo e(__('Reward Amount')); ?>">
                                    <div class="form-group">
                                        <label><?php echo e(__('Reward Amount')); ?></label>
                                        <input type="text" class="form-control reward_amount_edit" id="reward_amount"
                                               placeholder="<?php echo e(__('Reward Amount')); ?>" disabled>
                                    </div>

                                    <div class="form-group">
                                        <label><?php echo e(__('Reward Expire Date')); ?></label>
                                        <input type="date" class="form-control reward_expire_date date-flat" name="reward_expire_date"
                                               placeholder="<?php echo e(__('Reward Expire Date')); ?>">
                                    </div>
                                    <div class="form-group">
                                        <label for="edit_status"><?php echo e(__('Status')); ?></label>
                                        <select name="status" class="form-control" id="edit_status">
                                            <option value="publish"><?php echo e(__('Publish')); ?></option>
                                            <option value="draft"><?php echo e(__('Draft')); ?></option>
                                        </select>
                                    </div>

                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary"
                                            data-dismiss="modal"><?php echo e(__('Close')); ?></button>
                                    <button type="submit" class="btn btn-primary"><?php echo e(__('Save Changes')); ?></button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            <?php endif; ?>
<?php $__env->stopSection(); ?>

 <?php $__env->startSection('script'); ?>

<script src="<?php echo e(asset('assets/backend/js/flatpickr.js')); ?>"></script>
<script>
    //Date Picker
    flatpickr('.date-flat', {
        enableTime: false,
        dateFormat: "Y-m-d",
    });
</script>
        <script>
            (function ($) {
                "use strict";

                $(document).ready(function () {
                    $('.reward_amount_add_show').prop('disabled', true);
                    <?php if (isset($component)) { $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4 = $component; } ?>
<?php $component = $__env->getContainer()->make(Illuminate\View\AnonymousComponent::class, ['view' => 'components.bulk-action-js','data' => ['url' => route('admin.reward.bulk.action')]]); ?>
<?php $component->withName('bulk-action-js'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php $component->withAttributes(['url' => \Illuminate\View\Compilers\BladeCompiler::sanitizeComponentAttribute(route('admin.reward.bulk.action'))]); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4)): ?>
<?php $component = $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4; ?>
<?php unset($__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4); ?>
<?php endif; ?>
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
                    <?php if (isset($component)) { $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4 = $component; } ?>
<?php $component = $__env->getContainer()->make(Illuminate\View\AnonymousComponent::class, ['view' => 'components.btn.update','data' => []]); ?>
<?php $component->withName('btn.update'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php $component->withAttributes([]); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4)): ?>
<?php $component = $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4; ?>
<?php unset($__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4); ?>
<?php endif; ?>

                    //Add Point Amount
                    $(document).on('keyup','.reward_point_add',function(e){
                        e.preventDefault();
                        let po = $(this).val();

                        let global_point = "<?php echo e(get_static_option('reward_amount_for_point')); ?>";
                        let amount_calculation = po / global_point;
                         $('.reward_amount_add_show').val('<?php echo e(site_currency_symbol()); ?>' + amount_calculation);
                         $('.reward_amount_add_database').val(amount_calculation);
                    })

                    //Edit Point Amount
                    $(document).on('keyup','.reward_point_edit',function(e){
                        e.preventDefault();
                        let po = $(this).val();
                        let global_point = "<?php echo e(get_static_option('reward_amount_for_point')); ?>";
                        let amount_calculation = po / global_point;

                        $('.reward_amount_edit').val('<?php echo e(site_currency_symbol()); ?>' + amount_calculation);
                        $('.reward_amount_edit_database').val(amount_calculation);
                    })

                    $(document).on('click', '.reward_edit_btn', function () {
                        var el = $(this);
                        var id = el.data('id');

                        var title = el.data('reward_title');
                        var goal_from = el.data('reward_goal_from');
                        var goal_to = el.data('reward_goal_to');
                        var amount = el.data('reward_amount');
                        var point = el.data('reward_point');
                        var date = el.data('reward_expire_date');
                        var status = el.data('status');
                        var action = el.data('action');

                        console.log(action)

                        var form = $('#reward_item_edit_modal');
                        form.attr('action', action);
                        form.find('#reward_id').val(id);

                        form.find('#reward_title').val(title);
                        form.find('#reward_goal_from').val(goal_from);
                        form.find('#reward_goal_to').val(goal_to);
                        form.find('.reward_amount_edit').val('<?php echo e(site_currency_symbol()); ?>' +amount);
                        form.find('#reward_point').val(point);
                        form.find('.reward_expire_date').val(date);
                        form.find('#edit_status option[value="'+status+'"]').attr('selected',true);

                    });
                });
            })(jQuery)



        </script>

        <?php if (isset($component)) { $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4 = $component; } ?>
<?php $component = $__env->getContainer()->make(Illuminate\View\AnonymousComponent::class, ['view' => 'components.datatable.js','data' => []]); ?>
<?php $component->withName('datatable.js'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php $component->withAttributes([]); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4)): ?>
<?php $component = $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4; ?>
<?php unset($__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4); ?>
<?php endif; ?>
        <script src="<?php echo e(asset('assets/backend/js/dropzone.js')); ?>"></script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('backend.admin-master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/xgenxchi/public_html/laravel/fundorex/@core/resources/views/backend/pages/reward/reward.blade.php ENDPATH**/ ?>

<?php $__env->startSection('site-title'); ?>
    <?php echo e(__('Tax Certificate Requests')); ?>

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
                        <h4 class="header-title"><?php echo e(__('All Tax Certificate Request Items')); ?></h4>
                        <div class="note ">
                            <p class="text-success">Note : <?php echo e(__('You need to generate a certificate first than download it, after that you have to attach the downloaded file with clicking (Send Certificate) to send your  user.')); ?></p>
                        </div>

                        <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('user-tax-delete')): ?>
                        <div class="bulk-delete-wrapper">
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
                        </div>
                        <?php endif; ?>

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
                                <th><?php echo e(__('Username')); ?></th>
                                <th><?php echo e(__('Title')); ?></th>
                                <th><?php echo e(__('Start Date')); ?></th>
                                <th><?php echo e(__('End Date ')); ?></th>
                                <th><?php echo e(__('Certificate ')); ?></th>
                                <th><?php echo e(__('Status')); ?></th>
                                <th><?php echo e(__('Action')); ?></th>
                                </thead>
                                <tbody>
                                <?php $__currentLoopData = $all_certificate_requests; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $data): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <tr>
                                        <td><?php if (isset($component)) { $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4 = $component; } ?>
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
<?php endif; ?></td>
                                        <td><?php echo e($data->id); ?></td>
                                        <td><?php echo e(optional($data->user)->name); ?></td>
                                        <td><?php echo e($data->title); ?></td>
                                        <td><?php echo e(date('d-m-Y',strtotime($data->start_date))); ?></td>
                                        <td><?php echo e(date('d-m-Y',strtotime($data->end_date))); ?></td>
                                        <td>
                                            <?php if(!is_null($data->attachment)): ?>
                                                <a class="btn btn-success" download="" href="<?php echo e(url('assets/uploads/certificate/'.$data->attachment)); ?>"><?php echo e(__('Download')); ?></a>
                                                <a class="btn btn-info" target="_blank" href="<?php echo e(url('assets/uploads/certificate/'.$data->attachment)); ?>"><i class="fas fa-eye"></i></a>
                                            <?php endif; ?>
                                        </td>
                                        <td>
                                            <?php if($data->status == 'pending'): ?>
                                                <span class="badge badge-warning"><?php echo e(__('Pending')); ?></span>
                                            <?php else: ?>
                                                <span class="badge badge-success"><?php echo e(__('Submited')); ?></span>
                                            <?php endif; ?>
                                        </td>
                                        <td>
                                            <a class="btn btn-warning btn-sm mb-3 certificate_modal_button"
                                               data-toggle="modal"
                                               data-id="<?php echo e($data->id); ?>"
                                               data-start_date="<?php echo e(date('d-m-Y',strtotime($data->start_date))); ?>"
                                               data-end_date="<?php echo e(date('d-m-Y',strtotime($data->end_date))); ?>"
                                               data-target="#certificate_modal"><?php echo e(__('Create Certificate')); ?></a>

                                            <a class="btn btn-info text-white mb-3 send_certificate_modal"
                                               data-toggle="modal"
                                               data-id="<?php echo e($data->id); ?>"
                                               data-name="<?php echo e(optional($data->user)->name); ?>"
                                               data-target="#certificate_send_modal"><?php echo e(__('Send Certificate')); ?></a>

                                            <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('user-tax-delete')): ?>
                                            <?php if (isset($component)) { $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4 = $component; } ?>
<?php $component = $__env->getContainer()->make(Illuminate\View\AnonymousComponent::class, ['view' => 'components.delete-popover','data' => ['url' => route('admin.tax.request.delete',$data->id)]]); ?>
<?php $component->withName('delete-popover'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php $component->withAttributes(['url' => \Illuminate\View\Compilers\BladeCompiler::sanitizeComponentAttribute(route('admin.tax.request.delete',$data->id))]); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4)): ?>
<?php $component = $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4; ?>
<?php unset($__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4); ?>
<?php endif; ?>
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


    
        <div class="modal fade" id="certificate_modal" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title"><?php echo e(__('Generate Certificate')); ?></h5>
                        <button type="button" class="close" data-dismiss="modal"><span>×</span></button>
                    </div>
                    <div class="another-content ml-4 my-2">
                        <span><?php echo e(__('According :')); ?> <strong class="show_start_date"></strong> to  <strong class="show_end_date"></strong> </span>
                    </div>
                    <form action="<?php echo e(route('admin.tax.generate.certificate')); ?>" method="get" enctype="multipart/form-data">
                        <div class="modal-body">
                            <input type="hidden" id="request_id" name="request_id">
                            <div class="form-group">
                                <label for="edit_name"><?php echo e(__('Title')); ?></label>
                                <input type="text" class="form-control" name="title"
                                       placeholder="<?php echo e(__('Title')); ?>">
                            </div>

                            <div class="form-group">
                                <label for="edit_description"><?php echo e(__('Description')); ?></label>
                                <textarea class="form-control" name="description"
                                          placeholder="<?php echo e(__('Description')); ?>" cols="30" rows="5"></textarea>
                            </div>

                            <div class="form-group">
                                <label for="edit_description"><?php echo e(__('Note')); ?></label>
                                <textarea class="form-control" name="note"
                                          placeholder="<?php echo e(__('Note Details')); ?>" cols="30" rows="4"></textarea>
                            </div>

                            <div class="form-group">
                                <label for="edit_description"><?php echo e(__('Certificate Date')); ?></label>
                                <input type="date" class="form-control date" name="date">
                            </div>

                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary"
                                    data-dismiss="modal"><?php echo e(__('Close')); ?></button>
                            <button type="submit" class="btn btn-primary"><?php echo e(__('Generate Certificate')); ?></button>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        
            <div class="modal fade" id="certificate_send_modal" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title"><?php echo e(__('Send Certificate')); ?></h5>
                            <button type="button" class="close" data-dismiss="modal"><span>×</span></button>
                        </div>
                        <div class="another-content ml-4 my-2">
                            <span><?php echo e(__('Send To :')); ?> <strong class="send_user_name"></strong> </span>
                        </div>
                        <form action="<?php echo e(route('admin.tax.generate.certificate.send')); ?>" method="post" enctype="multipart/form-data">
                            <?php echo csrf_field(); ?>
                            <div class="modal-body">
                                <input type="hidden" id="certificate_id" name="id">
                                <div class="form-group">
                                    <label for="edit_name"><?php echo e(__('Attach Certificate')); ?></label>
                                    <input type="file" class="form-control" name="attachment">
                                    <small><?php echo e(__('Please generate a certificate than attach here and send..!')); ?></small>
                                </div>

                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary"
                                        data-dismiss="modal"><?php echo e(__('Close')); ?></button>
                                <button type="submit" class="btn btn-primary"><?php echo e(__('Send Certificate')); ?></button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

 <?php $__env->stopSection(); ?>

<?php $__env->startSection('script'); ?>

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

    <script>
        (function($){
            "use strict";
            $(document).ready(function () {
                <?php if (isset($component)) { $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4 = $component; } ?>
<?php $component = $__env->getContainer()->make(Illuminate\View\AnonymousComponent::class, ['view' => 'components.bulk-action-js','data' => ['url' => route('admin.tax.request.bulk.action')]]); ?>
<?php $component->withName('bulk-action-js'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php $component->withAttributes(['url' => \Illuminate\View\Compilers\BladeCompiler::sanitizeComponentAttribute(route('admin.tax.request.bulk.action'))]); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4)): ?>
<?php $component = $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4; ?>
<?php unset($__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4); ?>
<?php endif; ?>
                    $(document).on('click', '.certificate_modal_button', function () {
                        var el = $(this);
                        var id = el.data('id');
                        var start = el.data('start_date');
                        var end = el.data('end_date');
                        $('.show_start_date').text(start);
                        $('.show_end_date').text(end);
                        var modal = $('#certificate_modal');
                        modal.find('#request_id').val(id);

                    });

                $(document).on('click', '.send_certificate_modal', function () {
                    var el = $(this);
                    var id = el.data('id');
                    var username = el.data('name');
                    $('.send_user_name').text(username);
                    var modal = $('#certificate_send_modal');
                    modal.find('#certificate_id').val(id);

                });
            });
        })(jQuery);
    </script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('backend.admin-master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/xgenxchi/public_html/laravel/fundorex/@core/resources/views/backend/pages/tax-certificate/all-requests.blade.php ENDPATH**/ ?>

<?php $__env->startSection('site-title'); ?>
    <?php echo e(__('Tax Request Logs')); ?>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('style'); ?>
    <link rel="stylesheet" href="<?php echo e(asset('assets/backend/css/flatpickr.min.css')); ?>">
<?php $__env->stopSection(); ?>

<?php $__env->startSection('section'); ?>
 <div class="form-header-wrap margin-bottom-20 d-flex justify-content-between">
     <h3 class="mb-3"><?php echo e(__('Tax Request Logs')); ?></h3>

     <div class="btn-wrapper pull-right">
         <a href="#" data-toggle="modal" data-target="#submit_tax_request_modal" class="btn btn-info btn-sm"><?php echo e(__('Request Certificate')); ?></a>
     </div>
 </div>

 <div class="table-wrap table-responsive all-user-campaign-table">
     <table class="table table-defaul" id="all_blog_table">
         <thead class="bg-dark text-light" style="margin-bottom:20px;">
             <th><?php echo e(__('Log ID ')); ?></th>
             <th><?php echo e(__('User ID ')); ?></th>
             <th><?php echo e(__('Title')); ?></th>
             <th><?php echo e(__('Required Date')); ?></th>
             <th><?php echo e(__('Status')); ?></th>
             <th><?php echo e(__('Certificate')); ?></th>
         </thead>
         <tbody>
         <?php $__currentLoopData = $all_request_tax_logs; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $data): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
             <tr>
                 <td><?php echo e($data->id); ?></td>
                 <td><?php echo e($data->user_id); ?></td>
                 <td><?php echo e($data->title); ?></td>

                 <?php
                    $start_date = date('d-m-Y',strtotime($data->start_date));
                    $end_date = date('d-m-Y',strtotime($data->end_date));
                 ?>
                 <td><?php echo e($start_date . ' to ' . $end_date); ?></td>
                 <td>
                        <?php if($data->status == 'pending'): ?>
                            <span class="badge badge-warning"><?php echo e(__('Requested')); ?></span>
                        <?php else: ?>
                            <span class="badge badge-success"><?php echo e(__('Received')); ?></span>
                        <?php endif; ?>
                 </td>
                 <td>
                     <?php if(!is_null($data->attachment)): ?>
                         <a class="btn btn-success" download="" href="<?php echo e(url('assets/uploads/certificate/'.$data->attachment)); ?>"><?php echo e(__('Download')); ?></a>
                     <?php endif; ?>
                 </td>
             </tr>
         <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
         </tbody>
     </table>
 </div>


 <div class="modal fade" id="submit_tax_request_modal" aria-hidden="true">
     <div class="modal-dialog">
         <div class="modal-content">
             <div class="modal-header">
                 <h4><?php echo e(__('Request For Tax Certificate')); ?></h4>
                 <button type="button" class="close" data-dismiss="modal"><span>×</span></button>
             </div>
             <form action="<?php echo e(route('user.home.tax.request.store')); ?>" method="post" id="donation_withdraw_form">
                 <div class="modal-body">
                     <?php echo csrf_field(); ?>
                     <input type="hidden" name="user_id" value="<?php echo e(auth()->guard('web')->user()->id); ?>">
                     <div class="form-group">
                         <label for="edit_name"><?php echo e(__('Title')); ?></label>
                         <input type="text" class="form-control" name="title" placeholder="Title">
                     </div>

                     <div class="form-group">
                         <label for="edit_name"><?php echo e(__('Start Date')); ?></label>
                         <input type="date" class="form-control date" name="start_date" >
                     </div>

                     <div class="form-group">
                         <label for="edit_name"><?php echo e(__('End Date')); ?></label>
                         <input type="date" class="form-control date" name="end_date" >
                     </div>

                     <button type="submit" class="btn btn-primary"><?php echo e(__('Submit')); ?></button>

                 </div>
             </form>
         </div>
     </div>
 </div>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('scripts'); ?>
    <script src="<?php echo e(asset('assets/backend/js/flatpickr.js')); ?>"></script>
    <script>
        //Date Picker
        flatpickr('.date', {
            enableTime: false,
            dateFormat: "Y-m-d",
        });
    </script>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('frontend.user.dashboard.user-master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /Users/xgenious/Desktop/xgenious/localhost/fundorex-with-api/@core/resources/views/frontend/user/dashboard/tax-request-log.blade.php ENDPATH**/ ?>
<?php $__env->startSection('site-title'); ?>
    <?php echo e(__('New Job Post')); ?>

<?php $__env->stopSection(); ?>
<?php $__env->startSection('style'); ?>
    <link rel="stylesheet" href="<?php echo e(asset('assets/backend/css/bootstrap-tagsinput.css')); ?>">
    <link rel="stylesheet" href="<?php echo e(asset('assets/backend/css/dropzone.css')); ?>">
    <link rel="stylesheet" href="<?php echo e(asset('assets/backend/css/media-uploader.css')); ?>">
    <link rel="stylesheet" href="<?php echo e(asset('assets/backend/css/summernote-bs4.css')); ?>">
<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>
    <div class="col-lg-12 col-ml-12 padding-bottom-30">
        <div class="row">
            <!-- basic form start -->
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
                        <h4 class="header-title"><?php echo e(__('Add New Job Post')); ?>

                            <a class="btn btn-info btn-sm pull-right mb-3" href="<?php echo e(route('admin.jobs.all')); ?>"><?php echo e(__('All Jobs ')); ?></a>
                        </h4>
                        <form action="<?php echo e(route('admin.jobs.new')); ?>" method="post" enctype="multipart/form-data">
                            <?php echo csrf_field(); ?>
                            <div class="row">
                                <div class="col-lg-12">

                                    <div class="form-group">
                                        <label for="title"><?php echo e(__('Title')); ?></label>
                                        <input type="text" class="form-control"  id="title" name="title" value="<?php echo e(old('title')); ?>" placeholder="<?php echo e(__('Title')); ?>">
                                    </div>


                                    <div class="form-group permalink_label">
                                        <label class="text-dark"><?php echo e(__('Permalink / Slug * : ')); ?>

                                            <span id="slug_show" class="display-inline"></span>
                                            <span id="slug_edit" class="display-inline">
                                         <button class="btn btn-warning btn-sm ml-1 px-2 py-1 slug_edit_button"> <i class="fas fa-edit"></i> </button>
                                        <input type="text" name="slug" class="form-control blog_slug mt-2" style="display: none">
                                          <button class="btn btn-info btn-sm slug_update_button mt-2 px-2 py-1" style="display: none"><?php echo e(__('Update')); ?></button>
                                    </span>
                                    </label>
                                  </div>


                                    <div class="form-group">
                                        <label for="meta_tags"><?php echo e(__('Meta Tags')); ?></label>
                                        <input type="text" name="meta_tags"  class="form-control" data-role="tagsinput" id="meta_tags">
                                    </div>
                                    <div class="form-group">
                                        <label for="meta_description"><?php echo e(__('Meta Description')); ?></label>
                                        <textarea name="meta_description"  class="form-control" rows="5" id="meta_description"></textarea>
                                    </div>
                                    <div class="form-group">
                                        <label for="position"><?php echo e(__('Job Position')); ?></label>
                                        <input type="text" class="form-control"  id="position" name="position" value="<?php echo e(old('position')); ?>" placeholder="<?php echo e(__('Position')); ?>">
                                    </div>
                                    <div class="form-group">
                                        <label for="company_name"><?php echo e(__('Company Name')); ?></label>
                                        <input type="text" class="form-control"  id="company_name" value="<?php echo e(old('company_name')); ?>"  name="company_name" placeholder="<?php echo e(__('Company Name')); ?>">
                                    </div>
                                    <div class="form-group">
                                        <label for="category"><?php echo e(__('Category')); ?></label>
                                        <select name="category_id" class="form-control" id="category">
                                            <option value=""><?php echo e(__("Select Category")); ?></option>
                                            <?php $__currentLoopData = $all_category; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $category): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                <option value="<?php echo e($category->id); ?>"><?php echo e($category->title); ?></option>
                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label for="vacancy"><?php echo e(__('Vacancy')); ?></label>
                                        <input type="number" class="form-control"  id="vacancy" value="<?php echo e(old('vacancy')); ?>" name="vacancy" placeholder="<?php echo e(__('Vacancy')); ?>">
                                    </div>
                                    <div class="form-group">
                                        <label for="job_context"><?php echo e(__('Job Context')); ?></label>
                                        <input type="hidden" name="job_context" >
                                        <div class="summernote" ></div>
                                    </div>
                                    <div class="form-group">
                                        <label for="job_responsibility"><?php echo e(__('Job Responsibility')); ?></label>
                                        <input type="hidden" name="job_responsibility" >
                                        <div class="summernote" ></div>
                                    </div>
                                    <div class="form-group">
                                        <label for="education_requirement"><?php echo e(__('Educational Requirements')); ?></label>
                                        <input type="hidden" name="education_requirement">
                                        <div class="summernote"></div>
                                    </div>
                                    <div class="form-group">
                                        <label for="experience_requirement"><?php echo e(__('Experience Requirements')); ?></label>
                                        <input type="hidden" name="experience_requirement">
                                        <div class="summernote"></div>
                                    </div>
                                    <div class="form-group">
                                        <label for="additional_requirement"><?php echo e(__('Additional Requirements')); ?></label>
                                        <input type="hidden" name="additional_requirement" >
                                        <div class="summernote" ></div>
                                    </div>
                                    <div class="form-group">
                                        <label for="employment_status"><?php echo e(__('Employment Status')); ?></label>
                                        <select name="employment_status" id="employment_status"  class="form-control">
                                            <option value="full_time"><?php echo e(__('Full-Time')); ?></option>
                                            <option value="part_time"><?php echo e(__('Part-Time')); ?></option>
                                            <option value="project_based"><?php echo e(__('Project Based')); ?></option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label for="job_location"><?php echo e(__('Job Location')); ?></label>
                                        <input type="text" class="form-control"  id="job_location" name="job_location" value="<?php echo e(old('job_location')); ?>" placeholder="<?php echo e(__('Job Location')); ?>">
                                    </div>
                                    <div class="form-group">
                                        <label for="other_benefits"><?php echo e(__('Compensation & Other Benefits')); ?></label>
                                        <input type="hidden" name="other_benefits">
                                        <div class="summernote" ></div>
                                    </div>
                                    <div class="form-group">
                                        <label for="salary"><?php echo e(__('Salary')); ?></label>
                                        <input type="text" class="form-control"  id="salary" name="salary" value="<?php echo e(old('salary')); ?>" placeholder="<?php echo e(__('Salary')); ?>">
                                    </div>
                                    <div class="form-group">
                                        <label for="deadline"><?php echo e(__('Deadline')); ?></label>
                                        <input type="date" class="form-control"  id="deadline" name="deadline" placeholder="<?php echo e(__('Deadline')); ?>">
                                    </div>
                                    <div class="form-group">
                                        <label for="application_fee_status"><strong><?php echo e(__('Enable Application Fee')); ?></strong></label>
                                        <label class="switch">
                                            <input type="checkbox" name="application_fee_status">
                                            <span class="slider"></span>
                                        </label>
                                    </div>
                                    <div class="form-group">
                                        <label for="application_fee"><?php echo e(__('Application Fee')); ?></label>
                                        <input type="number" class="form-control" name="application_fee" value="<?php echo e(old('application_fee')); ?>">
                                    </div>
                                    <div class="form-group">
                                        <label for="status"><?php echo e(__('Status')); ?></label>
                                        <select name="status" id="status"  class="form-control">
                                            <option value="publish"><?php echo e(__('Publish')); ?></option>
                                            <option value="draft"><?php echo e(__('Draft')); ?></option>
                                        </select>
                                    </div>
                                    <button id="submit" type="submit" class="btn btn-primary mt-4 pr-4 pl-4"><?php echo e(__('Add New Job')); ?></button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <?php echo $__env->make('backend.partials.media-upload.media-upload-markup', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<?php $__env->stopSection(); ?>
<?php $__env->startSection('script'); ?>
    <script src="<?php echo e(asset('assets/backend/js/bootstrap-tagsinput.js')); ?>"></script>
    <script src="<?php echo e(asset('assets/backend/js/dropzone.js')); ?>"></script>
    <script src="<?php echo e(asset('assets/backend/js/summernote-bs4.js')); ?>"></script>
    <?php echo $__env->make('backend.partials.media-upload.media-js', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <script>
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
        (function($){
            "use strict";
            $(document).ready(function () {

                function converToSlug(slug){
                    let finalSlug = slug.replace(/[^a-zA-Z0-9]/g, ' ');
                    finalSlug = slug.replace(/  +/g, ' ');
                    finalSlug = slug.replace(/\s/g, '-').toLowerCase().replace(/[^\w-]+/g, '-');
                    return finalSlug;
                }

                //Permalink Code
                $('.permalink_label').hide();
                $(document).on('keyup', '#title', function (e) {
                    var slug = converToSlug($(this).val());
                    var url = `<?php echo e(url('/career/')); ?>/` + slug;
                    $('.permalink_label').show();
                    var data = $('#slug_show').text(url).css('color', 'blue');
                    $('.blog_slug').val(slug);

                });

                //Slug Edit Code
                $(document).on('click', '.slug_edit_button', function (e) {
                    e.preventDefault();
                    $('.blog_slug').show();
                    $(this).hide();
                    $('.slug_update_button').show();
                });

                //Slug Update Code
                $(document).on('click', '.slug_update_button', function (e) {
                    e.preventDefault();
                    $(this).hide();
                    $('.slug_edit_button').show();
                    var update_input = $('.blog_slug').val();
                    var slug = converToSlug(update_input);
                    var url = `<?php echo e(url('/career/')); ?>/` + slug;
                    $('#slug_show').text(url);
                    $('.blog_slug').hide();
                });



                $('.summernote').summernote({
                    height: 200,   //set editable area's height
                    codemirror: { // codemirror options
                        theme: 'monokai'
                    },
                    callbacks: {
                        onChange: function(contents, $editable) {
                            $(this).prev('input').val(contents);
                        }
                    }
                });

                $(document).on('change','#language',function(e){
                    e.preventDefault();
                    var selectedLang = $(this).val();
                    $.ajax({
                        url: "<?php echo e(route('admin.jobs.category.by.lang')); ?>",
                        type: "POST",
                        data: {
                            _token : "<?php echo e(csrf_token()); ?>",
                            lang : selectedLang
                        },
                        success:function (data) {
                            $('#category').html('<option value="">Select Category</option>');
                            $.each(data,function(index,value){
                                $('#category').append('<option value="'+value.id+'">'+value.title+'</option>')
                            });
                        }
                    });
                });
            });
        })(jQuery);
    </script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('backend.admin-master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/xgenxchi/public_html/laravel/fundorex/@core/resources/views/backend/jobs/new-job.blade.php ENDPATH**/ ?>

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
    <link rel="stylesheet" href="<?php echo e(asset('assets/backend/css/summernote-bs4.css')); ?>">
<?php $__env->stopSection(); ?>
<?php $__env->startSection('site-title'); ?>
    <?php echo e(__('Our Mission Section')); ?>

<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>
    <div class="col-lg-12 col-ml-12 padding-bottom-30">
        <div class="row">
            <div class="col-lg-12">
                <div class="margin-top-40"></div>
                <?php echo $__env->make('backend/partials/message', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                <?php echo $__env->make('backend/partials/error', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
            </div>
            <div class="col-lg-12 mt-t">
                <div class="card">
                    <div class="card-body">
                        <h4 class="header-title"><?php echo e(__('Our Mission Section Settings')); ?></h4>

                        <form action="<?php echo e(route('admin.about.our.mission')); ?>" method="post" enctype="multipart/form-data">
                            <?php echo csrf_field(); ?>

                            <div class="form-group">
                                <label for="about_page_our_mission_title"><?php echo e(__('Title')); ?></label>
                                <input type="text" name="about_page_our_mission_title"
                                       value="<?php echo e(get_static_option('about_page_our_mission_title')); ?>"
                                       class="form-control"/>
                            </div>
                            <div class="form-group">
                                <label for="about_page_our_mission_description"><?php echo e(__('Description')); ?></label>
                                <!-- <input type="hidden"
                                       name="about_page_our_mission_description">
                                <div class="summernote"
                                     data-content='<?php echo e(get_static_option('about_page_our_mission_description')); ?>'></div> -->
                                     <textarea class="form-control" name="about_page_our_mission_description" id="about_page_our_mission_description"><?php echo get_static_option('about_page_our_mission_description'); ?></textarea>
                            </div>


                            <div class="form-group">
                                <label for="about_page_image_one"><?php echo e(__('Left Image')); ?></label>
                                <?php $signature_image_upload_btn_label = 'Upload Image'; ?>
                                <div class="media-upload-btn-wrapper">
                                    <div class="img-wrap">
                                        <?php
                                            $signature_img = get_attachment_image_by_id(get_static_option('about_page_our_mission_left_image_image'),null,false);
                                        ?>
                                        <?php if(!empty($signature_img)): ?>
                                            <div class="attachment-preview">
                                                <div class="thumbnail">
                                                    <div class="centered">
                                                        <img class="avatar user-thumb"
                                                             src="<?php echo e($signature_img['img_url']); ?>">
                                                    </div>
                                                </div>
                                            </div>
                                            <?php $signature_image_upload_btn_label = 'Change Image'; ?>
                                        <?php endif; ?>
                                    </div>
                                    <input type="hidden" name="about_page_our_mission_left_image_image"
                                           value="<?php echo e(get_static_option('about_page_our_mission_left_image_image')); ?>">
                                    <button type="button" class="btn btn-info media_upload_form_btn"
                                            data-btntitle="<?php echo e(__('Select Image')); ?>"
                                            data-modaltitle="<?php echo e(__('Upload Image')); ?>"
                                            data-imgid="<?php echo e(get_static_option('about_page_our_mission_left_image_image')); ?>"
                                            data-toggle="modal" data-target="#media_upload_modal">
                                        <?php echo e(__($signature_image_upload_btn_label)); ?>

                                    </button>
                                </div>
                                <small><?php echo e(__('recommended image size is 650x380 pixel')); ?></small>
                            </div>
                            <?php
                                $all_icon_fields =  get_static_option('about_page_our_mission_list_section_icon');
                                $all_icon_fields = !empty($all_icon_fields) ? unserialize($all_icon_fields) : ['fas fa-check'];
                            ?>
                            <?php $__currentLoopData = $all_icon_fields; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $index => $icon_field): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <div class="iconbox-repeater-wrapper">
                                    <div class="all-field-wrap">



                                                <?php
                                                    $all_title_fields = get_static_option('about_page_our_mission_list_section_title');
                                                    $all_title_fields = !empty($all_title_fields) ? unserialize($all_title_fields) : ['If you want to change the world'];
                                                ?>


                                                <div class="form-group">
                                                    <label for="about_page_our_mission_list_section_title"><?php echo e(__('Title')); ?></label>
                                                    <input type="text" name="about_page_our_mission_list_section_title[]" class="form-control" value="<?php echo e($all_title_fields[$index] ?? ''); ?>">
                                                </div>


                                            <div class="form-group">
                                                <label for="about_page_our_mission_list_section_icon" class="d-block"><?php echo e(__('Icon')); ?></label>
                                                <div class="btn-group ">
                                                    <button type="button" class="btn btn-primary iconpicker-component">
                                                        <i class="<?php echo e($icon_field); ?>"></i>
                                                    </button>
                                                    <button type="button" class="icp icp-dd btn btn-primary dropdown-toggle"
                                                            data-selected="<?php echo e($icon_field); ?>" data-toggle="dropdown">
                                                        <span class="caret"></span>
                                                        <span class="sr-only">Toggle Dropdown</span>
                                                    </button>
                                                    <div class="dropdown-menu"></div>
                                                </div>
                                                <input type="hidden" class="form-control" value="<?php echo e($icon_field); ?>" name="about_page_our_mission_list_section_icon[]">
                                            </div>

                                        <div class="action-wrap">
                                            <span class="add"><i class="ti-plus"></i></span>
                                            <span class="remove"><i class="ti-trash"></i></span>
                                        </div>
                                    </div>
                                </div>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

                            <button id="update" type="submit" class="btn btn-primary mt-4 pr-4 pl-4"><?php echo e(__('Update Settings')); ?></button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <?php echo $__env->make('backend.partials.media-upload.media-upload-markup', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('script'); ?>
    <script src="<?php echo e(asset('assets/backend/js/dropzone.js')); ?>"></script>
    <script src="<?php echo e(asset('assets/backend/js/summernote-bs4.js')); ?>"></script>
    <?php echo $__env->make('backend.partials.media-upload.media-js', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <?php if (isset($component)) { $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4 = $component; } ?>
<?php $component = $__env->getContainer()->make(Illuminate\View\AnonymousComponent::class, ['view' => 'components.repeater','data' => []]); ?>
<?php $component->withName('repeater'); ?>
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
<?php $component = $__env->getContainer()->make(Illuminate\View\AnonymousComponent::class, ['view' => 'components.icon-picker-activate-js','data' => []]); ?>
<?php $component->withName('icon-picker-activate-js'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php $component->withAttributes([]); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4)): ?>
<?php $component = $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4; ?>
<?php unset($__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4); ?>
<?php endif; ?>
    <script>
        (function($){
            "use strict";
            $(document).ready(function () {
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

                $('.summernote').summernote({
                    height: 200,   //set editable area's height
                    codemirror: { // codemirror options
                        theme: 'monokai'
                    },
                    callbacks: {
                        onChange: function (contents, $editable) {
                            $(this).prev('input').val(contents);
                        }
                    }
                });

                if ($('.summernote').length > 0) {
                    $('.summernote').each(function (index, value) {
                        $(this).summernote('code', $(this).data('content'));
                    });
                }

            });
        })(jQuery)
    </script>

    
<script src="https://cdn.ckeditor.com/ckeditor5/30.0.0/classic/ckeditor.js"></script>
    <script type="text/javascript">
        class MyUploadAdapter {
            constructor(loader) {
                this.loader = loader;
            }
            upload() {
                return this.loader.file.then(file => new Promise((resolve, reject) => {
                    this._initRequest();
                    this._initListeners(resolve, reject, file);
                    this._sendRequest(file);
                }));
            }

            abort() {
                if (this.xhr) {
                    this.xhr.abort();
                }
            }

            _initRequest() {
                const xhr = this.xhr = new XMLHttpRequest();
                console.log("<?php echo e(route('image-upload', ['_token' => csrf_token()])); ?>");
                xhr.open('POST', '<?php echo e(route('image-upload', ['_token' => csrf_token()])); ?>', true);
                xhr.responseType = 'json';
            }

            _initListeners(resolve, reject, file) {
                const xhr = this.xhr;
                const loader = this.loader;
                const genericErrorText = `Couldn't upload file: ${ file.name }.`;

                xhr.addEventListener('error', () => reject(genericErrorText));
                xhr.addEventListener('abort', () => reject());
                xhr.addEventListener('load', () => {
                    const response = xhr.response;

                    if (!response || response.error) {
                        return reject(response && response.error ? response.error.message : genericErrorText);
                    }

                    resolve(response);
                });

                if (xhr.upload) {
                    xhr.upload.addEventListener('progress', evt => {
                        if (evt.lengthComputable) {
                            loader.uploadTotal = evt.total;
                            loader.uploaded = evt.loaded;
                        }
                    });
                }
            }

            _sendRequest(file) {
                const data = new FormData();

                data.append('upload', file);

                this.xhr.send(data);
            }
        }

        function MyCustomUploadAdapterPlugin(editor) {
            editor.plugins.get('FileRepository').createUploadAdapter = (loader) => {
                return new MyUploadAdapter(loader);
            };
        }

        editor = ClassicEditor.create(document.querySelector('#about_page_our_mission_description'), {
                extraPlugins: [MyCustomUploadAdapterPlugin]
            })
            .catch(error => {
                console.error(error);
            });
            editorConfig = {
                mediaEmbed: {
                    previewsInData: true
                }
            }
    </script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('backend.admin-master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH J:\Server\htdocs\asthaysomomgrobangla\@core\resources\views/backend/pages/about-page/our-mission-section.blade.php ENDPATH**/ ?>
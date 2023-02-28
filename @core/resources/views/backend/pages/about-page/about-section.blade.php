@extends('backend.admin-master')
@section('style')
  <x-media.css/>
    <link rel="stylesheet" href="{{asset('assets/backend/css/summernote-bs4.css')}}">
@endsection
@section('site-title')
    {{__('About Section')}}
@endsection
@section('content')
    <div class="col-lg-12 col-ml-12 padding-bottom-30">
        <div class="row">
            <div class="col-lg-12">
                <div class="margin-top-40"></div>
                @include('backend/partials/message')
                @include('backend/partials/error')
            </div>
            <div class="col-lg-12 mt-t">
                <div class="card">
                    <div class="card-body">
                        <h4 class="header-title">{{__('About Us Section Settings')}}</h4>

                        <form action="{{route('admin.about.page.about')}}" method="post" enctype="multipart/form-data">
                            @csrf


                            <div class="form-group">
                                <label for="about_page_about_section_subtitle">{{__('Subtitle')}}</label>
                                <input type="text" name="about_page_about_section_subtitle" value="{{get_static_option('about_page_about_section_subtitle')}}" class="form-control" >
                            </div>
                            <div class="form-group">
                                <label for="about_page_about_section_title">{{__('Title')}}</label>
                                <input type="text" name="about_page_about_section_title" value="{{get_static_option('about_page_about_section_title')}}" class="form-control" >
                                <div class="info-text">{{__('user {color} color text {/color} to make text colorful')}}</div>
                            </div>
                            <div class="form-group">
                                <label for="about_page_about_section_description">{{__('Description')}}</label>
                                <!-- <input type="hidden" name="about_page_about_section_description" >
                                <div class="summernote" data-content='{{get_static_option('about_page_about_section_description')}}'></div> -->
                                <textarea class="form-control" name="about_page_about_section_description" id="about_page_about_section_description">{!! get_static_option('about_page_about_section_description') !!}</textarea>
                            </div>

                            <button id="update" type="submit" class="btn btn-primary mt-4 pr-4 pl-4">{{__('Update Settings')}}</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    @include('backend.partials.media-upload.media-upload-markup')
@endsection

@section('script')
    <script src="{{asset('assets/backend/js/dropzone.js')}}"></script>
    <script src="{{asset('assets/backend/js/summernote-bs4.js')}}"></script>
    @include('backend.partials.media-upload.media-js')
     <script>
         (function($){
             "use strict"
             $(document).ready(function () {
                <x-btn.update/>
                 $('.summernote').summernote({
                     height: 400,   //set editable area's height
                     codemirror: { // codemirror options
                         theme: 'monokai'
                     },
                     callbacks: {
                         onChange: function(contents, $editable) {
                             $(this).prev('input').val(contents);
                         }
                     }
                 });

                 if($('.summernote').length > 0){
                     $('.summernote').each(function(index,value){
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
                console.log("{{ route('image-upload', ['_token' => csrf_token()]) }}");
                xhr.open('POST', '{{ route('image-upload', ['_token' => csrf_token()]) }}', true);
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

        editor = ClassicEditor.create(document.querySelector('#about_page_about_section_description'), {
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
@endsection

@extends('backend.admin-master')
@section('site-title')
    {{__('Edit Events Post')}}
@endsection
@section('style')
    <link rel="stylesheet" href="{{asset('assets/backend/css/summernote-bs4.css')}}">
    <link rel="stylesheet" href="{{asset('assets/backend/css/bootstrap-tagsinput.css')}}">
    <x-media.css/>
@endsection
@section('content')
    <div class="col-lg-12 col-ml-12 padding-bottom-30">
        <div class="row">
            <div class="col-lg-12">
                <div class="margin-top-40"></div>
                @include('backend/partials/message')
                @include('backend/partials/error')
            </div>
            <div class="col-lg-12 mt-5">
                <div class="card">
                    <div class="card-body">
                        <div class="headerbtn-wrap">
                          <div class="row">
                              <div class="col-md-12">
                                  <h4 class="header-title">{{__('Edit Event Post')}}
                                      <a href="{{route('admin.events.new')}}" class="btn btn-secondary pull-right mb-3 ml-2">{{__('Add New')}}</a>
                                      <a href="{{route('admin.events.all')}}" class="btn btn-info pull-right mb-3">{{__('All Events')}}</a>
                                  </h4>
                              </div>
                          </div>

                        </div>
                        <form action="{{route('admin.events.update')}}" method="post" enctype="multipart/form-data">
                            @csrf
                            <input type="hidden" name="event_id" value="{{$event->id}}">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <label for="title">{{__('Title')}}</label>
                                        <input type="text" class="form-control"  id="title" name="title" value="{{$event->title}}" >
                                    </div>

                                    <div class="form-group permalink_label">
                                        <label class="text-dark">{{__('Permalink / Slug * : ')}}
                                            <span id="slug_show" class="display-inline"></span>
                                            <span id="slug_edit" class="display-inline">
                                         <button class="btn btn-warning btn-sm slug_edit_button px-2 py-1 ml-1"> <i class="fas fa-edit"></i> </button>
                                          <input type="text" name="slug" value="{{$event->slug}}" class="form-control blog_slug mt-2" style="display: none">
                                          <button class="btn btn-info btn-sm slug_update_button mt-2 px-2 py-1" style="display: none">{{__('Update')}}</button>
                                    </span>
                                        </label>
                                    </div>



                                    <div class="form-group">
                                        <label for="category">{{__('Category')}}</label>
                                        <select name="category_id" class="form-control" id="category">
                                            <option value="">{{__("Select Category")}}</option>
                                            @foreach($all_categories as $category)
                                                <option @if($category->id == $event->category_id) selected @endif value="{{$category->id}}">{{$category->title}}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label>{{__('Content')}}</label>
                                        <!-- <input type="hidden" name="event_content" value="{{$event->content}}">
                                        <div class="summernote" data-content='{{$event->content}}'></div> -->
                                        <!-- <textarea class="form-control" name="event_content" id="event_content">{!! $event->content !!}</textarea> -->
                                        <textarea class="form-control max-height-200" cols="30" rows="10" name="event_content">{!! $event->content !!}</textarea>
                                    </div>
                                    <div class="form-group col-md-12">
                                        <label for="title">{{__('Video Link')}}</label>
                                        <textarea name="video_link" id="video_link" class="form-control max-height-150" cols="30" rows="10">{!! $event->video_link !!}</textarea>
                                    </div>

                                    <div class="form-group">
                                        <label for="date">{{__('Date')}}</label>
                                        <input type="date" class="form-control" value="{{$event->date}}" id="date" name="date" >
                                    </div>
                                    <div class="form-group">
                                        <label for="time">{{__('Time')}}</label>
                                        <input type="text" class="form-control"  id="time" name="time" value="{{$event->time}}" placeholder="{{__('time')}}">
                                    </div>
                                    <div class="form-group">
                                        <label for="cost">{{__('Cost')}}</label>
                                        <input type="number" class="form-control"  id="cost" name="cost" value="{{$event->cost}}" placeholder="{{__('cost')}}">
                                        <span class="info-text">{{__('enter zero (0) to make this event free of cost')}}</span>
                                    </div>
                                    <div class="form-group">
                                        <label for="available_tickets">{{__('Available Tickets')}}</label>
                                        <input type="number" class="form-control"  id="available_tickets" value="{{$event->available_tickets}}" name="available_tickets" placeholder="{{__('available tickets')}}">
                                    </div>
                                    <div class="form-group">
                                        <label for="organizer">{{__('Organizer')}}</label>
                                        <input type="text" class="form-control"  id="organizer" name="organizer" value="{{$event->organizer}}" placeholder="{{__('Event Organizer')}}">
                                    </div>
                                    <div class="form-group">
                                        <label for="organizer_email">{{__('Organizer Email')}}</label>
                                        <input type="text" class="form-control"  id="organizer_email" name="organizer_email" value="{{$event->organizer_email}}" placeholder="{{__('Organizer Email')}}">
                                    </div>
                                    <div class="form-group">
                                        <label for="organizer_phone">{{__('Organizer Phone')}}</label>
                                        <input type="text" class="form-control"  id="organizer_phone" name="organizer_phone" value="{{$event->organizer_phone}}" placeholder="{{__('Organizer Phone')}}">
                                    </div>
                                    <div class="form-group">
                                        <label for="organizer_website">{{__('Organizer Website')}}</label>
                                        <input type="text" class="form-control"  id="organizer_website" name="organizer_website" value="{{$event->organizer_website}}" placeholder="{{__('Organizer Website')}}">
                                    </div>
                                    <div class="form-group">
                                        <label for="venue">{{__('Venue')}}</label>
                                        <input type="text" class="form-control"  id="venue" name="venue" value="{{$event->venue}}" placeholder="{{__('Event Venue')}}">
                                    </div>
                                    <div class="form-group">
                                        <label for="venue_location">{{__('Venue Location')}}</label>
                                        <input type="text" class="form-control"  id="venue_location" name="venue_location" value="{{$event->venue_location}}" placeholder="{{__('Venue Location')}}">
                                    </div>
                                    <div class="form-group">
                                        <label for="venue_phone">{{__('Venue Phone')}}</label>
                                        <input type="text" class="form-control"  id="venue_phone" name="venue_phone" value="{{$event->venue_phone}}" placeholder="{{__('Venue Phone')}}">
                                    </div>
                                    <!-- <div class="form-group">
                                        <label for="meta_title">{{__('Meta Title')}}</label>
                                        <input type="text" name="meta_title"  class="form-control" value="{{$event->meta_title}}">
                                    </div>
                                    <div class="form-group">
                                        <label for="meta_tags">{{__('Meta Tags')}}</label>
                                        <input type="text" name="meta_tags"  class="form-control" data-role="tagsinput" value="{{$event->meta_tags}}" id="meta_tags">
                                    </div>
                                    <div class="form-group">
                                        <label for="meta_description">{{__('Meta Description')}}</label>
                                        <textarea name="meta_description"  class="form-control" rows="5" id="meta_description">{{$event->meta_description}}</textarea>
                                    </div> -->
                                    <div class="form-group">
                                        <label for="image">{{__('Image')}}</label>
                                        <div class="media-upload-btn-wrapper">
                                            <div class="img-wrap">
                                                @php
                                                    $event_img = get_attachment_image_by_id($event->image,null,false);
                                                    $event_img_btn_label = 'Upload Image';
                                                @endphp
                                                @if (!empty($event_img))
                                                    <div class="attachment-preview">
                                                        <div class="thumbnail">
                                                            <div class="centered">
                                                                <img class="avatar user-thumb" src="{{$event_img['img_url']}}" alt="">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    @php  $event_img_btn_label = 'Change Image'; @endphp
                                                @endif
                                            </div>
                                            <input type="hidden" name="image" value="{{$event->image}}">
                                            <button type="button" class="btn btn-info media_upload_form_btn" data-btntitle="{{__('Select Image')}}" data-modaltitle="{{__('Upload Image')}}" data-toggle="modal" data-target="#media_upload_modal">
                                                {{$event_img_btn_label}}
                                            </button>
                                        </div>
                                        <small>{{__('Recommended image size 1920x1280')}}</small>
                                    </div>
                                    <div class="form-group">
                                        <label for="status">{{__('Status')}}</label>
                                        <select name="status" id="status"  class="form-control">
                                            <option @if($event->status == 'publish') selected @endif value="publish">{{__('Publish')}}</option>
                                            <option @if($event->status == 'draft') selected @endif value="draft">{{__('Draft')}}</option>
                                        </select>
                                    </div>
                                    <button id="update" type="submit" class="btn btn-primary mt-4 pr-4 pl-4">{{__('Update Event')}}</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    @include('backend.partials.media-upload.media-upload-markup')
@endsection
@section('script')
    <script src="{{asset('assets/backend/js/summernote-bs4.js')}}"></script>
    <script>
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
                var sl =  $('.blog_slug').val();
                var url = `{{url('/events/')}}/` + sl;
                var data = $('#slug_show').text(url).css('color', 'blue');
                var form = $('#blog_new_form');

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
                    var url = `{{url('/events/')}}/` + slug;
                    $('#slug_show').text(url);
                    $('.blog_slug').hide();
                });


                <x-btn.update/>
                $(document).on('change','#language',function(e){
                    e.preventDefault();
                    var selectedLang = $(this).val();
                    $.ajax({
                        url: "{{route('admin.events.category.by.lang')}}",
                        type: "POST",
                        data: {
                            _token : "{{csrf_token()}}",
                            lang : selectedLang
                        },
                        success:function (data) {
                            $('#category').html('<option value="">{{__('Select Category')}}</option>');
                            $.each(data,function(index,value){
                                $('#category').append('<option value="'+value.id+'">'+value.title+'</option>')
                            });
                        }
                    });
                });

                $('.summernote').summernote({
                    height: 500,   //set editable area's height
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

    <script src="{{asset('assets/backend/js/dropzone.js')}}"></script>
    <script src="{{asset('assets/backend/js/bootstrap-tagsinput.js')}}"></script>
    @include('backend.partials.media-upload.media-js')
    
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

        editor = ClassicEditor.create(document.querySelector('#event_content'), {
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

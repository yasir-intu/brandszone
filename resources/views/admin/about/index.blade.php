@extends('layouts.admin')
@section('title', 'About Us')
@section('content')
    <!-- Bread crumb and right sidebar toggle -->

    @component('admin.dashboard.breadcumb')
    <li class="breadcrumb-item"><a href="{{url('admin/about')}}">About Us</a></li>
    @endcomponent

    <!-- End Bread crumb and right sidebar toggle -->
    <div class="page-content container-fluid">
        <div class="row justify-content-center">
            <div class="col-10">
                <div class="material-card card">
                    <div class="card-header">
						<div class="pull-left">
							<h6 class="card-title mt-1">About Us</h6>
						</div>
					</div>
                    <div class="card-body">
                        <form class="form pt-3" method="post" action="{{url('admin/about')}}" enctype="multipart/form-data">
                            @csrf
                            @method('put')

                            <div class="form-group">
                                <label>Title</label>
                                <div class="input-group mb-3">
                                    <input type="text" class="form-control" placeholder="Title" name="title" value="{{$about->title}}">

                                    @if ($errors->has('title'))
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $errors->first('title') }}</strong>
                                        </span>
                                    @endif
                                </div>
                            </div>

                            <div class="form-group">
                                <label>Subtitle</label>
                                <div class="input-group mb-3">
                                    <input type="text" class="form-control" placeholder="Subtitle" name="subtitle" value="{{$about->subtitle}}">

                                    @if ($errors->has('subtitle'))
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $errors->first('subtitle') }}</strong>
                                        </span>
                                    @endif
                                </div>
                            </div>

                            

                            

                            <div class="form-group">
                                <label>Image</label>
                                <img width="200" class="mb-2 ml-2" src="{{asset('storage/about/'. $about->image)}}" alt="">
                                <div class="custom-file mb-3">
                                    <input type="file" name="image" class="custom-file-input" id="customFile">
                                    <label class="custom-file-label form-control" for="customFile">Choose file</label>

                                    @if ($errors->has('image'))
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $errors->first('image') }}</strong>
                                        </span>
                                    @endif
                                </div>
                            </div>

                            <div class="form-group">
                                <h5 class="card-title mt-3">Description</h5>
                                <textarea name="description" id="description">{{$about->description}}</textarea>

                                @if ($errors->has('description'))
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $errors->first('description') }}</strong>
                                </span>
                                @endif
                            </div>

                            <div class="text-center">
                                <button type="submit" class="btn btn-success mr-2">Update</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
@push('js')
<script src="{{asset('contents/admin/assets/libs/tinymce/tinymce.min.js')}}"></script>
<script>
    $(function () {
        //TinyMCE
        tinymce.init({
            selector: "#description",
            theme: "modern",
            height: 300,
            plugins: [
                'advlist autolink lists link image charmap print preview hr anchor pagebreak',
                'searchreplace wordcount visualblocks visualchars code fullscreen',
                'insertdatetime media nonbreaking save table contextmenu directionality',
                'emoticons template paste textcolor colorpicker textpattern imagetools'
            ],
            toolbar1: 'insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image',
            toolbar2: 'print preview media | forecolor backcolor emoticons',
            image_advtab: true
        });
        tinymce.suffix = ".min";
        tinyMCE.baseURL = '{{ asset('contents/admin/assets/libs/tinymce') }}';
    });
</script>
@endpush
@extends('layouts.admin')
@section('title', 'Privacy And Policy')
@section('content')
    <!-- Bread crumb and right sidebar toggle -->

    @component('admin.dashboard.breadcumb')
    <li class="breadcrumb-item"><a href="{{url('admin/privacy')}}">Privacy And Policy</a></li>
    @endcomponent

    <!-- End Bread crumb and right sidebar toggle -->
    <div class="page-content container-fluid">
        <div class="row justify-content-center">
            <div class="col-10">
                <div class="material-card card">
                    <div class="card-header">
						<div class="pull-left">
							<h6 class="card-title mt-1"> Add Privacy and Policy</h6>
						</div>
					</div>
                    <div class="card-body">
                        <form class="form pt-3" method="post" action="{{url('admin/privacy')}}" enctype="multipart/form-data">
                            @csrf
                            @method('put')

                            

                            <div class="form-group">
                                <h5 class="card-title mt-3">Description</h5>
                                <textarea name="description" id="description">{{$privacy->description}}</textarea>

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
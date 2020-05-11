 @extends('layouts.admin')
@section('title', 'Banner Edit')
@section('content')
    <!-- Bread crumb and right sidebar toggle -->

    @component('admin.dashboard.breadcumb')
    <li class="breadcrumb-item"><a href="{{url('admin/banners/')}}">Banner</a></li>
    <li class="breadcrumb-item active" aria-current="page">Edit</li>
    @endcomponent

    <!-- End Bread crumb and right sidebar toggle -->
    <div class="page-content container-fluid">
        <div class="row justify-content-center">
            <div class="col-8">
                <div class="material-card card">
                    <div class="card-header">
						<div class="pull-left">
							<h6 class="card-title mt-1">Banner Edit</h6>
						</div>
						<div class="pull-right">
                            <a href="{{url('/admin/banners')}}" class="btn btn-outline-info btn-sm"><i class="mdi mdi-arrow-left"></i> Back</a>
						</div>
					</div>
                    <div class="card-body">
                        <form class="form pt-3" method="post" action="{{url('admin/banners/'. $banner->id)}}" enctype="multipart/form-data">
                            @csrf
                            @method('put')

                            <div class="form-group">
                                <label>Title</label>
                                <div class="input-group mb-3">
                                    <input type="text" class="form-control" name="title" value="{{$banner->title}}">

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
                                    <textarea name="subtitle" class="form-control">{{$banner->subtitle}}</textarea>

                                    @if ($errors->has('subtitle'))
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $errors->first('subtitle') }}</strong>
                                        </span>
                                    @endif
                                </div>
                            </div>

                            <!-- <div class="form-group">
                                <label>Button Text</label>
                                <div class="input-group mb-3">
                                    <input type="text" class="form-control" name="btn_text" value="{{$banner->btn_text}}">

                                    @if ($errors->has('btn_text'))
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $errors->first('btn_text') }}</strong>
                                        </span>
                                    @endif
                                </div>
                            </div> -->

                            <!-- <div class="form-group">
                                <label>Button URL</label>
                                <div class="input-group mb-3">
                                    <input type="text" class="form-control" name="btn_url" value="{{$banner->btn_url}}">

                                    @if ($errors->has('btn_url'))
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $errors->first('btn_url') }}</strong>
                                        </span>
                                    @endif
                                </div>
                            </div> -->

                            <div class="form-group">
                                <label>Photo</label>
                                <img width="200" class="image-responsive mb-3 ml-2" src="{{asset('storage/banners/'.$banner->image)}}" alt="">
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
                                <div class="custom-control custom-checkbox mr-sm-2">
                                    <input type="checkbox" name="status" class="custom-control-input" id="checkbox10" {{$banner->status == 1 ? 'checked' : ''}}>
                                    <label class="custom-control-label" for="checkbox10">Status</label>
                                </div>
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
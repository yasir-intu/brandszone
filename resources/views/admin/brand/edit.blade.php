@extends('layouts.admin')
@section('title', $brand->name)

@section('content')
    <!-- Bread crumb and right sidebar toggle -->

    @component('admin.dashboard.breadcumb')
    <li class="breadcrumb-item"><a href="{{url('admin/brands')}}">Brands</a></li>
    <li class="breadcrumb-item active" aria-current="page">edit</li>
    @endcomponent

    <!-- End Bread crumb and right sidebar toggle -->
    <div class="page-content container-fluid">
        <div class="row justify-content-center">
            <div class="col-lg-8">
                <div class="card">
                    <div class="card-header">
						<div class="pull-left">
							<h6 class="card-title mt-1">Update Brand</h6>
						</div>
						<div class="pull-right">
                            <a href="{{url('/admin/brands')}}" class="btn btn-outline-info btn-sm"><i class="mdi mdi-arrow-left"></i> Back</a>
						</div>
					</div>
                    <div class="card-body">
                        <form class="form pt-3" method="post" action="{{url('admin/brands/'. $brand->id)}}" enctype="multipart/form-data">
                            @csrf
                            @method('put')

                            <div class="form-group">
                                <label>Brand Name</label>
                                <div class="input-group mb-3">
                                    <input type="text" class="form-control" name="name" value="{{$brand->name}}">

                                    @if ($errors->has('name'))
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $errors->first('name') }}</strong>
                                        </span>
                                    @endif
                                </div>
                            </div>

                            <div class="form-group">
                                <label>Photo</label>
                                <img class="mb-2 ml-2" src="{{asset('storage/brands')}}/{{$brand->image}}" alt="">
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
                                <label>Description</label>
                                <div class="input-group mb-3">
                                    <textarea name="description" class="form-control">{{$brand->description}}</textarea>
                                </div>
                            </div>
                            
                            <div class="form-group">
                                <div class="custom-control custom-checkbox mr-sm-2">
                                    <input type="checkbox" name="status" class="custom-control-input" id="checkbox10" {{$brand->status == 1 ? 'checked' : ''}}>
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

@extends('layouts.admin')
@section('title', 'Basic Information')
@section('content')
    <!-- Bread crumb and right sidebar toggle -->

    @component('admin.dashboard.breadcumb')
    <li class="breadcrumb-item"><a href="{{url('admin/basicinfo')}}">Basic Information</a></li>
    @endcomponent

    <!-- End Bread crumb and right sidebar toggle -->
    <div class="page-content container-fluid">
        <div class="row justify-content-center">
            <div class="col-8">
                <div class="material-card card">
                    <div class="card-header">
						<div class="pull-left">
							<h6 class="card-title mt-1">Basic Information</h6>
						</div>
					</div>
                    <div class="card-body">
                        <form class="form pt-3" method="post" action="{{url('admin/basicinfo')}}" enctype="multipart/form-data">
                            @csrf
                            @method('put')

                            

                            <div class="form-group">
                                <label>Logo</label>
                                <img width="100" class="mb-2 ml-2" src="{{asset('storage/logos/'. $basicinfo->logo)}}" alt="">
                                <div class="custom-file mb-3">
                                    <input type="file" name="logo" class="custom-file-input" id="customFile">
                                    <label class="custom-file-label form-control" for="customFile">Choose file</label>

                                    @if ($errors->has('logo'))
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $errors->first('logo') }}</strong>
                                        </span>
                                    @endif
                                </div>
                            </div>

                            <div class="form-group">
                                <label>Fevicon</label>
                                <img width="50" class="mb-2 ml-2" src="{{asset('storage/logos/'. $basicinfo->favicon)}}" alt="">
                                <div class="custom-file mb-3">
                                    <input type="file" name="favicon" class="custom-file-input" id="customFile">
                                    <label class="custom-file-label form-control" for="customFile">Choose file</label>

                                    @if ($errors->has('favicon'))
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $errors->first('favicon') }}</strong>
                                        </span>
                                    @endif
                                </div>
                            </div>

                            <div class="form-group">
                                <label>Phone</label>
                                <div class="input-group mb-3">
                                    <input type="text" class="form-control" placeholder="Phone" name="phone" value="{{$basicinfo->phone}}">

                                    @if ($errors->has('phone'))
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $errors->first('phone') }}</strong>
                                        </span>
                                    @endif
                                </div>
                            </div>

                            <div class="form-group">
                                <label>Phone</label>
                                <div class="input-group mb-3">
                                    <input type="text" class="form-control" placeholder="Phone" name="phone_two" value="{{$basicinfo->phone_two}}">

                                    @if ($errors->has('phone_two'))
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $errors->first('phone_two') }}</strong>
                                        </span>
                                    @endif
                                </div>
                            </div>

                            <div class="form-group">
                                <label>Email</label>
                                <div class="input-group mb-3">
                                    <input type="email" class="form-control" placeholder="Email" name="email" value="{{$basicinfo->email}}">

                                    @if ($errors->has('email'))
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $errors->first('email') }}</strong>
                                        </span>
                                    @endif
                                </div>
                            </div>

                            <div class="form-group">
                                <label>Email</label>
                                <div class="input-group mb-3">
                                    <input type="email" class="form-control" placeholder="Email" name="email_two" value="{{$basicinfo->email_two}}">

                                    @if ($errors->has('email_two'))
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $errors->first('email_two') }}</strong>
                                        </span>
                                    @endif
                                </div>
                            </div>
                            
                            <div class="form-group">
                                <label>Address</label>
                                <div class="input-group mb-3">
                                    <input type="text" class="form-control" placeholder="Address" name="address" value="{{$basicinfo->address}}">

                                    @if ($errors->has('address'))
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $errors->first('address') }}</strong>
                                        </span>
                                    @endif
                                </div>
                            </div>

                            <div class="form-group">
                                <label>Site Description</label>
                                <div class="input-group mb-3">
                                    <textarea name="description" class="form-control">{{$basicinfo->description}}</textarea>

                                    @if ($errors->has('description'))
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $errors->first('description') }}</strong>
                                        </span>
                                    @endif
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
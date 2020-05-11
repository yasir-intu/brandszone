@extends('layouts.admin')
@section('title', 'User Create')

@section('content')
    <!-- Bread crumb and right sidebar toggle -->

    @component('admin.dashboard.breadcumb')
    <li class="breadcrumb-item"><a href="{{url('admin/users')}}">User</a></li>
    <li class="breadcrumb-item active" aria-current="page">Create</li>
    @endcomponent

    <!-- End Bread crumb and right sidebar toggle -->
    <div class="page-content container-fluid">
        <div class="row justify-content-center">
            <div class="col-lg-8">
                <div class="card">
                    <div class="card-header">
						<div class="pull-left">
							<h6 class="card-title mt-1">Create User</h6>
						</div>
						<div class="pull-right">
                            <a href="{{url('/admin/users')}}" class="btn btn-outline-info btn-sm"><i class="mdi mdi-arrow-left"></i> Back</a>
						</div>
					</div>
                    <div class="card-body">
                        <form class="form pt-3" method="post" action="{{url('admin/users')}}" enctype="multipart/form-data">
                            @csrf

                            <div class="form-group">
                                <label>Name</label>
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="basic-addon11"><i class="ti-user"></i></span>
                                    </div>
                                    <input type="text" class="form-control" placeholder="Name" name="name" value="{{old('name')}}">

                                    @if ($errors->has('name'))
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $errors->first('name') }}</strong>
                                        </span>
                                    @endif
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="exampleInputEmail1">Email address</label>
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="basic-addon22"><i class="ti-email"></i></span>
                                    </div>
                                    <input type="text" class="form-control" placeholder="Email" name="email" value="{{old('email')}}">

                                    @if ($errors->has('email'))
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $errors->first('email') }}</strong>
                                        </span>
                                    @endif
                                </div>
                            </div>

                            <div class="form-group">
                                <label>Phone</label>
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="basic-addon11"><i class="ti-user"></i></span>
                                    </div>
                                    <input type="text" class="form-control" placeholder="phone" name="phone" value="{{old('phone')}}">

                                    @if ($errors->has('phone'))
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $errors->first('phone') }}</strong>
                                        </span>
                                    @endif
                                </div>
                            </div>

                            <div class="form-group">
                                <label>Password</label>
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="basic-addon33"><i class="ti-lock"></i></span>
                                    </div>
                                    <input type="password" class="form-control" placeholder="Password" name="password">

                                    @if ($errors->has('password'))
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $errors->first('password') }}</strong>
                                        </span>
                                    @endif
                                </div>
                            </div>

                            <div class="form-group">
                                <label>Confirm Password</label>
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="basic-addon4"><i class="ti-lock"></i></span>
                                    </div>
                                    <input type="password" class="form-control" placeholder="Confirm Password" aria-label="Password" name="password_confirmation">
                                </div>
                            </div>

                            <div class="form-group">
                                <label>Photo</label>
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
                                <label>User Role</label>
                                <select class="form-control custom-select" name="role">
                                    <option>Select Role</option>
                                    @foreach($roles as $role)
                                    <option value="{{$role->id}}">{{$role->name}}</option>
                                    @endforeach
                                </select>
                                @if ($errors->has('role'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('role') }}</strong>
                                    </span>
                                @endif
                            </div>
                            <div class="form-group">
                                <label>User Permission</label>
                                <div class="d-block mb-5">
                                    <div class="form-check form-check-inline">
                                        <div class="custom-control custom-checkbox">
                                            <input name="can_create" type="checkbox" class="custom-control-input" id="customCheck1" checked>
                                            <label class="custom-control-label" for="customCheck1">Create Permission</label>
                                        </div>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <div class="custom-control custom-checkbox">
                                            <input name="can_edit" type="checkbox" class="custom-control-input" id="customCheck2" checked>
                                            <label class="custom-control-label" for="customCheck2">Edit Permission</label>
                                        </div>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <div class="custom-control custom-checkbox">
                                            <input name="can_view" type="checkbox" class="custom-control-input" id="customCheck3" checked>
                                            <label class="custom-control-label" for="customCheck3">View Permission</label>
                                        </div>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <div class="custom-control custom-checkbox">
                                            <input name="can_delete" type="checkbox" class="custom-control-input" id="customCheck4" checked>
                                            <label class="custom-control-label" for="customCheck4">Delete Permission</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="text-center">
                                <button type="submit" class="btn btn-success mr-2">Create</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>

    </div>
@endsection

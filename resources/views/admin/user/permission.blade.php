@extends('layouts.admin')
@section('title', $user->name)
@section('content')
    <!-- Bread crumb and right sidebar toggle -->

    @component('admin.dashboard.breadcumb')
    <li class="breadcrumb-item"><a href="{{url('admin/users')}}">Users</a></li>
    <li class="breadcrumb-item active" aria-current="page">Permission</li>
    @endcomponent

    <!-- End Bread crumb and right sidebar toggle -->
    <div class="page-content container-fluid">
        <!-- Start Page Content -->
        <!-- Row -->
        <div class="row">
            <!-- Column -->
            <div class="col-lg-4 col-xlg-3 col-md-5">
                <div class="card">
                    <div class="card-body">
                        <center class="mt-4"> <img src="{{asset('storage/users')}}/{{$user->image}}" class="rounded-circle" width="150" />
                            <h4 class="card-title mt-2">{{$user->name}}</h4>
                            <h6 class="card-subtitle">{{$user->role->name}}</h6>
                        </center>
                    </div>
                    <div>
                        <hr> </div>
                    <div class="card-body"> 
                        <small class="text-muted">Email address </small>
                        <h6>{{$user->email}}</h6> 
                        <small class="text-muted pt-4 db">Phone</small>
                        <h6>{{$user->phone}}</h6>
                    </div>
                </div>
            </div>
            <!-- Column -->
            <!-- Column -->
            <div class="col-lg-8 col-xlg-9 col-md-7">
                <div class="card">
                    <div class="card-header">
                        <div class="pull-left">
                            <h6 class="card-title mt-1">User Permission</h6>
                        </div>
                        <div class="pull-right">
                            <a href="{{url('/admin/users')}}" class="btn btn-outline-info btn-sm"><i class="mdi mdi-arrow-left"></i> Back</a>
                        </div>
                    </div>
                    <div class="card-body">
                        <form class="form-horizontal form-material" action="{{url('admin/users/permission')}}/{{$user->id}}" method="post" enctype="multipart/form-data">
                            @csrf
                            @method('put')

                            <div class="form-group">
                                <label>User Role</label>
                                <select class="form-control custom-select" name="role" {{Auth::user()->role->id != 1 ? 'disabled' : ''}}>
                                    <option>Select Role</option>
                                    @foreach($roles as $role)
                                    <option value="{{$role->id}}" {{$role->id == $user->role->id ? 'selected' : ''}}>{{$role->name}}</option>
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
                                <div class="d-block mb-5 mt-2">
                                    <div class="form-check form-check-inline">
                                        <div class="custom-control custom-checkbox">
                                            <input name="can_create" type="checkbox" class="custom-control-input" id="customCheck1" {{$user->can_create == 1 ? 'checked' : ''}} {{Auth::user()->role->id != 1 ? 'disabled' : ''}} {{Auth::user()->role->id != 1 ? 'disabled' : ''}}>
                                            <label class="custom-control-label" for="customCheck1">Create Permission</label>
                                        </div>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <div class="custom-control custom-checkbox">
                                            <input name="can_edit" type="checkbox" class="custom-control-input" id="customCheck2" {{$user->can_edit == 1 ? 'checked' : ''}} {{Auth::user()->role->id != 1 ? 'disabled' : ''}}>
                                            <label class="custom-control-label" for="customCheck2">Edit Permission</label>
                                        </div>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <div class="custom-control custom-checkbox">
                                            <input name="can_view" type="checkbox" class="custom-control-input" id="customCheck3" {{$user->can_view == 1 ? 'checked' : ''}} {{Auth::user()->role->id != 1 ? 'disabled' : ''}}>
                                            <label class="custom-control-label" for="customCheck3">View Permission</label>
                                        </div>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <div class="custom-control custom-checkbox" {{Auth::user()->role->id != 1 ? 'disabled' : ''}}>
                                            <input name="can_delete" type="checkbox" class="custom-control-input" id="customCheck4" {{$user->can_delete == 1 ? 'checked' : ''}} {{Auth::user()->role->id != 1 ? 'disabled' : ''}}>
                                            <label class="custom-control-label" for="customCheck4">Delete Permission</label>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-sm-12">
                                    <button class="btn btn-success">Update Permission</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <!-- Column -->
        </div>
        <!-- Row -->
    </div>
@endsection
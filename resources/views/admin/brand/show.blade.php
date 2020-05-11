@extends('layouts.admin')
@section('title', $brand->name)
@section('content')
    <!-- Bread crumb and right sidebar toggle -->

    @component('admin.dashboard.breadcumb')
    <li class="breadcrumb-item"><a href="{{url('admin/brands')}}">brands</a></li>
    <li class="breadcrumb-item active" aria-current="page">Show</li>
    @endcomponent

    <!-- End Bread crumb and right sidebar toggle -->
    <div class="page-content container-fluid">
        <!-- Start Page Content -->
        <!-- Row -->
        <div class="row justify-content-center">
            <!-- Column -->
            <div class="col-lg-6 col-xlg-3 col-md-5">
                <div class="card">
                    <div class="card-header">
                        <div class="pull-left">
                            <h6 class="card-title mt-1">{{$brand->name}} Brand</h6>
                        </div>
                        <div class="pull-right">
                            <a href="{{url('/admin/brands')}}" class="btn btn-outline-info btn-sm"><i class="mdi mdi-arrow-left"></i> Back</a>
                        </div>
                    </div>
                    <div class="card-body">
                        <center class="mt-4"> 
                            <img src="{{asset('storage/brands')}}/{{$brand->image}}" />
                        </center>
                    </div>
                    <div class="card-body"> 
                        <h4 class="card-title mt-2">{{$brand->name}}</h4>
                        <h6>{{$brand->description}}</h6>
                    </div>
                </div>
            </div>
            <!-- Column -->
        </div>
        <!-- Row -->
    </div>
@endsection
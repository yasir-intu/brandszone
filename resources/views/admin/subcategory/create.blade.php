@extends('layouts.admin')
@section('title', 'Subcategory Create')

@section('content')
    <!-- Bread crumb and right sidebar toggle -->

    @component('admin.dashboard.breadcumb')
    <li class="breadcrumb-item"><a href="{{url('admin/users')}}">Subcategory</a></li>
    <li class="breadcrumb-item active" aria-current="page">Create</li>
    @endcomponent

    <!-- End Bread crumb and right sidebar toggle -->
    <div class="page-content container-fluid">
        <div class="row justify-content-center">
            <div class="col-lg-8">
                <div class="card">
                    <div class="card-header">
						<div class="pull-left">
							<h6 class="card-title mt-1">Create Subcategory</h6>
						</div>
						<div class="pull-right">
                            <a href="{{url('/admin/subcategory')}}" class="btn btn-outline-info btn-sm"><i class="mdi mdi-arrow-left"></i> Back</a>
						</div>
					</div>
                    <div class="card-body">
                        <form class="form pt-3" method="post" action="{{url('admin/subcategory')}}">
                            @csrf

                            <div class="form-group">
                                <label>Main Category</label>
                                <select class="form-control custom-select" name="maincategory">
                                    @foreach($maincategories as $maincategory)
                                    <option value="{{$maincategory->id}}">{{$maincategory->name}}</option>
                                    @endforeach
                                </select>
                                @if ($errors->has('maincategory'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('maincategory') }}</strong>
                                    </span>
                                @endif
                            </div>

                            <div class="form-group">
                                <label>Subcategory Name</label>
                                <div class="input-group mb-3">
                                    <input type="text" class="form-control" placeholder="Subcategory Name" name="name" value="{{old('name')}}">

                                    @if ($errors->has('name'))
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $errors->first('name') }}</strong>
                                        </span>
                                    @endif
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="custom-control custom-checkbox mr-sm-2">
                                    <input type="checkbox" name="status" class="custom-control-input" id="checkbox10" checked>
                                    <label class="custom-control-label" for="checkbox10">Status</label>
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

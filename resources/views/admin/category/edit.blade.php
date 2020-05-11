@extends('layouts.admin')
@section('title', $category->name)

@section('content')
    <!-- Bread crumb and right sidebar toggle -->

    @component('admin.dashboard.breadcumb')
    <li class="breadcrumb-item"><a href="{{url('admin/users')}}">Ctegory</a></li>
    <li class="breadcrumb-item active" aria-current="page">edit</li>
    @endcomponent

    <!-- End Bread crumb and right sidebar toggle -->
    <div class="page-content container-fluid">
        <div class="row justify-content-center">
            <div class="col-lg-8">
                <div class="card">
                    <div class="card-header">
						<div class="pull-left">
							<h6 class="card-title mt-1">Update Category</h6>
						</div>
						<div class="pull-right">
                            <a href="{{url('/admin/category')}}" class="btn btn-outline-info btn-sm"><i class="mdi mdi-arrow-left"></i> Back</a>
						</div>
					</div>
                    <div class="card-body">
                        <form class="form pt-3" method="post" action="{{url('admin/category/'. $category->id)}}">
                            @csrf
                            @method('put')
                            <div class="form-group">
                                <label>Main Category</label>
                                <select class="form-control custom-select" id="maincategory">
                                    @foreach($maincategories as $maincategory)
                                    <option value="{{$maincategory->id}}" {{$category->subcategory->maincategory_id == $maincategory->id ? 'selected' : ''}}>{{$maincategory->name}}</option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Subcategory</label>
                                <select class="form-control custom-select" name="subcategory" id="subcategory">
                                    @foreach($subcategories as $subcategory)
                                    <option value="{{$subcategory->id}}" {{$subcategory->id == $category->subcategory_id ? 'selected' : ''}}>{{$subcategory->name}}</option>
                                    @endforeach
                                </select>
                                @if ($errors->has('subcategory'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('subcategory') }}</strong>
                                    </span>
                                @endif
                            </div>


                            <div class="form-group">
                                <label>Category Name</label>
                                <div class="input-group mb-3">
                                    <input type="text" class="form-control" name="name" value="{{$category->name}}">

                                    @if ($errors->has('name'))
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $errors->first('name') }}</strong>
                                        </span>
                                    @endif
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="custom-control custom-checkbox mr-sm-2">
                                    <input type="checkbox" name="status" class="custom-control-input" id="checkbox10" {{$category->status == 1 ? 'checked' : ''}}>
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
@push('js')
<script src="{{asset('contents/admin/dist/js/ajax.js')}}"></script>
@endpush
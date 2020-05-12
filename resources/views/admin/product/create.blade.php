@extends('layouts.admin')
@section('title', 'Product Create')
@push('css')
<link rel="stylesheet" href="{{asset('contents/admin/assets/libs/select2/dist/css/select2.min.css')}}">
<link rel="stylesheet" href="{{asset('contents/admin/assets/libs/dropify/dist/css/dropify.min.css')}}">
@endpush
@section('content')
    <!-- Bread crumb and right sidebar toggle -->
    @component('admin.dashboard.breadcumb')
    <li class="breadcrumb-item"><a href="{{url('admin/products')}}">Product</a></li>
    <li class="breadcrumb-item active" aria-current="page">Create</li>
    @endcomponent
    <!-- End Bread crumb and right sidebar toggle -->

    <!-- Start Page Content -->
    <div class="page-content container-fluid">
        <div class="row">
            <!-- Column -->
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-header">
                        <div class="pull-left">
                            <h6 class="card-title mt-1">Create Product</h6>
                        </div>
                        <div class="pull-right">
                            <a href="{{url('/admin/products')}}" class="btn btn-outline-info btn-sm"><i class="mdi mdi-arrow-left"></i> Back</a>
                        </div>
                    </div>
                    <div class="card-body">
                        <form action="{{url('admin/products')}}" method="post" enctype="multipart/form-data">
                            @csrf

                            <div class="form-body">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="control-label">Product Name</label>
                                            <input name="name" type="text" class="form-control" placeholder="Product Name" value="{{old('name')}}">

                                            @if ($errors->has('name'))
                                            <span class="invalid-feedback" role="alert">
                                                <strong>{{ $errors->first('name') }}</strong>
                                            </span>
                                            @endif
                                        </div>
                                    </div>
                                    <!--/span-->
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="control-label">Product Type</label>
                                            <select name="types[]" class="form-control" multiple="" id="select2-with-types" style="width: 100%;height: 36px;">
                                                @foreach($types as $type)
                                                <option value="{{$type->id}}">{{$type->name}}</option>
                                                @endforeach
                                            </select>

                                            @if ($errors->has('types'))
                                            <span class="invalid-feedback" role="alert">
                                                <strong>{{ $errors->first('types') }}</strong>
                                            </span>
                                            @endif
                                        </div>
                                    </div>
                                    <!--/span-->
                                </div>
                                <!--/row-->

                                <!--/row-->
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="control-label">Main Categories</label>
                                            <select name="maincategories[]" class="form-control" multiple="" id="select2-with-maincategories" style="width: 100%;height: 36px;">
                                                @foreach($maincategories as $maincategory)
                                                <option value="{{$maincategory->id}}">{{$maincategory->name}}</option>
                                                @endforeach
                                            </select>

                                            @if ($errors->has('maincategories'))
                                            <span class="invalid-feedback" role="alert">
                                                <strong>{{ $errors->first('maincategories') }}</strong>
                                            </span>
                                            @endif
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="control-label">Sub Categories</label>
                                            <select name="subcategories[]" class="form-control" multiple="" id="select2-with-subcategories" style="width: 100%;height: 36px;">
                                                @foreach($subcategories as $subcategory)
                                                <option value="{{$subcategory->id}}">{{$subcategory->name}}</option>
                                                @endforeach
                                            </select>

                                            @if ($errors->has('subcategories'))
                                            <span class="invalid-feedback" role="alert">
                                                <strong>{{ $errors->first('subcategories') }}</strong>
                                            </span>
                                            @endif
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="control-label">Categories</label>
                                            <select name="categories[]" class="form-control" multiple="" id="select2-with-categories" style="width: 100%;height: 36px;">
                                                @foreach($categories as $category)
                                                <option value="{{$category->id}}">{{$category->name}}</option>
                                                @endforeach
                                            </select>

                                            @if ($errors->has('categories'))
                                            <span class="invalid-feedback" role="alert">
                                                <strong>{{ $errors->first('categories') }}</strong>
                                            </span>
                                            @endif
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="control-label">Brand</label>
                                            <select name="brand[]" class="form-control" multiple="" id="select2-with-brands" style="width: 100%;height: 36px;">
                                                @foreach($brands as $brand)
                                                <option value="{{$brand->id}}">{{$brand->name}}</option>
                                                @endforeach
                                            </select>

                                            @if ($errors->has('brand'))
                                            <span class="invalid-feedback" role="alert">
                                                <strong>{{ $errors->first('brand') }}</strong>
                                            </span>
                                            @endif
                                        </div>
                                    </div>
                                    <!--/span-->
                                </div>
                                <!--/row-->

                                <!--/row-->
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label class="control-label">Colors</label>
                                            <select name="colors[]" class="form-control" multiple="" id="select2-with-colors" style="width: 100%;height: 36px;">
                                                @foreach($colors as $color)
                                                <option value="{{$color->id}}">{{$color->name}}</option>
                                                @endforeach
                                            </select>

                                            @if ($errors->has('colors'))
                                            <span class="invalid-feedback" role="alert">
                                                <strong>{{ $errors->first('colors') }}</strong>
                                            </span>
                                            @endif
                                        </div>
                                    </div>
                                    <!--/span-->
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label class="control-label">Sizes</label>
                                            <select name="sizes[]" class="form-control" multiple="" id="select2-with-sizes" style="width: 100%;height: 36px;">
                                                @foreach($sizes as $size)
                                                <option value="{{$size->id}}">{{$size->name}}</option>
                                                @endforeach
                                            </select>

                                            @if ($errors->has('sizes'))
                                            <span class="invalid-feedback" role="alert">
                                                <strong>{{ $errors->first('sizes') }}</strong>
                                            </span>
                                            @endif
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label>Discount</label>
                                            <div class="input-group mb-3">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text" id="basic-addon2"><i class="ti-cut"></i></span>
                                                </div>
                                                <input name="discount" type="text" class="form-control" placeholder="Discount" value="{{old('discount')}}">
                                            </div>
                                        </div>
                                    </div>
                                    <!--/span-->
                                </div>
                                <!--/row-->

                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label>Purchase Price</label>
                                            <div class="input-group mb-3">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text" id="basic-addon1"><i class="ti-money"></i></span>
                                                </div>
                                                <input name="purchase_price" type="text" class="form-control" placeholder="Purchase Price" value="{{old('purchase_price')}}">

                                                @if ($errors->has('purchase_price'))
                                                <span class="invalid-feedback" role="alert">
                                                    <strong>{{ $errors->first('purchase_price') }}</strong>
                                                </span>
                                                @endif
                                            </div>
                                        </div>
                                    </div>
                                    <!--/span-->
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label>Selling Price</label>
                                            <div class="input-group mb-3">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text" id="basic-addon1"><i class="ti-money"></i></span>
                                                </div>
                                                <input name="selling_price" type="text" class="form-control" placeholder="Selling Price" value="{{old('selling_price')}}">
                                                @if ($errors->has('selling_price'))
                                                <span class="invalid-feedback" role="alert">
                                                    <strong>{{ $errors->first('selling_price') }}</strong>
                                                </span>
                                                @endif
                                            </div>
                                        </div>
                                    </div>
                                    <!--/span-->
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label>Stock</label>
                                            <div class="input-group mb-3">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text" id="basic-addon2"><i class="ti-server"></i></span>
                                                </div>
                                                <input name="stock" type="text" class="form-control" placeholder="Stock" value="{{old('stock')}}">

                                                @if ($errors->has('stock'))
                                                <span class="invalid-feedback" role="alert">
                                                    <strong>{{ $errors->first('stock') }}</strong>
                                                </span>
                                                @endif
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label>Stock Alert</label>
                                            <div class="input-group mb-3">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text" id="basic-addon2"><i class="ti-server"></i></span>
                                                </div>
                                                <input name="stock_alert" type="text" class="form-control" placeholder="Stock alert" value="{{old('stock_alert')}}">

                                                @if ($errors->has('stock_alert'))
                                                <span class="invalid-feedback" role="alert">
                                                    <strong>{{ $errors->first('stock_alert') }}</strong>
                                                </span>
                                                @endif
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label></label>
                                            <div class="input-group mt-3">
                                                <span>Customer will see this Price:</span>
                                                <span></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <h5 class="card-title">Product Description</h5>
                                <div class="row">
                                    <div class="col-md-12 ">
                                        <div class="form-group">
                                            <textarea name="description" id="description">{{old('description')}}</textarea>
                                            @if ($errors->has('description'))
                                            <span class="invalid-feedback" role="alert">
                                                <strong>{{ $errors->first('description') }}</strong>
                                            </span>
                                            @endif
                                        </div>
                                    </div>
                                </div>
                                <!--/row-->

                                <div class="row">
                                    <!--/span-->
                                    <div class="col-md-3">
                                        <h5 class="card-title mt-3">Product Main Image</h5>
                                        <input name="image" type="file" id="input-file-now" class="dropify" data-max-file-size="3M">

                                        @if ($errors->has('image'))
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $errors->first('image') }}</strong>
                                        </span>
                                        @endif
                                    </div>
                                    <div class="col-md-3">
                                        <h5 class="card-title mt-3">Product Image</h5>
                                        <input name="image_two" type="file" id="input-file-now" class="dropify" data-max-file-size="3M">

                                        @if ($errors->has('image_two'))
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $errors->first('image_two') }}</strong>
                                        </span>
                                        @endif
                                    </div>
                                    <div class="col-md-3">
                                        <h5 class="card-title mt-3">Product Image</h5>
                                        <input name="image_three" type="file" id="input-file-now" class="dropify" data-max-file-size="3M">

                                        @if ($errors->has('image_three'))
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $errors->first('image_three') }}</strong>
                                        </span>
                                        @endif
                                    </div>
                                    <div class="col-md-3">
                                        <h5 class="card-title mt-3">Product Image</h5>
                                        <input name="image_four" type="file" id="input-file-now" class="dropify" data-max-file-size="3M">

                                        @if ($errors->has('image_four'))
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $errors->first('image_four') }}</strong>
                                        </span>
                                        @endif
                                    </div>
                                </div>

                                <div class="row">
                                    <!--/span-->
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <h5 class="card-title mt-3">Product Features</h5>
                                            <textarea name="features" id="features">{{old('features')}}</textarea>

                                            @if ($errors->has('features'))
                                            <span class="invalid-feedback" role="alert">
                                                <strong>{{ $errors->first('features') }}</strong>
                                            </span>
                                            @endif
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="form-actions mt-5 text-center">
                                <button type="submit" class="btn btn-success">Add Product</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <!-- Column -->
        </div>
        <!-- End Page Content -->
    </div>
@endsection
@push('js')
<script src="{{asset('contents/admin/assets/libs/select2/dist/js/select2.min.js')}}"></script>
<script src="{{asset('contents/admin/dist/js/pages/forms/select2/select2.init.js')}}"></script>
<script src="{{asset('contents/admin/assets/libs/tinymce/tinymce.min.js')}}"></script>
<script src="{{asset('contents/admin/assets/libs/dropify/dist/js/dropify.min.js')}}"></script>

<script>
    $(function () {
        //Dropify init
        $('.dropify').dropify();
        //TinyMCE
        tinymce.init({
            selector:'#features'
        });

        tinymce.init({
            selector:'#description'
        });
    });
</script>
@endpush
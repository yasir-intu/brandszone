@extends('layouts.admin')
@section('title', 'Social Media Links')
@section('content')
    <!-- Bread crumb and right sidebar toggle -->

    @component('admin.dashboard.breadcumb')
    <li class="breadcrumb-item"><a href="{{url('admin/sociallinks')}}">Social Media Links</a></li>
    @endcomponent

    <!-- End Bread crumb and right sidebar toggle -->
    <div class="page-content container-fluid">
        <div class="row justify-content-center">
            <div class="col-8">
                <div class="material-card card">
                    <div class="card-header">
						<div class="pull-left">
							<h6 class="card-title mt-1">Social Media Links</h6>
						</div>
					</div>
                    <div class="card-body">
                        <form class="form pt-3" method="post" action="{{url('admin/sociallink')}}" enctype="multipart/form-data">
                            @csrf
                            @method('put')

                            <div class="form-group">
                                <label>Facebook</label>
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="basic-addon11"><i class="ti-facebook"></i></span>
                                    </div>
                                    <input type="text" class="form-control" name="facebook" value="{{$sociallink->facebook}}">

                                    @if ($errors->has('facebook'))
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $errors->first('facebook') }}</strong>
                                        </span>
                                    @endif
                                </div>
                            </div>
                            <div class="form-group">
                                <label>Twitter</label>
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="basic-addon11"><i class="ti-twitter"></i></span>
                                    </div>
                                    <input type="text" class="form-control" name="twitter" value="{{$sociallink->twitter}}">

                                    @if ($errors->has('twitter'))
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $errors->first('twitter') }}</strong>
                                        </span>
                                    @endif
                                </div>
                            </div>

                            <div class="form-group">
                                <label>Google</label>
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="basic-addon11"><i class="ti-google"></i></span>
                                    </div>
                                    <input type="text" class="form-control" name="google" value="{{$sociallink->google}}">

                                    @if ($errors->has('google'))
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $errors->first('google') }}</strong>
                                        </span>
                                    @endif
                                </div>
                            </div>

                            <div class="form-group">
                                <label>Instagram</label>
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="basic-addon11"><i class="ti-instagram"></i></span>
                                    </div>
                                    <input type="text" class="form-control" name="instagram" value="{{$sociallink->instagram}}">

                                    @if ($errors->has('instagram'))
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $errors->first('instagram') }}</strong>
                                        </span>
                                    @endif
                                </div>
                            </div>

                            <div class="form-group">
                                <label>Linkedin</label>
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="basic-addon11"><i class="ti-linkedin"></i></span>
                                    </div>
                                    <input type="text" class="form-control" name="linkedin" value="{{$sociallink->linkedin}}">

                                    @if ($errors->has('linkedin'))
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $errors->first('linkedin') }}</strong>
                                        </span>
                                    @endif
                                </div>
                            </div>

                            <div class="form-group">
                                <label>Pinterest</label>
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="basic-addon11"><i class="ti-pinterest"></i></span>
                                    </div>
                                    <input type="text" class="form-control" name="pinterest" value="{{$sociallink->pinterest}}">

                                    @if ($errors->has('pinterest'))
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $errors->first('pinterest') }}</strong>
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
@extends('layouts.website')
@section('title', $product->name)
@section('keywords', $product->name)
@section('description', $product->description)
@push('css')
    <link rel="stylesheet" href="{{asset('contents/website/assests/css/owl.carousel.min.css')}}">
    <link rel="stylesheet" href="{{asset('contents/website/assests/css/slick.css')}}">
@endpush
@section('content')
    <!-- start infobar top -->
    @include('website.infobar')
    <!-- satrt breadcome area -->
    @component('website.breadcumb')
    <li>@foreach($product->maincategories as $maincategory)<a href="{{url('product/category/'.$maincategory->slug)}}"><i class="icofont-thin-right"></i>  {{$maincategory->name}} </a>@endforeach</li>
    <li>@foreach($product->categories as $category)<a href="{{url('product/category/'.$category->id .'/'.$category->slug)}}"><i class="icofont-thin-right"></i>  {{$category->name}} </a>@endforeach</li>
    <li><i class="icofont-thin-right"></i> {{$product->name}} </li>
    @endcomponent
    <!-- start product details main section -->
    <section id="product_details">
        <div class="container">
            <div class="row">
                <!-- details sidebar -->
                <div class="col-xl-3 col-lg-4 col-md-4 col-sm-7 mx-auto">
                    <div class="details_sidebar">
                        <!-- details brands -->
                        <div class="details_brands">
                            <h4>Brands</h4>
                            <ul>
                                @foreach($brands as $brand)
                                <li><a href="{{url('product/brand/'. $brand->slug)}}">{{$brand->name}} <span>{{$brand->products()->count()}}</span></a></li>
                                @endforeach
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- product details main part -->
                <div class="col-xl-9 col-lg-8 col-md-8">
                    <div class="details_main_content">
                        <div class="details_slide_content">
                            <div class="row">
                                <div class="col-xl-5 col-lg-5">
                                    <div class="product-details-tab">
                                        <div id="img-1" class="zoomWrapper single-zoom">
                                            <a href="#">
                                                <img id="zoom1" src="{{asset('storage/products/'.$product->image)}}" data-zoom-image="{{asset('storage/products/'.$product->image)}}" alt="big-1">
                                            </a>
                                        </div>
                                        <div class="single-zoom-thumb">
                                            <ul class="s-tab-zoom single-product-active text-center" id="gallery_01">
                                                 @if($product->image != NULL)
												@if(asset('storage/products/'.$product->image) != NULL)
                                                    <li class="d-inline">
                                                        <a href="#" class="elevatezoom-gallery active" data-update="" data-image="{{asset('storage/products/'.$product->image)}}" data-zoom-image="{{asset('storage/products/'.$product->image)}}">
                                                            <img style="width:20%" src="{{asset('storage/products/'.$product->image)}}" alt="zo-th-1">
                                                        </a>
                                                    </li>
                                                @endif
                                                @endif
                                                 @if($product->image_two != NULL)
												@if(asset('storage/products/'.$product->image_two) != NULL)
                                                    <li class="d-inline">
                                                        <a href="#" class="elevatezoom-gallery active" data-update="" data-image="{{asset('storage/products/'.$product->image_two)}}" data-zoom-image="{{asset('storage/products/'.$product->image_two)}}">
                                                            <img style="width:20%"  src="{{asset('storage/products/'.$product->image_two)}}" alt="zo-th-1">
                                                        </a>
                                                    </li>
                                                @endif
                                                @endif
                                                @if($product->image_three != NULL)
												@if(asset('storage/products/'.$product->image_three) != NULL)
                                                    <li class="d-inline">
                                                        <a href="#" class="elevatezoom-gallery active" data-update="" data-image="{{asset('storage/products/'.$product->image_three)}}" data-zoom-image="{{asset('storage/products/'.$product->image_three)}}">
                                                            <img  style="width:20%" src="{{asset('storage/products/'.$product->image_three)}}" alt="zo-th-1">
                                                        </a>
                                                    </li>
                                                @endif
                                                @endif
                                                @if($product->image_three != NULL)
												@if(asset('storage/products/'.$product->image_three) != NULL)
                                                    <li class="d-inline">
                                                        <a href="#" class="elevatezoom-gallery active" data-update="" data-image="{{asset('storage/products/'.$product->image_four)}}" data-zoom-image="{{asset('storage/products/'.$product->image_four)}}">
                                                            <img  style="width:20%" src="{{asset('storage/products/'.$product->image_four)}}" alt="zo-th-1">
                                                        </a>
                                                    </li>
												@endif
												@endif
                                            </ul>
                                        </div>
                                    </div>
                                </div>
								<div class="col-xl-7 col-lg-7">
                                    <div class="product_slide_right_content">
                                        <h3>{{$product->name}} </h3>
                                        <h4>Product Code: {{$product->code}}</h4>
                                        <h2>&#2547; {{$product->price}}</h2>
                                        <p>{{$product->description}}. </p>
                                        <form action="{{url('cart/add/'.$product->id)}}" method="post">
                                            @csrf
                                            <div class="details_size">
                                                <div class="row">
                                                    <legend class="col-form-label col-sm-2 pt-0">sizes:</legend>
                                                    <div class="col-sm-10">
                                                        @foreach($product->sizes as $size)
                                                        <div class="form-check">
                                                            <input class="form-check-input" type="radio" name="size" id="gridRadios1" value="{{$size->name}}" checked>
                                                            <label class="form-check-label" for="gridRadios1">{{$size->name}}</label>
                                                        </div>
                                                        @endforeach
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="details_size">
                                                <div class="row">
                                                    <legend class="col-form-label col-sm-2 pt-0">Colors:</legend>
                                                    <div class="col-sm-10">
                                                        @foreach($product->colors as $color)
                                                        <div class="form-check">
                                                            <input class="form-check-input" type="radio" name="color" id="gridRadios1" value="{{$color->name}}" checked>
                                                            <label class="form-check-label" for="gridRadios1">{{$color->name}}</label>
                                                        </div>
                                                        @endforeach
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="details_btn">
                                                <div class="row align-items-center">
                                                    <div class="col-xl-4 col-md-4 col-sm-5">
                                                        <div class="quantity_form_input">
                                                            <input name="qty" type="number" value="1" min="1" max="{{$product->stock}}" step="1">
                                                        </div>
                                                    </div>
                                                    <div class="col-xl-8 col-md-8 col-sm-7">
                                                        <button class="detail_shop_btn"><i class="icofont-shopping-cart"></i> Buy Now</button>
                                                        
                                                    </div>
                                                </div>
                                            </div>
                                        </form>
                                        <!-- <div class="details_share">
                                            <div class="row align-items-center">
                                                <div class="col-xl-4">
                                                    <div class="share_text">
                                                        <p>Share Product :-</p>
                                                    </div>
                                                </div>
                                                <div class="col-xl-8">
                                                    <div class="share_social">
                                                        <ul>
                                                            <li><a href="#"><i class="fab face fa-facebook-f"></i></a></li>
                                                            <li><a href="#"><i class="fab twi fa-twitter"></i></a></li>
                                                            <li><a href="#"><i class="fab lin fa-linkedin-in"></i></a></li>
                                                            <li><a href="#"><i class="fab pin fa-pinterest-p"></i></a></li>
                                                            <li><a href="#"><i class="fab go fa-google-plus-g"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div> -->
                                        <!-- <div class="payment_accept">
                                            <div class="row align-items-center">
                                                <div class="col-xl-4">
                                                    <div class="payment_accept_text">
                                                        <p>We Accept :-</p>
                                                    </div>
                                                </div>
                                                <div class="col-xl-8">
                                                    <div class="payment_accept_img">
                                                        <img class="img-fluid" src="{{asset('contents/website/')}}/assests/img/payment-icons.png" alt="">
                                                    </div>
                                                </div>
                                            </div>
                                        </div> -->
                                    </div>
                                </div>
						   </div>
                        </div>
                        <!-- satrt details tab area -->
                        <div class="details_tab_section">
                            <div class="row">
                                <div class="col-xl-12 ">
                                    <nav>
                                        <div class="nav nav-tabs nav-fill" id="nav-tab" role="tablist">
                                            <a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true">Description</a>
                                            <!-- <a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab" aria-controls="nav-profile" aria-selected="false">Purchase & Delivery</a>

                                            <a class="nav-item nav-link" id="nav-about-tab" data-toggle="tab" href="#nav-about" role="tab" aria-controls="nav-about" aria-selected="false">Replace Policy</a> -->
                                        </div>
                                    </nav>
                                    <div class="tab-content py-3 px-3 px-sm-0" id="nav-tabContent">
                                        <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
                                            {!! $product->features !!}
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- satrt related product -->


    <form id="addtocart-form" action="" method="POST" style="display: none;">
        @csrf
    </form>
@endsection
@push('js')
    <script src="{{asset('contents/website/assests/js/owl.carousel.min.js')}}"></script>
    <script src="{{asset('contents/website/assests/js/owl.carousel.active.js')}}"></script>
    <script src="{{asset('contents/website/assests/js/slick.min.js')}}"></script>
    <script src="{{asset('contents/website/assests/js/slick.active.js')}}"></script>
    <script src="{{asset('contents/website/assests/js/bootstrap-input-spinner.js')}}"></script>
    <script>
        // this is for input group
        $("input[type='number']").InputSpinner();
    </script>
@endpush
	@push('js')
    <script>
        $("#zoom1").elevateZoom({
            zoomWindowFadeIn : 500,
            zoomLensFadeIn: 500,
            gallery: "gallery_01",
            imageCrossfade: true,
            zoomWindowWidth:511,
            zoomWindowHeight:274,
            zoomWindowOffetx: 10,
            scrollZoom: true,
            cursor:"pointer",
            easyZoom:true,
            easing:true,
            responsive:true,
            lensSize: 10,
            // cursor:"url('http://sobujdiganta.com/images/sample3.png'),auto",
        });

        $("#img_01").bind("click", function(e) {
            var ez =   $('#img_01').data('elevateZoom');
            $.fancybox(ez.getGalleryList());
            return false;
        });
    </script>
    <style>
        .zoomLens{
            /* cursor: url('http://sobujdiganta.com/images/sample3.png'),auto !important; */
            /* background: url('{{asset('')}}/hover.png') !important; */
			 
        }
        .zoomWindow{
            border: 0 !important;
            z-index: 999999;
            box-shadow: 0px 0px 10px rgba(0,0,0,.5);
        }
        .input-group{
            z-index: 0;
        }

        @media (min-width:992px) and (max-width:1199.99px){
            .zoomWindow{
                width: 270px !important;
                height: 300px !important;
            }
        }
        @media (min-width:1200px){
            .zoomWindow{
                width: 488px !important;
                height: 400px !important;
                top: -30px !important;
            }
            .zoomWrapper{
                width: 300px !important;
                height: 313px !important;
            }
            .zoomWrapper img{
                width: 300px !important;
				height: 313px !important;
            }
        }

        @media (min-width:768px) and (max-width:991.99px){
            .zoomWindow{
                top: 310px !important;
                left: 0px !important;
            }
        }
    </style>
@endpush
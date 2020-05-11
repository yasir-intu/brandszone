@extends('layouts.website')
@push('css')
    <link rel="stylesheet" href="{{asset('contents/website/assests/css/owl.carousel.min.css')}}">
@endpush
@section('content')
    <!-- start slider area -->
    
    <section id="slider_banar">
        <div class="banar_slider_active owl-carousel">
            @foreach($banners as $banner)
            <div class="banar_slider_item" style="background: url({{asset('storage/banners/'. $banner->image)}}); background-repeat: no-repeat; background-position: center center">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-12">
                            <div class="banar_table">
                                <div class="banar_table_cell">
                                    <div class="banar_content">
                                        <h3>{{$banner->title}}</h3>
                                        <p> {{$banner->subtitle}} </p>
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            @endforeach
        </div>
    </section>
            
        
    
    
    <!-- start infobar top -->
    <br>
    <!-- satrt summer collection -->
    <section id="summer_conllection">
        <div class="container">
            <div class="row">
                <div class="col-xl-12 col-md-12 col-sm-12">
                    <div class="summer_title" >
                        <h3>Summer Collection</h3>
                    </div>
                </div>
            </div>
            <div class="summer_slide_container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="summer_slide_active owl-carousel">
                            @foreach($summerCollections as $summerCollection)
                            <div class="summer_slide_item">
                                <a href="{{url('product/details/' .$summerCollection->id .'/'. $summerCollection->slug)}}">
                                    <div class="summmer_image">
                                        <img src="{{asset('storage/products/'. $summerCollection->image)}}" alt="">
                                        <div class="sumer_pro_hover">
                                            <ul>
                                                <li><a class="addtocart" href="{{url('/cart/add/' .$summerCollection->id)}}"><i class="icofont-shopping-cart"></i></a></li>
                                                <li><a href="{{url('product/details/' .$summerCollection->id .'/'. $summerCollection->slug)}}"><i class="icofont-eye-alt"></i></a></li>
                                                
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="summmer_item_content">
                                        <h4>{{str_limit($summerCollection->name, 20)}}</h4>
                                        <h3>USD &#36; {{$summerCollection->price}}</h3>
                                        
                                        <a class="addtocart" href="{{url('/cart/add/' .$summerCollection->id)}}"><i class="icofont-shopping-cart"></i> </a>
                                        <a href="{{url('product/details/' .$summerCollection->id .'/'. $summerCollection->slug)}}"><i class="icofont-eye-alt"></i></a>
                                    </div>
                                </a>
                            </div>
                            @endforeach
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- satrt feater product -->
    <section id="feature_product">
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <div class="feature_product_title">
                        <h3>Featured Product</h3>
                    </div>
                </div>
            </div>
            <div class="featur_product_container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="row">
                            <!-- <div class="col-xl-5 col-lg-5 col-md-6">
                                <div class="feater_product_image">
                                    <img class="img-fluid" src="{{asset('contents/website')}}/assests/img/product/watch-bg.jpg" alt="">
                                    <div class="feater_product_image_overlay_content">
                                        <h3>Smart Watch 2.0</h3>
                                        <p>Space Gray Aluminum Case with Black/Volt Real Sport Band </p>
                                        <h6>38mm | 42mm</h6>
                                        <a href="details.html">View Details</a>
                                    </div>
                                </div>
                            </div> -->
                            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                                <div class="row">
                                    @foreach($featuredProducts as $key=>$featuredProduct)
                                    <div class="col-xl-4 col-lg-4 col-md-4 col-sm-6 pl-0 text-center">
                                        <div class="feater_product_item">
                                            <a href="{{url('product/details/'.$featuredProduct->id.'/'.$featuredProduct->slug)}}">
                                                <img class="img-fluid" src="{{asset('storage/products/'.$featuredProduct->image)}}" alt="">
                                            </a>
                                            <h4>{{str_limit($featuredProduct->name, 20)}}</h4>
                                            <h3>USD &#36; {{$featuredProduct->price}}</h3>
                                            
                                            <a class="addtocart" href="{{url('cart/add/'.$featuredProduct->id)}}"><i class="icofont-shopping-cart"></i></a>
                                            <!-- <a href="#"><i class="fas fa-heart"></i></a> -->
                                            <a href="{{url('product/details/'.$featuredProduct->id.'/'.$featuredProduct->slug)}}"><i class="icofont-eye-alt"></i></a>
                                        </div>
                                    </div>
                                        @if($key+1 == 3)
                                            @break
                                        @endif
                                    @endforeach
                                </div>
                            </div>
                            @foreach($featuredProducts as $key=>$featuredProduct)
                                @if($key+1 < 4)
                                    @continue
                                @endif
                            <div class="col-xl-4 col-lg-4 col-md-6 col-sm-6">
                                <div class="feater_product_item feater_product_item_2">
                                    <a href="{{url('product/details/'.$featuredProduct->id.'/'.$featuredProduct->slug)}}">
                                        <img class="img-fluid" src="{{asset('storage/products/'.$featuredProduct->image)}}" alt="">
                                    </a>
                                    <a href="{{url('product/details/'.$featuredProduct->id.'/'.$featuredProduct->slug)}}">
                                        <h4>{{str_limit($featuredProduct->name, 20)}}</h4>
                                    </a>
                                    <h3>USD &#36; {{$featuredProduct->price}}</h3>
                                    <!-- <ul>
                                        <li><i class="fas fa-star"></i></li>
                                        <li><i class="fas fa-star"></i></li>
                                        <li><i class="fas fa-star"></i></li>
                                        <li><i class="fas fa-star"></i></li>
                                        <li><i class="fas fa-star"></i></li>
                                    </ul> -->
                                    <a class="addtocart" href="{{url('cart/add/'.$featuredProduct->id)}}"><i class="icofont-shopping-cart"></i></a>
                                    <!-- <a href="#"><i class="fas fa-heart"></i></a> -->
                                    <a href="{{url('product/details/'.$featuredProduct->id.'/'.$featuredProduct->slug)}}"><i class="icofont-eye-alt"></i></a>
                                </div>
                            </div>
                            @endforeach
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
     {{--<div class="featured-product-carousel-area">
            <div class="container">
                <div class="section-padding"> 
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="section-title"><h2>FEATURED PRODUCTS</h2></div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="product-carousel">
                            <div class="col-lg-12">
                                <!--item 1 start-->
                                <div class="single-product-item">
                                    <div class="sale-product-label"><span>sale</span></div>
                                    <div class="single-product clearfix">
                                        <a href="#">
                                            <span class="product-image">
                                                <img src="{{asset('contents/website')}}/img/product/21.jpg" alt="">
                                            </span>
                                            <span class="product-image hover-image">
                                                <img src="{{asset('contents/website')}}/img/product/9.jpg" alt="">
                                            </span>
                                        </a>
                                        <div class="button-actions clearfix">   
                                            <button class="button add-to-cart" type="button">
                                                <span><i class="fa fa-shopping-cart"></i></span>
                                            </button>
                                            <ul class="add-to-links">
                                                <li class="quickview">
                                                    <a class="btn-quickview modal-view" href="#" data-toggle="modal" data-target="#productModal">
                                                        <i class="fa fa-search-plus"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a class="link-wishlist" href="wishlist.html">
                                                        <i class="fa fa-heart"></i>
                                                    </a>
                                                </li>                                                                                                                   <li>
                                                    <a class="link-compare" href="#">
                                                        <i class="fa fa-retweet"></i>
                                                    </a>
                                                </li>                                           
                                            </ul>
                                        </div>
                                    </div>
                                    <h2 class="single-product-name"><a href="#"> Donec ac tempus </a></h2>
                                    <div class="price-box">
                                        <p class="old-price">
                                            <span class="price">$899.00</span>
                                        </p>
                                        <p class="special-price">
                                            <span class="price">$765.00</span>
                                        </p>                                            
                                    </div>
                                </div><!--end of item 1-->
                            </div><!--end of col-md-3-->
                            <div class="col-lg-12">
                                <!--item 2 start-->
                                <div class="single-product-item">
                                    <div class="sale-product-label"><span>sale</span></div>
                                    <div class="single-product clearfix">
                                        <a href="#">
                                            <span class="product-image">
                                                <img src="{{asset('contents/website')}}/img/product/15.jpg" alt="">
                                            </span>
                                            <span class="product-image hover-image">
                                                <img src="{{asset('contents/website')}}/img/product/14.jpg" alt="">
                                            </span>
                                        </a>
                                        <div class="button-actions clearfix">   
                                            <button class="button add-to-cart" type="button">
                                                <span><i class="fa fa-shopping-cart"></i></span>
                                            </button>
                                            <ul class="add-to-links">
                                                <li class="quickview">
                                                    <a class="btn-quickview modal-view" href="#" data-toggle="modal" data-target="#productModal">
                                                        <i class="fa fa-search-plus"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a class="link-wishlist" href="wishlist.html">
                                                        <i class="fa fa-heart"></i>
                                                    </a>
                                                </li>                                                                                                                   <li>
                                                    <a class="link-compare" href="#">
                                                        <i class="fa fa-retweet"></i>
                                                    </a>
                                                </li>                                           
                                            </ul>
                                        </div>
                                    </div>
                                    <h2 class="single-product-name"><a href="#">occaecati cupiditate</a></h2>
                                    <div class="price-box">
                                        <p class="old-price">
                                            <span class="price">$170.00</span>
                                        </p>
                                        <p class="special-price">
                                            <span class="price">$120.00</span>
                                        </p>                                            
                                    </div>
                                </div><!--end of item 2-->
                            </div><!--end of col-md-3-->
                            <div class="col-lg-12">
                                <!--item 3 start-->
                                <div class="single-product-item">
                                    <div class="sale-product-label"><span>sale</span></div>
                                    <div class="single-product clearfix">
                                        <a href="#">
                                            <span class="product-image">
                                                <img src="{{asset('contents/website')}}/img/product/13.jpg" alt="">
                                            </span>
                                            <span class="product-image hover-image">
                                                <img src="{{asset('contents/website')}}/img/product/12.jpg" alt="">
                                            </span>
                                        </a>
                                        <div class="button-actions clearfix">   
                                            <button class="button add-to-cart" type="button">
                                                <span><i class="fa fa-shopping-cart"></i></span>
                                            </button>
                                            <ul class="add-to-links">
                                                <li class="quickview">
                                                    <a class="btn-quickview modal-view" href="#" data-toggle="modal" data-target="#productModal">
                                                        <i class="fa fa-search-plus"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a class="link-wishlist" href="wishlist.html">
                                                        <i class="fa fa-heart"></i>
                                                    </a>
                                                </li>                                                                                                                   <li>
                                                    <a class="link-compare" href="#">
                                                        <i class="fa fa-retweet"></i>
                                                    </a>
                                                </li>                                           
                                            </ul>
                                        </div>
                                    </div>
                                    <h2 class="single-product-name"><a href="#">Primis in faucibus</a></h2>
                                    <div class="price-box">
                                        <p class="special-price">
                                            <span class="price">$333.00</span>
                                        </p>                                            
                                    </div>
                                </div><!--end of item 3-->
                            </div><!--end of col-md-3-->
                            <div class="col-lg-12">
                                <!--item 4 start-->
                                <div class="single-product-item">
                                    <div class="new-product-label"><span>new</span></div>
                                    <div class="single-product clearfix">
                                        <a href="#">
                                            <span class="product-image">
                                                <img src="{{asset('contents/website')}}/img/product/2.jpg" alt="">
                                            </span>
                                            <span class="product-image hover-image">
                                                <img src="{{asset('contents/website')}}/img/product/3.jpg" alt="">
                                            </span>
                                        </a>
                                        <div class="button-actions clearfix">   
                                            <button class="button add-to-cart" type="button">
                                                <span><i class="fa fa-shopping-cart"></i></span>
                                            </button>
                                            <ul class="add-to-links">
                                                <li class="quickview">
                                                    <a class="btn-quickview modal-view" href="#" data-toggle="modal" data-target="#productModal">
                                                        <i class="fa fa-search-plus"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a class="link-wishlist" href="wishlist.html">
                                                        <i class="fa fa-heart"></i>
                                                    </a>
                                                </li>                                                                                                                   <li>
                                                    <a class="link-compare" href="#">
                                                        <i class="fa fa-retweet"></i>
                                                    </a>
                                                </li>                                           
                                            </ul>
                                        </div>
                                    </div>
                                    <h2 class="single-product-name"><a href="#">Etiam gravida</a></h2>
                                    <div class="price-box">
                                        <p class="old-price">
                                            <span class="price">$222.00</span>
                                        </p>                                            
                                    </div>
                                </div><!--end of item 4-->
                            </div><!--end of col-md-3-->
                            <div class="col-lg-12">
                                <!--item 5 start-->
                                <div class="single-product-item">
                                    <div class="new-product-label"><span>new</span></div>
                                    <div class="single-product clearfix">
                                        <a href="#">
                                            <span class="product-image">
                                                <img src="{{asset('contents/website')}}/img/product/1.jpg" alt="">
                                            </span>
                                            <span class="product-image hover-image">
                                                <img src="{{asset('contents/website')}}/img/product/2.jpg" alt="">
                                            </span>
                                        </a>
                                        <div class="button-actions clearfix">   
                                            <button class="button add-to-cart" type="button">
                                                <span><i class="fa fa-shopping-cart"></i></span>
                                            </button>
                                            <ul class="add-to-links">
                                                <li class="quickview">
                                                    <a class="btn-quickview modal-view" href="#" data-toggle="modal" data-target="#productModal">
                                                        <i class="fa fa-search-plus"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a class="link-wishlist" href="wishlist.html">
                                                        <i class="fa fa-heart"></i>
                                                    </a>
                                                </li>                                                                                                                   <li>
                                                    <a class="link-compare" href="#">
                                                        <i class="fa fa-retweet"></i>
                                                    </a>
                                                </li>                                           
                                            </ul>
                                        </div>
                                    </div>
                                    <h2 class="single-product-name"><a href="#">Nunc facilisis </a></h2>
                                    <div class="price-box">
                                        <p class="special-price">
                                            <span class="price">$423.00</span>
                                        </p>                                            
                                    </div>
                               </div><!--end of item 5-->
                            </div><!--end of col-md-3-->
                            <div class="col-lg-12">
                                <!--item 6 start-->
                                <div class="single-product-item">
                                    <div class="sale-product-label"><span>sale</span></div>
                                    <div class="single-product clearfix">
                                        <a href="#">
                                            <span class="product-image">
                                                <img src="{{asset('contents/website')}}/img/product/6.jpg" alt="">
                                            </span>
                                            <span class="product-image hover-image">
                                                <img src="{{asset('contents/website')}}/img/product/7.jpg" alt="">
                                            </span>
                                        </a>
                                        <div class="button-actions clearfix">   
                                            <button class="button add-to-cart" type="button">
                                                <span><i class="fa fa-shopping-cart"></i></span>
                                            </button>
                                            <ul class="add-to-links">
                                                <li class="quickview">
                                                    <a class="btn-quickview modal-view" href="#" data-toggle="modal" data-target="#productModal">
                                                        <i class="fa fa-search-plus"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a class="link-wishlist" href="wishlist.html">
                                                        <i class="fa fa-heart"></i>
                                                    </a>
                                                </li>                                                                                                                   <li>
                                                    <a class="link-compare" href="#">
                                                        <i class="fa fa-retweet"></i>
                                                    </a>
                                                </li>                                           
                                            </ul>
                                        </div>
                                    </div>
                                    <h2 class="single-product-name"><a href="#"> Tempus Donec le </a></h2>
                                    <div class="price-box">
                                        <p class="old-price">
                                            <span class="price">$321.00</span>
                                        </p>
                                        <p class="special-price">
                                            <span class="price">$222.00</span>
                                        </p>                                            
                                    </div>
                               </div><!--end of item 6-->
                            </div><!--end of col-md-3-->
                            <div class="col-lg-12">
                                <!--item 7 start-->
                                <div class="single-product-item">
                                    <div class="new-product-label"><span>new</span></div>
                                    <div class="single-product clearfix">
                                        <a href="#">
                                            <span class="product-image">
                                                <img src="{{asset('contents/website')}}/img/product/8.jpg" alt="">
                                            </span>
                                            <span class="product-image hover-image">
                                                <img src="{{asset('contents/website')}}/img/product/9.jpg" alt="">
                                            </span>
                                        </a>
                                        <div class="button-actions clearfix">   
                                            <button class="button add-to-cart" type="button">
                                                <span><i class="fa fa-shopping-cart"></i></span>
                                            </button>
                                            <ul class="add-to-links">
                                                <li class="quickview">
                                                    <a class="btn-quickview modal-view" href="#" data-toggle="modal" data-target="#productModal">
                                                        <i class="fa fa-search-plus"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a class="link-wishlist" href="wishlist.html">
                                                        <i class="fa fa-heart"></i>
                                                    </a>
                                                </li>                                                                                                                   <li>
                                                    <a class="link-compare" href="#">
                                                        <i class="fa fa-retweet"></i>
                                                    </a>
                                                </li>                                           
                                            </ul>
                                        </div>
                                    </div>
                                    <h2 class="single-product-name"><a href="#">occaecati Primis</a></h2>
                                    <div class="price-box">
                                        <p class="special-price">
                                            <span class="price">$453.00</span>
                                        </p>                                            
                                    </div>
                               </div><!--end of item 7-->
                            </div><!--end of col-md-3-->
                        </div>
                    </div>
                </div>      
            </div>
        </div>--}}
    <!-- start new arival -->
    <section id="newarival">
        <div class="container">
            <div class="row">
                <div class="col-xl-12 col-lg-12 col-md-12">
                    <div class="new_arival_title">
                        <h3>New Arival</h3>
                    </div>
                </div>
            </div>
            <div class="new_arival_container">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-12">
                            <div class="new_arival_slider_active owl-carousel">
                                @foreach($newArivals as $newArival)
                                <!-- single item -->
                                <div class="new_arival_item">
                                    <a href="{{url('product/details/' .$newArival->id .'/'. $newArival->slug)}}">
                                        <div class="new_arival_image">
                                            <img src="{{asset('storage/products/'.$newArival->image)}}" alt="">
                                            <div class="new_arival_hover">
                                                <ul>
                                                    <li><a class="addtocart" href="{{url('cart/add/'.$newArival->id)}}"><i class="icofont-ui-cart"></i></a></li>
                                                    <!-- <li><a href="#"><i class="icofont-ui-love"></i></a></li> -->
                                                    <li><a href="{{url('product/details/' . $newArival->id . '/' . $newArival->slug)}}"><i class="icofont-eye"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="new_arival_content">
                                            <a href="{{url('product/details/' .$newArival->id .'/'. $newArival->slug)}}">
                                                <h4>{{str_limit($newArival->name, 20)}}</h4>
                                            </a>
                                            <div class="row">
                                                <div class="col-12">
                                                    <div class="new_arival_content_price">
                                                        <h3>USD &#36; {{$newArival->price}}</h3>
                                                    </div>
                                                </div>
                                                <div class="col-12">
                                                    <div class="new_arival_content_reating">
                                                        
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                                @endforeach
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- start tshirt area -->
    <section id="teshirt">
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <div class="teshirt_title">
                        <h3>T-Shirt</h3>
                    </div>
                </div>
            </div>
            <div class="teshirt_container">
                <div class="row">
                    <div class="col-xl-8">
                        <div class="teshirt_slide_active owl-carousel">
                            <!--single item-->
                            @foreach($trendyTshirts as $trendyTshirt)
                            <div class="teshirt_slide_item">
                                <a href="{{url('product/details/' .$trendyTshirt->id .'/'. $trendyTshirt->slug)}}">
                                    <div class="teshirt_slide_image">
                                        <img src="{{asset('storage/products/'.$trendyTshirt->image)}}" alt="">
                                        <div class="teshirt_hover">
                                            <ul>
                                                <li><a class="addtocart" href="{{url('cart/add/'.$trendyTshirt->id)}}"><i class="icofont-ui-cart"></i></a></li>
                                                <!-- <li><a href="#"><i class="icofont-ui-love"></i></a></li> -->
                                                <li><a href="{{url('product/details/' . $trendyTshirt->id . '/' . $trendyTshirt->slug)}}"><i class="icofont-eye"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="teshirt_slide_cotent">
                                        <a href="{{url('product/details/' .$trendyTshirt->id .'/'. $trendyTshirt->slug)}}">
                                            <h4>{{str_limit($trendyTshirt->name)}}</h4>
                                        </a>
                                        <div class="row">
                                            <div class="col-12">
                                                <div class="teshirt_slide_cotent_price">
                                                    <h3>USD &#36; {{$trendyTshirt->price}}</h3>
                                                </div>
                                            </div>
                                            <div class="col-12">
                                                <div class="teshirt_slide_cotent_rating">
                                                    
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            @endforeach
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-12">
                        <section id="newslater">
                            <!-- <div class="container-fluid"> -->
                                <div class="row">
                                    <div class="col-xl-12">
                                        <div class="newslater_container text-center">
                                            <h3>Subscribe here</h3>
                                            <!-- <p>Instant Sign Up. Cancel Anytime. No Credit Card Required</p> -->
                                            <div class="news_later_form">
                                                <form action="{{url('subscribe')}}" method="post">
                                                    @csrf

                                                    <div class="news_later_input_container">
                                                        <input  name="email" type="email" placeholder="Enter your email" required=""><br>

                                                        @if ($errors->has('email'))
                                                            <span class="invalid-feedback" role="alert">
                                                                <strong>{{ $errors->first('email') }}</strong>
                                                            </span>
                                                        @endif
                                                        
                                                        <button  type="submit">Subscribe</button>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            <!-- </div> -->
                        </section>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <!--start Gadget-->
    <section id="gadget">
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <div class="gadget_title">
                        <h3>Accessories</h3>
                    </div>
                </div>
            </div>
            <div class="gadget_container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="gadegt_slider_active owl-carousel">
                            <!-- single item -->
                            @foreach($gadgetAccessories as $gadgetAccessory)
                            <div class="gadget_slid_item">
                                <a href="{{url('product/details/' .$gadgetAccessory->id .'/'. $gadgetAccessory->slug)}}">
                                    <div class="gadget_slid_image">
                                        <img src="{{asset('storage/products/'.$gadgetAccessory->image)}}" alt="">
                                        <div class="gadget_hover">
                                            <ul>
                                                <li><a class="addtocart" href="{{url('cart/add/'.$gadgetAccessory->id)}}"><i class="icofont-ui-cart"></i></a></li>
                                                <!-- <li><a href="#"><i class="icofont-ui-love"></i></a></li> -->
                                                <li><a href="{{url('product/details/' . $gadgetAccessory->id . '/' . $gadgetAccessory->slug)}}"><i class="icofont-eye"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </a>
                                <div class="gadget_slid_content">
                                    <a href="{{url('product/details/' .$gadgetAccessory->id .'/'. $gadgetAccessory->slug)}}">
                                        <h4>{{str_limit($gadgetAccessory->name, 20)}}</h4>
                                    </a>
                                    <div class="row">
                                        <div class="col-12">
                                            <div class="gadget_slid_content_price">
                                                <h3>USD &#36; {{$gadgetAccessory->price}}</h3>
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            
                                        </div>
                                    </div>
                                </div>
                            </div>
                            @endforeach
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- start tab product -->
    
    <form id="addtocart-form" action="" method="POST" style="display: none;">
        @csrf
    </form>
@endsection
@push('js')
    <script src="{{asset('contents/website/assests/js/owl.carousel.min.js')}}"></script>
    <script src="{{asset('contents/website/assests/js/owl.carousel.active.js')}}"></script>
@endpush

@extends('layouts.website')
@section('title', 'Products')
@section('content')
@push('css')
    <link rel="stylesheet" href="{{asset('contents/website/assests/css/owl.carousel.min.css')}}">
@endpush
    @include('website.infobar')
    <!-- satrt product page main container -->
    <section id="product_page_main_container">
        <div class="container">
            <div class="row justify-content-center">
                @if($products->count() > 0)
                <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6">
                    <div class="product_page_sidebar">
                        <!-- product category -->
                        <div class="product_page_category">
                            <h4>Categories</h4>
                            <ul>
                                @foreach($products as $product)
                                    @foreach($product->categories as $category)
                                    <li><a href="{{url('product/category/'.$category->id.'/'. $category->slug)}}">{{$category->name}}</a></li>
                                    @endforeach 
                                @endforeach
                            </ul>
                        </div>
                        <!-- start product brands -->
                        <div class="productpage_brands">
                            <h4>BRANDS</h4>
                            <ul>
                                @foreach($products as $product)
                                    <li><a href="{{url('product/brand/'. $product->brand->slug)}}">{{$product->brand->name}} 
                                    <span>{{$product->brand->products()->count()}}</span></a></li>
                                @endforeach
                            </ul>
                        </div>
                        
                        <!-- product page feater product slider -->
                        
                    </div>
                </div>
                @endif
                <div class="col-xl-9 col-lg-8 col-md-8 col-sm-6">
                    <div class="product_page_product_container">
                        <div class="row">

                            <!-- single product -->
                            @forelse($products as $product)
                            <div class="col-xl-4 col-lg-6 col-md-6">
                                <a href="{{url('product/details/'.$product->id.'/'.$product->slug)}}">
                                    <div class="product_page_product">
                                        <div class="product_page_product_image">
                                            <img class="img-fluid" src="{{asset('storage/products/' .$product->image)}}" alt="">
                                            <div class="produtc_page_product_hover">
                                                <ul>
                                                    <li>
                                                        <a class="addtocart" href="{{url('cart/add/'.$product->id)}}">
                                                            <i class="icofont-ui-cart"></i>
                                                        </a>
                                                    </li>
                                                    
                                                    <li><a href="{{url('product/details/' .$product->id . '/' . $product->slug)}}"><i class="icofont-eye"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product_page_product_content text-center">
                                            <h4>{{str_limit($product->name, 20)}}</h4>
                                            <h3>USD &#36; {{$product->price}}</h3>
                                            <a class="addtocart" href="{{url('cart/add/'.$product->id)}}"><i class="icofont-ui-cart"></i> Add To Cart</a>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            @empty
                            <div class="col-xl-12 col-lg-12 col-md-12">
                                <div id="notfound">
                                    <div class="notfound">
                                        <div class="notfound-404">
                                            <h3>Oops! No Product found</h3>
                                            <h1><span>4</span><span>0</span><span>4</span></h1>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            @endforelse
                            <!-- single product -->
                        </div>
                    </div>
                    @if($products->count() > 0)
                    <div class="product_page_pagination">
                        <div class="row">
                            <div class="col-xl-6 col-lg-6 col-md-6">
                                <div class="pagination_info">
                                    <p>Showing {{$products->count()}} of  {{$products->total()}} results</p>
                                </div>
                            </div>
                            <div class="col-xl-6 col-lg-6 col-md-6">
                                <div class="pgination_content">
                                    <nav aria-label="Page navigation example">
                                        <ul class="pagination justify-content-end">
                                            <li class="page-item">
                                                {{$products->appends(request()->only(['query']))->links()}}
                                            </li>
                                        </ul>
                                    </nav>
                                </div>
                            </div>
                        </div>
                    </div>
                    @endif
                </div>
            </div>
        </div>
    </section>
    <form id="addtocart-form" action="" method="POST" style="display: none;">
        @csrf
    </form>
@endsection
@push('js')
    <script src="{{asset('contents/website/assests/js/owl.carousel.min.js')}}"></script>
    <script src="{{asset('contents/website/assests/js/owl.carousel.active.js')}}"></script>
@endpush

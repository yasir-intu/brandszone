<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords" content="@yield('keywords', 'brandszoneglobal')">
    <meta name="description" content="@yield('description', 'brandszoneglobal.com')">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>@yield('title', $basicinfo->title)</title>
    <link rel="icon" href="{{asset('storage/logos/'. $basicinfo->favicon)}}">
    <link rel="stylesheet" href="{{asset('contents/website/assests/css/fontawesome-all.min.css')}}">
    <link rel="stylesheet" href="{{asset('contents/website/assests/css/icofont.min.css')}}">
    <link rel="stylesheet" href="{{asset('contents/website/assests/css/icofont.css')}}">
    <link rel="stylesheet" href="{{asset('contents/website/assests/css/animate.css')}}">
    <link rel="stylesheet" href="{{asset('contents/website/assests/css/bootstrap.min.css')}}">
    @stack('css')
    <link rel="stylesheet" href="{{asset('contents/website/assests/css/style.css')}}">
    <link rel="stylesheet" href="{{asset('contents/website/assests/css/responsive.css')}}">
    <link rel="stylesheet" href="{{asset('contents/website/assests/css/metisMenu.min.css')}}">
    <link rel="stylesheet" href="{{asset('contents/website/assests/css/toastr.min.css')}}">
    <script src="{{asset('contents/website/assests/js/modernizr-2.8.3.min.js')}}"></script>
    <script src="https://www.google.com/recaptcha/api.js" async defer></script>
</head>

<body>
    <div class="loading">
        <img src="{{asset('contents/website/assests/img/lg.curve-bars-loading-indicator.gif')}}" alt="">
    </div>
    <!--strat header top area-->
    <header id="header_top">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6">
                    <div class="header_top_info_text">
                        
                        <ul>
                            <li class="d-inline-block pr-2"><a href="tel:{{$basicinfo->phone}}"><i class="fas fa-phone-square"></i> {{$basicinfo->phone}} </a></li>
                            <li class="d-inline-block"><a href="mailto:{{$basicinfo->email}}"><i class="fas fa-envelope-square"></i> {{$basicinfo->email}}</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6">
                    <div class="header_top_info text-center">
                        {{--<ul>
                            <li><a href="mailto:{{$basicinfo->email}}"><i class="fas fa-envelope-square"></i> {{$basicinfo->email}}</a></li>
                            <li><a href="tel:{{$basicinfo->phone}}"><i class="fas fa-phone-square"></i> {{$basicinfo->phone}} </a></li>
                        </ul>--}}
                            <div class="user_login">
                                @if(Session::has('customer_id'))
                                    @php
                                        $id = Session::get('customer_id');
                                        $customer = App\Customer::find($id);
                                    @endphp
                                <ul>
                                    <li><a href="{{url('customer/dashboard')}}"><i class="far fa-user"></i> {{$customer->name}}</a>
                                        <ul>
                                            <li class="{{ request()->is('customer/account') ? 'active' : '' }}">
                                                <a href="{{url('customer/account')}}"><i class="far fa-user"></i> My Profile</a>
                                           </li>
                                            <!-- <li class="{{ request()->is('customer/orders') ? 'active' : '' }}">
                                                <a href="{{url('customer/orders')}}"><i class="fas fa-shopping-bag"></i> My Orders</a>
                                           </li> -->
                                            <li>
                                                <a href="{{url('customer/logout')}}"><i class="fas fa-unlock"></i> Logout</a>
                                           </li>
                                        </ul>
                                    </li>
                                </ul>
                                @else
                                <ul>
                                    
                                    <li style=""><a href="{{url('customer/login')}}" ><i class="fas fa-user"></i> Login</a></li>
                                    <!-- <li><a href="{{url('customer/login')}}"><i ></i>/</a></li> -->

                                    <li><a href="{{url('customer/register')}}"><i class="far fa-user"></i> Register</a></li>

                                </ul>
                                @endif
                            </div>

                    </div>

                </div>
            </div>
        </div>
    </header>
    <!--satrt logo container-->
    <section id="banar_top_area">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-xl-2 col-lg-2 col-md-2 col-sm-2">
                    <div class="main_logo">
                        <a href="{{url('/')}}">
                            <img class="img-fluid" src="{{asset('storage/logos/'.$basicinfo->logo)}}" alt="logo">
                        </a>
                    </div>
                </div>
                <div class="col-xl-8 col-lg-8 col-md-8 col-sm-8">
                    <div class="serach_bar">
                        <form action="{{url('search')}}" method="get">
                            <div class="search_form_box">
                                <input type="text" name="query" placeholder="Search for product" value="{{ isset($query) ? $query : '' }}" required="">
                                <button type="submit"><i class="fas fa-search"></i></button>
                                @if($errors->has('query'))
                                    <span class="invalid-feedback">
                                        <strong>{{$errors->first('query')}}</strong>
                                    </span>
                                @endif
                            </div>
                        </form>
                    </div>
                </div>
                <div class="col-xl-2 col-lg-2 col-md-2 col-sm-2">
                    <div class="row">
                        {{--<div class="col-xl-7 col-lg-7 col-md-7 col-sm-7">
                            <div class="user_login">
                                @if(Session::has('customer_id'))
                                    @php
                                        $id = Session::get('customer_id');
                                        $customer = App\Customer::find($id);
                                    @endphp
                                <ul>
                                    <li><a href="{{url('customer/dashboard')}}"><i class="far fa-user"></i> {{$customer->name}}</a>
                                        <ul>
                                            <li class="{{ request()->is('customer/account') ? 'active' : '' }}">
                                                <a href="{{url('customer/account')}}"><i class="far fa-user"></i> My Profile</a>
                                           </li>
                                            <!-- <li class="{{ request()->is('customer/orders') ? 'active' : '' }}">
                                                <a href="{{url('customer/orders')}}"><i class="fas fa-shopping-bag"></i> My Orders</a>
                                           </li> -->
                                            <li>
                                                <a href="{{url('customer/logout')}}"><i class="fas fa-unlock"></i> Logout</a>
                                           </li>
                                        </ul>
                                    </li>
                                </ul>
                                @else
                                <ul>
                                    
                                    <li style="left:70%;"><a href="{{url('customer/login')}}" ><i class="fas fa-user"></i> Login</a></li>
                                    <!-- <li><a href="{{url('customer/login')}}"><i ></i>/</a></li> -->

                                    <li><a href="{{url('customer/register')}}"><i class="far fa-user"></i> Register</a></li>

                                </ul>
                                @endif
                            </div>
                        </div>--}}
                        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 ptl ptr">
                            <div class="user_cart">
                                <div class="user_cart_box" style="">
                                    <p>Cart</p>
                                    <span class="cart_bag"><i class="fas fa-shopping-cart"></i></span>
                                    @if(Cart::count()>0)
									<h6>{{Cart::count()}}</h6>
									@endif
                                </div>
                            </div>
                            <div class="cart_togle_content">
                                <div class="row">
                                    @forelse($cartItems as $cartItem)
                                    <div class="mini_cart_item">
                                        <div class="row">
                                            <div class="col-4 col-xl-4 col-lg-4 col-md-4 col-sm-4">
                                                <div class="mini_cart_image">
                                                    <img class="img-fluid" src="{{asset('storage/products/'.$cartItem->options->image)}}" alt="cart">
                                                </div>
                                            </div>
                                            <div class="col-8 col-xl-8 col-lg-8 col-md-8 col-sm-8">
                                                <div class="mini_cart_content">
                                                    <h4>{{str_limit($cartItem->name, 20)}}</h4>
                                                    <p>{{$cartItem->qty}} × {{$cartItem->price}}</p>
                                                    <a class="removetocart" href="{{url('cart/remove/'.$cartItem->rowId)}}"><i class="far fa-trash-alt"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    @empty
                                    <div class="col-md-10 ">
                                        <p> Shopping Cart Empty</p>
                                    </div>
                                    @endforelse
                                    @if(Cart::count() > 0)
                                    <div class="min_cart_button_bottom text-center">
                                        <a href="{{url('shopping/cart')}}">View Cart</a>
                                        <a href="{{url('payment/method')}}" class="min_cart_btn_sp">Check Out</a>
                                    </div>
                                    @endif
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- start main menu area -->
    <section id="main_menu">
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <div class="menu_item_container pr">
                        <nav>
                            <ul>
                                <li class="{{ request()->is('/') ? 'active' : '' }}"><a href="{{url('/')}}"><i class="fas fa-home"></i> Home</a></li>
                                @foreach($maincategories as $maincategory)
                                <li class="{{ request()->is('product/category/'.$maincategory->slug) ? 'active' : '' }}">
                                    <a href="{{url('product/category/'.$maincategory->slug)}}">{{$maincategory->name}}</a>
                                    @if($maincategory->subcategories()->count() > 0)
                                    <div class="mega_menu">
                                        <div class="container">
                                            <div class="row">
                                                <div class="col-xl-7 col-lg-7 col-md-7 col-sm-7">
                                                    <div class="mega_menu_link">
                                                        <div class="row">
                                                            @php
                                                                $subcategories = $maincategory->subcategories()->get();
                                                            @endphp
                                                            @foreach($subcategories as $subcategory)
                                                                @if($subcategory->categories->count() > 0)
                                                                <div class="col-xl-4 col-lg-4 col-md-4 col-sm-4">
                                                                    <div class="mega_menu_link_item">
                                                                        <h4>{{$subcategory->name}}</h4>
                                                                        <ul>
                                                                            @php
                                                                                $categories = $subcategory->categories()->get();
                                                                            @endphp
                                                                            @foreach($categories as $category)
                                                                            <li><a href="{{url('product/category/'.$category->id.'/'.$category->slug)}}">{{$category->name}}</a></li>
                                                                            @endforeach
                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                                @endif
                                                            @endforeach
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-xl-5 col-lg-5 col-md-5 col-sm-5">
                                                    
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    @endif
                                </li>
                                @endforeach
                                <li class="{{ request()->is('about') ? 'active' : '' }}"><a href="{{url('/about')}}">About</a></li>
                                <li class="{{ request()->is('contact') ? 'active' : '' }}"><a href="{{url('/contact')}}">Contact</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- start mobile menu start here -->
    {{--<section id="mobile_menu_top">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-4 col-sm-12">
                    <div class="mobile_menu_top_logo">
                        <a href="{{url('/')}}">
                            <img class="img-fluid" src="{{asset('storage/logos/'. $basicinfo->logo)}}" alt="logo">
                        </a>
                    </div>
                </div>
                <div class="col-8 col-sm-12">
                    <div class="mobile_menu_top_search">
                        <form action="{{url('search')}}" method="get">
                            <div class="mobile_menu_top_search_box">
                                <input type="text" name="query" placeholder="Search for product" value="{{ isset($query) ? $query : '' }}" required="">
                                <button type="submit"><i class="fas fa-search"></i></button>
                                @if($errors->has('query'))
                                    <span class="invalid-feedback">
                                        <strong>{{$errors->first('query')}}</strong>
                                    </span>
                                @endif
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>--}}
    <!-- start mobile menu menu -->
    <section id="mobile_menu_menu">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-2 col-sm-1">
                    <div class="mobile_menu_menu_icon">
                        <i class="fas fa-bars show_icon"></i>
                        <i class="fas fa-times close_icon"></i>

                    </div>
                </div>
                <div class="col-10 col-sm-7">
                    <div class="mobile_menu_top_search">
                        <form action="{{url('search')}}" method="get">
                            <div class="mobile_menu_top_search_box">
                                <input type="text" name="query" placeholder="Search for product" value="{{ isset($query) ? $query : '' }}" required="">
                                <button type="submit"><i class="fas fa-search"></i></button>
                                @if($errors->has('query'))
                                    <span class="invalid-feedback">
                                        <strong>{{$errors->first('query')}}</strong>
                                    </span>
                                @endif
                            </div>
                        </form>
                    </div>
                    <div class="mobile_menu_menu_user">

                        <div class="user_login">
                            @if(Session::has('customer_id'))
                                @php
                                    $id = Session::get('customer_id');
                                    $customer = App\Customer::find($id);
                                @endphp
                            <ul>
                                <li><a href="{{url('customer/dashboard')}}"><i class="far fa-user"></i> {{str_limit($customer->name, 8)}}</a>
                                    <ul>
                                        <li class="{{ request()->is('customer/account') ? 'active' : '' }}">
                                            <a href="{{url('customer/account')}}"><i class="far fa-user"></i> My Profile</a>
                                       </li>
                                        <!-- <li class="{{ request()->is('customer/orders') ? 'active' : '' }}">
                                            <a href="{{url('customer/orders')}}"><i class="fas fa-shopping-bag"></i> My Orders</a>
                                       </li> -->
                                    </ul>
                                </li>
                                <li>
                                    <a href="{{url('customer/logout')}}"><i class="fas fa-unlock"></i> Logout</a>
                               </li>
                            </ul>
                            @else
                            <ul>
                                <li style="left:60%"><a href="{{url('customer/login')}}"><i class="fas fa-user"></i> Login</a></li>
                                <!-- <li><a href="{{url('customer/register')}}"><i class="far fa-user"></i> Sign Up</a></li> -->
                            </ul>
                            @endif
                        </div>
                    </div>
                </div>
                <div class="col-12 col-sm-4">
                    <div class="user_cart">
                        <div class="user_cart_box" style="height:35px;width:28px">
                            <!-- <p>Cart Item </p> -->
                            <span class="cart_bag"><i class="fas fa-shopping-cart"></i></span>
                            <h6>{{Cart::count()}}</h6>
                        </div>
                    </div>
                    <div class="cart_togle_content">
                        <div class="row">
                            @forelse($cartItems as $cartItem)
                            <div class="mini_cart_item">
                                <div class="row">
                                    <div class="col-xl-4 col-lg-4 col-md-4 col-sm-4">
                                        <div class="mini_cart_image">
                                            <img class="img-fluid" src="{{asset('storage/products/'.$cartItem->options->image)}}" alt="cart">
                                        </div>
                                    </div>
                                    <div class="col-xl-8 col-lg-8 col-md-4 col-sm-4">
                                        <div class="mini_cart_content">
                                            <h4>{{str_limit($cartItem->name, 30)}}</h4>
                                            <p>{{$cartItem->qty}} × {{$cartItem->price}}</p>
                                            <a class="removetocart" href="{{url('cart/remove/'.$cartItem->rowId)}}"><i class="far fa-trash-alt"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            @empty
                            <div class="col-md-12 text-center">
                                <p>Your Cart Item is empty</p>
                            </div>
                            @endforelse
                            @if(Cart::count() > 0)
                            <div class="min_cart_button_bottom text-center">
                                <a href="{{url('shopping/cart')}}">View Cart</a>
                                <a href="{{url('payment/method')}}" class="min_cart_btn_sp">Check Out</a>
                            </div>
                            @endif
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <form id="removetocart-form" action="" method="POST" style="display: none;">
            @csrf
            @method('delete')
        </form>

        <div id="moble_menu_menu_content">
            <div class="category_menu_mobile_content_menu">
                <aside class="sidebar">
                  <nav class="sidebar-nav">
                    <ul class="metismenu" id="auto-collapse-menu-demo">
                      <li class="{{ request()->is('/') ? 'active' : '' }}">
                          <a href="{{url('/')}}"><span class="sidebar-nav-item"><i class="icofont-home"></i> Home</span>
                        </a>
                      </li>
                      @foreach($maincategories as $maincategory)
                      <li class="{{ request()->is('product/category/'.$maincategory->slug) ? 'active' : '' }}">
                        <a href="{{url('product/category/'.$maincategory->slug)}}" aria-expanded="false"><i class="icofont-label"></i> {{$maincategory->name}} @if($maincategory->subcategories()->count() > 0)<span class="fa plus-times"></span>@endif</a>
                        @if($maincategory->subcategories()->count() > 0)
                            @php
                                $subcategories = $maincategory->subcategories()->get();
                            @endphp
                            @foreach($subcategories as $subcategory)
                            @if($subcategory->categories->count() > 0)
                            <ul class="metismenu" id="auto-collapse-menu-demo">
                                <li>
                                    <a href="javascript:void(0)" aria-expanded="false"><i class="icofont-label"></i> {{$subcategory->name}}  @if($subcategory->categories->count() > 0)<span class="fa plus-times"></span>@endif</a>
                                    <ul aria-expanded="false" class="animated fadeIn">
                                      @php
                                          $categories = $subcategory->categories()->get();
                                      @endphp
                                      @foreach($categories as $category)
                                      <li class="{{ request()->is('product/category/'.$category->id.'/'.$category->slug) ? 'active' : '' }}"><a href="{{url('product/category/'.$category->id.'/'.$category->slug)}}">{{$category->name}}</a></li>
                                      @endforeach
                                    </ul>
                                </li>
                            </ul>
                            @endif
                            @endforeach
                        @endif
                      </li>
                      @endforeach
                    </ul>
                  </nav>
                </aside>
            </div>
        </div>
    </section>
    
    @yield('content')

    <!-- satrt news later area -->
    <!-- <section id="newslater">
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <div class="newslater_container text-center">
                        <h3>sign up to newsletter</h3>
                        <p>Instant Sign Up. Cancel Anytime. No Credit Card Required</p>
                        <div class="news_later_form">
                            <form action="{{url('subscribe')}}" method="post">
                                @csrf

                                <div class="news_later_input_container">
                                    <input name="email" type="email" placeholder="Enter your email" required="">

                                    @if ($errors->has('email'))
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $errors->first('email') }}</strong>
                                        </span>
                                    @endif
                                    <button type="submit">Subscribe</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section> -->

    <!-- start footert top -->
    <section id="footer_top" >
        <div class="container-fluid ">
            <div class="row">
                <div class="col-xl-3 col-lg-3 col-md-3 col-sm-12">
                    <div class="footer_about">
                        <a href="{{url('/')}}">
                            <img class="img-fluid" src="{{asset('storage/logos/'.$basicinfo->logo)}}" alt="">
                        </a>
                        
                        <p style="text-align:center">{{$basicinfo->description}}. </p>
                        <ul style="text-align:center">
                            <li><a  target="_blank" href="{{$sociallink->facebook}}"><i class="fab fa-facebook-f"></i></a></li>
                            <li><a  target="_blank" href="{{$sociallink->twitter}}"><i class="fab fa-twitter"></i></a></li>
                            <li><a target="_blank" href="{{$sociallink->google}}"><i class="fab fa-google"></i></a></li>
                            <li><a  target="_blank" href="{{$sociallink->instagram}}"><i class="fab fa-instagram"></i></a></li>
                            <li><a  target="_blank" href="{{$sociallink->pinterest}}"><i class="fab fa-pinterest-p"></i></a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-xl-3 col-lg-3 col-md-3 col-sm-12 text-center">
                     <div class="footer_link">
                        <!-- <h3>CONTACTS</h3>
                        <div class="conatct_info_footer">
                             <p><span>Address:</span> {{$basicinfo->address}}</p>
                             <p><span>Phone:</span> <a href="tel:{{$basicinfo->phone_tow}}"> {{$basicinfo->phone_two}}</a></p>
                             <p><span>Hours:</span> 7 Days a week from 10 am to 6 pm</p>
                             <p><span>Email</span> <a href="mailto:{{$basicinfo->email_two}}"> {{$basicinfo->email_two}}</a></p>
                        </div> -->
                        <h3  >Corporate Information</h3>
                        <div class="conatct_info_footer" style="text-align:left">
                             <ul>
                             <a href="">About Us </a>
                             <a href="">Terms of use</a>
                             <a href="">Privacy Policy</a>
                             </ul>
                             
                        </div>
                    </div>           
                </div>
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
                    <div class="row">
                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6">
                            <div class="footer_link">
                                <h3 >Services</h3>
                                <ul>
                                    
                                    <a href="">Products Sourcing & Fullfilment</a>
                                    <a href="">Freight Fowarding</a>
                                    <a href="">Brokerage & Custom Clearance</a>
                                    <a href="">Trade Shows & Conferences</a>
                                    <a href="">In-Country Partnerships</a>
                                </ul>
                            </div>
                        </div>
                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6">
                            <div class="footer_link">
                                <h3  >Help Center</h3>
                                <ul >
                                    <a href="">What are the types of advertisements that is supported by FWE?</a>
                                    <a href="">What is considered to be a successful trade on FWE?</a>
                                    <a href="">What are the kind of products traders does FWE supports?</a>
                                    <a href="">How quickly does traders get paid when a transaction is completed on FWE?</a>
                                    
                                </ul>
                            </div>
                        </div>
                        
                    </div>
                </div>
                
                
            </div>
        </div>
        <span style="left:50%; "><i class="icofont-long-arrow-up scrolltop" style=""></i></span>
    </section>
    <!-- satrt footer copyright -->
        <div class="horizon">
            <div class="col-md-12" style="height:2px;background-color:black;"></div>
        </div>
        <footer id="footer-copyright" style="height:50px; padding-top:5px;background-color:black; " >
        <div class="container">
            <div class="row">
                
                <div class="col-xl-4 col-lg-4 col-md-4"  >
                    <div class="footer_copy_content text-left" >
                        <p style="color:white; text-align: left;">&copy; <span>Brandszone</span> 2020. All Rights Reserved </p>
                    </div>
                </div>
                <div class="col-md-4 col-lg-4 col-xl-4 text-center privacy">
                    <a href="{{url('privacy')}}" style="color:white; " target="_blank">Privacy and Policy</a>
                </div>
                <div class="col-xl-4 col-lg-4 col-md-4 text-center" >
                    <div class="footer_copy_content text-center">
                        <p style="color:white;">Support and Maintenance By :<span style="color: #eb2732;">HSBLCO</span> </p>
                    </div>
                </div>
            
            </div>
        </div>
    </footer>
    
    
    <!-- ========== this is main js link ========== -->
    <script src="{{asset('contents/website/assests/js/jquery-3.3.1.min.js')}}"></script>
    <script src="{{asset('contents/website/assests/js/sweet-alert.js')}}"></script>
    <script src="{{asset('contents/website/assests/js/toastr.min.js')}}"></script>
    @include('layouts.partial.message')
    <script src="{{asset('contents/website/assests/js/popper.min.js')}}"></script>
    <script src="{{asset('contents/website/assests/js/bootstrap.min.js')}}"></script>
    <script src="{{asset('contents/website/assests/js/metisMenu.min.js')}}"></script>
    <script src="{{asset('contents/website/assests/js/jquery.elevateZoom-3.0.8.min.js')}}"></script>
    @stack('js')
    <script src="{{asset('contents/website/assests/js/custom.js')}}"></script>
    <script>
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });
    </script>
</body>

</html>

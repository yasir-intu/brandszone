<!DOCTYPE html>
<html dir="ltr" lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <link rel="icon" type="image/png" sizes="16x16" href="{{asset('contents/admin/assets/images/logos/logo-icon.png')}}">
    <title>@yield('title', 'Admin Panel')</title>
    @stack('css')
    <link href="{{asset('contents/admin/assets/libs/toastr/build/toastr.min.css')}}" rel="stylesheet">
    <link href="{{asset('contents/admin/dist/css/style.min.css')}}" rel="stylesheet">
    <link href="{{asset('contents/admin/dist/css/custom.css')}}" rel="stylesheet">
</head>

<body>
<!-- Preloader - style you can find in spinners.css -->
<div class="preloader">
    <div class="lds-ripple">
        <div class="lds-pos"></div>
        <div class="lds-pos"></div>
    </div>
</div>

<!-- Main wrapper - style you can find in pages.scss -->

<div id="main-wrapper">

    <!-- Topbar header - style you can find in pages.scss -->
    <header class="topbar">
        <nav class="navbar top-navbar navbar-expand-md navbar-dark">
            <div class="navbar-header">
                <!-- This is for the sidebar toggle which is visible on mobile only -->
                <a class="nav-toggler waves-effect waves-light d-block d-md-none" href="javascript:void(0)"><i class="ti-menu ti-close"></i></a>
                <a class="navbar-brand" href="{{url('admin')}}">
                    <!-- Logo icon -->
                    <b class="logo-icon">
                        <!--You can put here icon as well // <i class="wi wi-sunset"></i> //-->
                        <!-- Dark Logo icon -->
                        <img class="img-fluid" src="{{asset('contents/admin')}}/assets/images/logos/logo-icon.png" alt="homepage" class="dark-logo" />
                    </b>
                    <!--End Logo icon -->
                </a>

                <!-- End Logo -->

                <!-- Toggle which is visible on mobile only -->

                <a class="topbartoggler d-block d-md-none waves-effect waves-light" href="javascript:void(0)" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><i class="ti-more"></i></a>
            </div>

            <!-- End Logo -->

            <div class="navbar-collapse collapse" id="navbarSupportedContent">

                <!-- toggle and nav items -->

                <ul class="navbar-nav float-left mr-auto">
                    <li class="nav-item d-none d-md-block"><a class="nav-link sidebartoggler waves-effect waves-light" href="javascript:void(0)" data-sidebartype="mini-sidebar"><i class="mdi mdi-menu font-18"></i></a></li>

                    
                </ul>

                <!-- Right side toggle and nav items -->

                <ul class="navbar-nav float-right">

                    <!-- Search -->
                    <!-- User profile and search -->

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle waves-effect waves-dark pro-pic" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <img src="{{ asset('storage/users/' . Auth::user()->image) }}" alt="user" class="rounded-circle" width="31">
                            <span class="ml-2 user-text font-medium">{{Auth::user()->name}}</span><span class="fas fa-angle-down ml-2 user-text"></span>
                        </a>
                        <div class="dropdown-menu dropdown-menu-right user-dd animated flipInY">
                            <div class="d-flex no-block align-items-center p-3 mb-2 border-bottom">
                                <div class=""><img src="{{ asset('storage/users/' . Auth::user()->image) }}" alt="user" class="rounded" width="80"></div>
                                <div class="ml-2">
                                    <h4 class="mb-0">{{Auth::user()->name}}</h4>
                                    <p class=" mb-0 text-muted">{{Auth::user()->email}}</p>
                                    <a href="{{url('admin/users/'.Auth::id())}}" class="btn btn-sm btn-danger text-white mt-2 btn-rounded">View Profile</a>
                                </div>
                            </div>
                            <a class="dropdown-item" href="{{url('admin/users/'.Auth::id())}}"><i class="ti-user mr-1 ml-1"></i> My Profile</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="{{ route('logout') }}"
                               onclick="event.preventDefault();
                               document.getElementById('logout-form').submit();"><i class="fa fa-power-off mr-1 ml-1"></i> Logout</a>
                            <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                @csrf
                            </form>
                        </div>
                    </li>

                    <!-- User profile and search -->

                </ul>
            </div>
        </nav>
    </header>

    <!-- End Topbar header -->


    <!-- Left Sidebar - style you can find in sidebar.scss  -->

    <aside class="left-sidebar">
        <!-- Sidebar scroll-->
        <div class="scroll-sidebar">
            <!-- Sidebar navigation-->
            <nav class="sidebar-nav">
                <ul id="sidebarnav">
                    <!-- User Profile-->
                    <li>
                        <!-- User Profile-->
                        <div class="user-profile text-center dropdown p-3">
                            <div class="user-pic"><img src="{{ asset('storage/users/' . Auth::user()->image) }}" alt="users" class="rounded-circle" width="50" /></div>
                            <!-- <div class="user-content hide-menu">
                                <a href="javascript:void(0)" class="mt-2" id="Userdd" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <h5 class="mb-0 user-name mt-2">{{Auth::user()->name}} <i class="fa fa-angle-down"></i></h5>
                                </a>
                                <div class="dropdown-menu dropdown-menu-left" aria-labelledby="Userdd">
                                    <a class="dropdown-item" href="{{url('admin/users/'.Auth::id())}}"><i class="ti-user m-r-5 m-l-5"></i> My Profile</a>
                                    <a class="dropdown-item" href="{{ route('logout') }}"
                                       onclick="event.preventDefault();
                                       document.getElementById('logout-form').submit();"><i class="fa fa-power-off m-r-5 m-l-5"></i> Logout</a>
                                </div>
                            </div> -->
                        </div>
                        <!-- End User Profile-->
                    </li>
                    <li class="sidebar-item">
                        <a class="sidebar-link waves-effect waves-dark" href="{{url('admin')}}" aria-expanded="false">
                            <i class="mdi mdi-av-timer"></i>
                            <span class="hide-menu">Dashboard</span>
                        </a>
                    </li>
                    @if (Auth::user()->role_id===1)
                        
                     <li class="sidebar-item">
                        <a class="sidebar-link has-arrow waves-effect waves-dark" href="javascript:void(0)" aria-expanded="false">
                            <i class="mdi mdi-cart-outline"></i>
                            <span class="hide-menu">Orders</span>
                        </a>
                        <ul aria-expanded="false" class="collapse first-level">
                            <li class="sidebar-item">
                                <a href="{{url('/admin/orders?status=today')}}" class="sidebar-link">
                                    <i class="mdi mdi-cart"></i>
                                    <span class="hide-menu">Today Orders</span>
                                    <span class="badge badge-info badge-pill ml-auto mr-3 font-medium px-2 py-1">{{App\Order::today()->count()}}</span>
                                </a>
                            </li>
                            <li class="sidebar-item">
                                <a href="{{url('/admin/orders?status=thismonth')}}" class="sidebar-link">
                                    <i class="mdi mdi-cart"></i>
                                    <span class="hide-menu">This Month Orders</span>
                                    <span class="badge badge-info badge-pill ml-auto mr-3 font-medium px-2 py-1">{{App\Order::thismonth()->count()}}</span>
                                </a>
                            </li>
                            <li class="sidebar-item">
                                <a href="{{url('/admin/orders?status=thisyear')}}" class="sidebar-link">
                                    <i class="mdi mdi-cart"></i>
                                    <span class="hide-menu">This Year Orders</span>
                                    <span class="badge badge-info badge-pill ml-auto mr-3 font-medium px-2 py-1">{{App\Order::thisyear()->count()}}</span>
                                </a>
                            </li>
                            <li class="sidebar-item">
                                <a href="{{url('/admin/orders')}}" class="sidebar-link">
                                    <i class="mdi mdi-cart"></i>
                                    <span class="hide-menu">All Orders</span>
                                    <span class="badge badge-info badge-pill ml-auto mr-3 font-medium px-2 py-1">{{$orders->count()}}</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <!-- <li class="sidebar-item">
                        <a class="sidebar-link waves-effect waves-dark" href="{{url('admin/contacts')}}" aria-expanded="false">
                        <i class="mdi mdi-facebook-messenger"></i>
                            <span class="hide-menu">Contact Messages</span>
                            @if($unreadedMessages > 0)
                            <span class="badge badge-inverse badge-pill ml-auto mr-3 font-medium px-2 py-1">{{ $unreadedMessages }}</span>
                            @endif
                        </a>
                    </li> -->
                    <li class="sidebar-item">
                        <a class="sidebar-link has-arrow waves-effect waves-dark" href="javascript:void(0)" aria-expanded="false">
                            <i class="mdi mdi-filter-variant"></i>
                            <span class="hide-menu">Product Categories</span>
                        </a>
                        <ul aria-expanded="false" class="collapse first-level">
                            <li class="sidebar-item">
                                <a href="{{url('admin/maincategory')}}" class="sidebar-link">
                                    <i class="mdi mdi-tag-outline"></i>
                                    <span class="hide-menu">Main Categories</span>
                                    <span class="badge badge-info badge-pill ml-auto mr-3 font-medium px-2 py-1">{{$totalMaincategory}}</span>
                                </a>
                            </li>
                            <li class="sidebar-item">
                                <a href="{{url('admin/subcategory')}}" class="sidebar-link">
                                    <i class="mdi mdi-tag-multiple"></i>
                                    <span class="hide-menu">Subcategories</span>
                                    <span class="badge badge-info badge-pill ml-auto mr-3 font-medium px-2 py-1">{{$totalSubcategory}}</span>
                                </a>
                            </li>
                            <li class="sidebar-item">
                                <a href="{{url('admin/category')}}" class="sidebar-link">
                                    <i class="mdi mdi-tag-outline"></i>
                                    <span class="hide-menu">Categories</span>
                                    <span class="badge badge-info badge-pill ml-auto mr-3 font-medium px-2 py-1">{{$totalCategory}}</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="sidebar-item">
                        <a class="sidebar-link waves-effect waves-dark" href="{{url('admin/brands')}}" aria-expanded="false">
                        <i class="mdi mdi-beats"></i>
                            <span class="hide-menu">Brands</span>
                        </a>
                    </li>
                    <li class="sidebar-item">
                        <a class="sidebar-link waves-effect waves-dark" href="{{url('admin/customers')}}" aria-expanded="false">
                            <i class="mdi mdi-account-multiple-outline"></i>
                            <span class="hide-menu">Customers</span>
                        </a>
                    </li>
                    <li class="sidebar-item">
                        <a class="sidebar-link waves-effect waves-dark" href="{{url('admin/subscribers')}}" aria-expanded="false">
                            <i class="mdi mdi-email-outline"></i>
                            <span class="hide-menu">Subscribers</span>
                        </a>
                    </li>
                    <li class="sidebar-item">
                        <a class="sidebar-link waves-effect waves-dark" href="{{url('admin/users')}}" aria-expanded="false">
                            <i class="mdi mdi-account-multiple"></i>
                            <span class="hide-menu">Users</span>
                        </a>
                    </li>
                    <li class="sidebar-item">
                        <a class="sidebar-link has-arrow waves-effect waves-dark" href="javascript:void(0)" aria-expanded="false">
                            <i class="mdi mdi mdi-content-copy"></i>
                            <span class="hide-menu">Pages</span>
                        </a>
                        <ul aria-expanded="false" class="collapse first-level">
                            <li class="sidebar-item">
                                <a class="has-arrow sidebar-link" href="javascript:void(0)" aria-expanded="false">
                                    <i class="mdi mdi-home-outline"></i>
                                    <span class="hide-menu">Home</span>
                                </a>
                                <ul aria-expanded="false" class="collapse second-level">
                                    <li class="sidebar-item">
                                        <a href="{{url('admin/banners')}}" class="sidebar-link">
                                            <i class="mdi mdi-image"></i>
                                            <span class="hide-menu"> Banner</span>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li class="sidebar-item">
                                <a class="sidebar-link" href="{{url('admin/about')}}" aria-expanded="false">
                                    <i class="mdi mdi-information-outline"></i>
                                    <span class="hide-menu">About</span>
                                </a>
                            </li>
                            <li class="sidebar-item">
                                <a class="sidebar-link" href="{{url('admin/privacy')}}" aria-expanded="false">
                                    <i class="mdi mdi-information-outline"></i>
                                    <span class="hide-menu">Privacy&Policy</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="sidebar-item">
                        <a class="sidebar-link has-arrow waves-effect waves-dark" href="javascript:void(0)" aria-expanded="false">
                            <i class="mdi mdi-recycle"></i>
                            <span class="hide-menu">Recycle Bin</span>
                        </a>
                        <ul aria-expanded="false" class="collapse first-level">
                            <li class="sidebar-item">
                                <a href="{{url('admin/recycle/orders')}}" class="sidebar-link">
                                    <i class="mdi mdi-cart-outline"></i>
                                    <span class="hide-menu">Orders</span>
                                </a>
                            </li>
                            <li class="sidebar-item">
                                <a href="{{url('admin/recycle/contacts')}}" class="sidebar-link">
                                    <i class="mdi mdi-facebook-messenger"></i>
                                    <span class="hide-menu">Contact Message</span>
                                </a>
                            </li>
                            <li class="sidebar-item">
                                <a href="{{url('admin/recycle/products')}}" class="sidebar-link">
                                    <i class="fab fa-product-hunt"></i>
                                    <span class="hide-menu">Products</span>
                                </a>
                            </li>
                            <li class="sidebar-item">
                                <a href="{{url('admin/recycle/customers')}}" class="sidebar-link">
                                    <i class="mdi mdi-account-multiple"></i>
                                    <span class="hide-menu">Customers</span>
                                </a>
                            </li>
                            <li class="sidebar-item">
                                <a href="{{url('admin/recycle/banners')}}" class="sidebar-link">
                                    <i class="mdi mdi-image"></i>
                                    <span class="hide-menu">Banners</span>
                                </a>
                            </li>
                            <li class="sidebar-item">
                                <a href="{{url('admin/recycle/users')}}" class="sidebar-link">
                                    <i class="mdi mdi-account-multiple"></i>
                                    <span class="hide-menu">Users</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="sidebar-item">
                        <a class="sidebar-link has-arrow waves-effect waves-dark" href="javascript:void(0)" aria-expanded="false">
                            <i class="mdi mdi-settings"></i>
                            <span class="hide-menu">Settings</span>
                        </a>
                        <ul aria-expanded="false" class="collapse first-level">
                            <li class="sidebar-item">
                                <a href="{{url('admin/basicinfo')}}" class="sidebar-link">
                                    <i class="mdi mdi-information-outline"></i>
                                    <span class="hide-menu">Basic Info</span>
                                </a>
                            </li>
                            <li class="sidebar-item">
                                <a href="{{url('admin/sociallink')}}" class="sidebar-link">
                                    <i class="mdi mdi-share-variant"></i>
                                    <span class="hide-menu">Social Links</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                    @endif
                    @if (Auth::user()->role_id===4)
                    <li class="sidebar-item">
                        <a class="sidebar-link has-arrow waves-effect waves-dark" href="javascript:void(0)" aria-expanded="false">
                            <i class="mdi mdi-filter-variant"></i>
                            <span class="hide-menu">Products</span>
                        </a>
                        <ul aria-expanded="false" class="collapse first-level">
                            <li class="sidebar-item">
                                <a href="{{url('/admin/products/create')}}" class="sidebar-link">
                                    <i class="mdi mdi-plus-circle-outline"></i>
                                    <span class="hide-menu">Add Product</span>
                                </a>
                            </li>
                            <li class="sidebar-item">
                                <a href="{{url('/admin/products')}}" class="sidebar-link">
                                    <i class="fab fa-product-hunt"></i>
                                    <span class="hide-menu">All Products</span>
                                    <span class="badge badge-info badge-pill ml-auto mr-3 font-medium px-2 py-1">{{$totalProduct}}</span>
                                </a>
                            </li>
                            <!-- <li class="sidebar-item">
                                <a href="{{url('/admin/products/topsale')}}" class="sidebar-link">
                                    <i class="fab fa-product-hunt"></i>
                                    <span class="hide-menu">Top Sale Products</span>
                                    <span class="badge badge-warning text-white badge-pill ml-auto mr-3 font-medium px-2 py-1">{{$topSaleProduct}}</span>
                                </a>
                            </li> -->
                            <!-- <li class="sidebar-item">
                                <a href="{{url('/admin/products/draft')}}" class="sidebar-link">
                                    <i class="fab fa-product-hunt"></i>
                                    <span class="hide-menu">Draft Products</span>
                                    <span class="badge badge-warning text-white badge-pill ml-auto mr-3 font-medium px-2 py-1">{{$draftProduct}}</span>
                                </a>
                            </li> -->
                            <!-- <li class="sidebar-item">
                                <a href="{{url('/admin/products/stockout')}}" class="sidebar-link">
                                    <i class="fab fa-product-hunt"></i>
                                    <span class="hide-menu">Stock out Products</span>
                                    <span class="badge badge-danger text-white badge-pill ml-auto mr-3 font-medium px-2 py-1">{{$stockoutProduct}}</span>
                                </a>
                            </li> -->
                            @foreach($types as $type)
                            <li class="sidebar-item">
                                <a href="{{url('/admin/products/type/'. $type->slug)}}" class="sidebar-link">
                                    <i class="fab fa-product-hunt"></i>
                                    <span class="hide-menu">{{$type->name}}</span>
                                    <span class="badge badge-info text-white badge-pill ml-auto mr-3 font-medium px-2 py-1"> {{App\Type::find($type->id)->products()->count()}}</span>
                                </a>
                            </li>
                            @endforeach
                        </ul>
                    </li>
                    @endif
                    <li class="sidebar-item">
                        <a target="_blank" class="sidebar-link waves-effect waves-dark" href="{{url('/')}}" aria-expanded="false">
                            <i class="mdi mdi-earth"></i>
                            <span class="hide-menu">Live Site</span>
                        </a>
                    </li>
                    <li class="sidebar-item">
                        <a class="sidebar-link waves-effect waves-dark sidebar-link" href="{{ route('logout') }}"
                           onclick="event.preventDefault();
                            document.getElementById('logout-form').submit();" aria-expanded="false">
                            <i class="mdi mdi-adjust text-info"></i>
                            <span class="hide-menu">Log Out</span>
                        </a>
                    </li>
                </ul>
            </nav>
            <!-- End Sidebar navigation -->
        </div>
        <!-- End Sidebar scroll-->
    </aside>

    <!-- End Left Sidebar - style you can find in sidebar.scss  -->


    <!-- Page wrapper  -->

    <div class="page-wrapper">

        <!-- Container fluid  -->

        @yield('content')

        <!-- End Container fluid  -->


        <!-- footer -->

        

        <!-- End footer -->

    </div>

    <!-- End Page wrapper  -->

</div>

<!-- End Wrapper -->

<!-- All Jquery -->
<script src="{{asset('contents/admin/assets/libs/jquery/dist/jquery.min.js')}}"></script>
<script src="{{asset('contents/admin/assets/libs/toastr/build/toastr.min.js')}}"></script>

@include('layouts.partial.message')
<script src="{{asset('contents/admin/assets/libs/popper.js/dist/umd/popper.min.js')}}"></script>
<script src="{{asset('contents/admin/assets/libs/bootstrap/dist/js/bootstrap.min.js')}}"></script>
<script src="{{asset('contents/admin/dist/js/app.min.js')}}"></script>
<script src="{{asset('contents/admin/dist/js/app.init.minimal.js')}}"></script>
<script src="{{asset('contents/admin/assets/libs/perfect-scrollbar/dist/perfect-scrollbar.jquery.min.js')}}"></script>
<script src="{{asset('contents/admin/assets/extra-libs/sparkline/sparkline.js')}}"></script>
<script src="{{asset('contents/admin/dist/js/waves.js')}}"></script>
<script src="{{asset('contents/admin/dist/js/sidebarmenu.js')}}"></script>
@stack('js')
<script src="{{asset('contents/admin/dist/js/custom.min.js')}}"></script>
<script>
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });
</script>
</body>
</html>

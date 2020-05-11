<!DOCTYPE html>
<html dir="ltr" lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <link rel="icon" type="image/png" sizes="16x16" href="{{asset('contents/admin/assets/images/favicon.png')}}">
    <title>@yield('title', 'Dashboard')</title>
    <link href="{{asset('contents/admin/dist/css/style.min.css')}}" rel="stylesheet">
    <link href="{{asset('contents/admin/dist/css/custom.css')}}" rel="stylesheet">
</head>

<body>
    <div class="main-wrapper">
        <!-- Preloader - style you can find in spinners.css -->
        <div class="preloader">
            <div class="lds-ripple">
                <div class="lds-pos"></div>
                <div class="lds-pos"></div>
            </div>
        </div>
        <!-- Preloader - style you can find in spinners.css -->
        <!-- Login box.scss -->
        @yield('content')
    </div>
    <!-- All Required js -->

<script src="{{asset('contents/admin/assets/libs/jquery/dist/jquery.min.js')}}"></script>
<script src="{{asset('contents/admin/assets/libs/popper.js/dist/umd/popper.min.js')}}"></script>
<script src="{{asset('contents/admin/assets/libs/bootstrap/dist/js/bootstrap.min.js')}}"></script>
@stack('js')
</body>
</html>
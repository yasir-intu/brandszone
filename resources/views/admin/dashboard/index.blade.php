@extends('layouts.admin')
@section('title', 'Dashboard')

@section('content')
    <!-- Bread crumb and right sidebar toggle -->

    @component('admin.dashboard.breadcumb')
    @endcomponent

    <!-- End Bread crumb and right sidebar toggle -->

    <div class="page-content container-fluid">
        <!-- Card Group  -->


        <div class="row">
            <div class="col-md-2"></div>
            <!-- <div class="col-md-6">
                <div class="card">
                    <div class="card-body">

                        {!! $chart1->renderHtml() !!}

                    </div>
                </div>
            </div> -->
            <!-- <div class="col-md-2"></div> -->
                
            <div class="col-md-8">
                <div class="card">
                    <div class="card-body">

                        {!! $chart2->renderHtml() !!}

                    </div>
                </div>
            </div>
            <div class="col-md-2"></div>
        </div>
    

        <div class="card-group">
            <div class="card p-2 mr-2 p-lg-3">
                <div class="p-lg-3 p-2">
                    <div class="d-flex align-items-center">
                        <button class="btn btn-circle text-white btn-lg @if($todayOrder->sum('order_total') > $yesterdayOrder->sum('order_total')) {{'btn-success'}} @elseif($todayOrder->sum('order_total') < $yesterdayOrder->sum('order_total') || $todayOrder->sum('order_total') == 0) {{'btn-danger'}} @else {{'btn-cyan'}} @endif" href="javascript:void(0)">
                            <i class="ti-wallet"></i>
                        </button>
                        <div class="ml-4" style="width: 38%;">
                            <h4 class="font-light">Today Sales</h4>
                            <div class="progress">
                                <div class="progress-bar @if($todayOrder->sum('order_total') > $yesterdayOrder->sum('order_total')) {{'bg-success'}} @elseif($todayOrder->sum('order_total') < $yesterdayOrder->sum('order_total') || $todayOrder->sum('order_total') == 0) {{'bg-danger'}} @else {{'bg-cyan'}} @endif" role="progressbar" style="width: {{$thisYearOrder->sum('order_total') > 0 ? ($todayOrder->sum('order_total')/$thisYearOrder->sum('order_total')) * 100 : 0}}%" aria-valuenow="40" aria-valuemin="0" aria-valuemax="40"></div>
                            </div>
                        </div>
                        <div class="ml-auto">
                            <h2 class="display-7 mb-0">{{$todayOrder->sum('order_total')}}</h2>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card p-2 mr-2 p-lg-3">
                <div class="p-lg-3 p-2">
                    <div class="d-flex align-items-center">
                        <button class="btn btn-circle text-white btn-lg @if($thisMonthOrder->sum('order_total') > $previousMonthOrder->sum('order_total')) {{'btn-success'}} @elseif($thisMonthOrder->sum('order_total') < $previousMonthOrder->sum('order_total') || $thisMonthOrder->sum('order_total') == 0) {{'btn-danger'}} @else {{'btn-cyan'}} @endif" href="javascript:void(0)">
                            <i class="ti-wallet"></i>
                        </button>
                        <div class="ml-4" style="width: 38%;">
                            <h4 class="font-light">This Month Sales</h4>
                            <div class="progress">
                                <div class="progress-bar @if($thisMonthOrder->sum('order_total') > $previousMonthOrder->sum('order_total')) {{'bg-success'}} @elseif($thisMonthOrder->sum('order_total') < $previousMonthOrder->sum('order_total') || $thisMonthOrder->sum('order_total') == 0) {{'bg-danger'}} @else {{'bg-cyan'}} @endif" role="progressbar" style="width: {{$thisYearOrder->sum('order_total') > 0 ? ($thisMonthOrder->sum('order_total')/$thisYearOrder->sum('order_total')) * 100 : 0}}%" aria-valuenow="40" aria-valuemin="0" aria-valuemax="40"></div>
                            </div>
                        </div>
                        <div class="ml-auto">
                            <h2 class="display-7 mb-0">{{$thisMonthOrder->sum('order_total')}}</h2>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card p-2 mr-2 p-lg-3">
                <div class="p-lg-3 p-2">
                    <div class="d-flex align-items-center">
                        <button class="btn btn-circle text-white btn-lg @if($thisYearOrder->sum('order_total') > $previousYearOrder->sum('order_total')) {{'btn-success'}} @elseif($thisYearOrder->sum('order_total') < $previousYearOrder->sum('order_total') || $thisYearOrder->sum('order_total') == 0) {{'btn-danger'}} @else {{'btn-cyan'}} @endif" href="javascript:void(0)">
                            <i class="ti-wallet"></i>
                        </button>
                        <div class="ml-4" style="width: 38%;">
                            <h4 class="font-light">This Year Sales</h4>
                            <div class="progress">
                                <div class="progress-bar  @if($thisYearOrder->sum('order_total') > $previousYearOrder->sum('order_total')) {{'bg-success'}} @elseif($thisYearOrder->sum('order_total') < $previousYearOrder->sum('order_total') || $thisYearOrder->sum('order_total') == 0) {{'bg-danger'}} @else {{'bg-cyan'}} @endif" role="progressbar" style="width: {{$thisYearOrder->sum('order_total') > 0 ? 100 : 0}}%" aria-valuenow="40" aria-valuemin="0" aria-valuemax="40"></div>
                            </div>
                        </div>
                        <div class="ml-auto">
                            <h2 class="display-7 mb-0">{{$thisYearOrder->sum('order_total')}}</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="card-group">
            <div class="card p-2 mr-2 p-lg-3">
                <div class="p-lg-3 p-2">
                    <div class="d-flex align-items-center">
                        <button class="btn btn-circle text-white btn-lg @if($todayCustomer > $yesterdayCustomer) {{'btn-success'}} @elseif($todayCustomer < $yesterdayCustomer || $todayCustomer == 0 && $yesterdayCustomer == 0) {{'btn-danger'}} @else {{'btn-cyan'}} @endif" href="javascript:void(0)">
                            <i class="ti-user"></i>
                        </button>
                        <div class="ml-4" style="width: 38%;">
                            <h4 class="font-light">Today Customers</h4>
                            <div class="progress">

                                <div class="progress-bar @if($todayCustomer > $yesterdayCustomer) {{'bg-success'}} @elseif($todayCustomer < $yesterdayCustomer || $todayCustomer == 0) {{'bg-danger'}} @else {{'bg-cyan'}} @endif" role="progressbar" style="width: {{$totalCustomer > 0 ? ($todayCustomer/$totalCustomer) * 100 : 0}}%" aria-valuenow="40" aria-valuemin="0" aria-valuemax="40"></div>
                            </div>
                        </div>
                        <div class="ml-auto">
                            <h2 class="display-7 mb-0">{{$todayCustomer}}</h2>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card p-2 mr-2 p-lg-3">
                <div class="p-lg-3 p-2">
                    <div class="d-flex align-items-center">
                        <button class="btn btn-circle text-white btn-lg @if($thisMonthCustomer > $previousMonthCustomer) {{'btn-success'}} @elseif($thisMonthCustomer < $previousMonthCustomer || $thisMonthCustomer == 0) {{'btn-danger'}} @else {{'btn-cyan'}} @endif" href="javascript:void(0)">
                            <i class="ti-user"></i>
                        </button>
                        <div class="ml-4" style="width: 38%;">
                            <h4 class="font-light">This Month Customers</h4>
                            <div class="progress">
                                <div class="progress-bar @if($thisMonthCustomer > $previousMonthCustomer) {{'bg-success'}} @elseif($thisMonthCustomer < $previousMonthCustomer || $thisMonthCustomer == 0) {{'bg-danger'}} @else {{'bg-cyan'}} @endif" role="progressbar" style="width: {{$totalCustomer > 0 ? ($thisMonthCustomer/$totalCustomer) * 100 : 0}}%" aria-valuenow="40" aria-valuemin="0" aria-valuemax="40"></div>
                            </div>
                        </div>
                        <div class="ml-auto">
                            <h2 class="display-7 mb-0">{{$thisMonthCustomer}}</h2>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card p-2 mr-2 p-lg-3">
                <div class="p-lg-3 p-2">
                    <div class="d-flex align-items-center">
                        <button class="btn btn-circle text-white btn-lg {{$totalCustomer > 0 ? 'btn-success' : 'btn-danger'}}" href="javascript:void(0)">
                            <i class="ti-user"></i>
                        </button>
                        <div class="ml-4" style="width: 38%;">
                            <h4 class="font-light">Total Customers</h4>
                            <div class="progress">
                                <div class="progress-bar bg-success" role="progressbar" style="width: {{$totalCustomer > 0 ? 100 : 0}}%" aria-valuenow="40" aria-valuemin="0" aria-valuemax="40"></div>
                            </div>
                        </div>
                        <div class="ml-auto">
                            <h2 class="display-7 mb-0">{{$totalCustomer}}</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="card-group">
            <div class="card p-2 mr-2 p-lg-3">
                <div class="p-lg-3 p-2">
                    <div class="d-flex align-items-center">
                        <button class="btn btn-circle text-white btn-lg @if($todaySubscriber > $yesterdaySubscriber) {{'btn-success'}} @elseif($todaySubscriber < $yesterdaySubscriber || $todaySubscriber == 0) {{'btn-danger'}} @else {{'btn-cyan'}} @endif" href="javascript:void(0)">
                            <i class="icon-people"></i>
                        </button>
                        <div class="ml-4" style="width: 38%;">
                            <h4 class="font-light">Today Subscribers</h4>
                            <div class="progress">
                                <div class="progress-bar  @if($todaySubscriber > $yesterdaySubscriber) {{'bg-success'}} @elseif($todaySubscriber < $yesterdaySubscriber || $todaySubscriber == 0) {{'bg-danger'}} @else {{'bg-cyan'}} @endif" role="progressbar" style="width: {{$totalSubscriber > 0 ? ($todaySubscriber/$totalSubscriber) * 100 : 0}}%" aria-valuenow="40" aria-valuemin="0" aria-valuemax="40"></div>
                            </div>
                        </div>
                        <div class="ml-auto">
                            <h2 class="display-7 mb-0">{{$todaySubscriber}}</h2>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="card p-2 mr-2 p-lg-3">
                <div class="p-lg-3 p-2">
                    <div class="d-flex align-items-center">
                        <button class="btn btn-circle text-white btn-lg @if($thisMonthSubscriber > $previousMonthSubscriber) {{'btn-success'}} @elseif($thisMonthSubscriber < $previousMonthSubscriber || $thisMonthSubscriber == 0) {{'btn-danger'}} @else {{'btn-cyan'}} @endif" href="javascript:void(0)">
                            <i class="icon-people"></i>
                        </button>
                        <div class="ml-4" style="width: 38%;">
                            <h4 class="font-light">This Month Subscribers</h4>
                            <div class="progress">
                                <div class="progress-bar @if($thisMonthSubscriber > $previousMonthSubscriber) {{'bg-success'}} @elseif($thisMonthSubscriber < $previousMonthSubscriber || $thisMonthSubscriber == 0) {{'bg-danger'}} @else {{'bg-cyan'}} @endif" role="progressbar" style="width: {{$totalSubscriber > 0 ? ($thisMonthSubscriber/$totalSubscriber) * 100 : 0}}%" aria-valuenow="40" aria-valuemin="0" aria-valuemax="40"></div>
                            </div>
                        </div>
                        <div class="ml-auto">
                            <h2 class="display-7 mb-0">{{$thisMonthSubscriber}}</h2>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card p-2 mr-2 p-lg-3">
                <div class="p-lg-3 p-2">
                    <div class="d-flex align-items-center">
                        <button class="btn btn-circle text-white btn-lg {{$totalSubscriber > 0 ? 'btn-success' : 'btn-danger'}}" href="javascript:void(0)">
                            <i class="icon-people"></i>
                        </button>
                        <div class="ml-4" style="width: 38%;">
                            <h4 class="font-light">Total Subscribers</h4>
                            <div class="progress">
                                <div class="progress-bar {{$totalSubscriber > 0 ? 'bg-success' : 'bg-danger'}}" role="progressbar" style="width: {{$totalSubscriber > 0 ? 100 : 0}}%" aria-valuenow="40" aria-valuemin="0" aria-valuemax="40"></div>
                            </div>
                        </div>
                        <div class="ml-auto">
                            <h2 class="display-7 mb-0">{{$totalSubscriber}}</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
@push('js')
    <script src="{{asset('contents/admin/assets/libs/chartjs/dist/chart.min.js')}}"></script>
    {!! $chart1->renderJs() !!}
    {!! $chart2->renderJs() !!}
@endpush
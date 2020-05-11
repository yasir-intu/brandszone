<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Customer;
use App\Order;
use App\Subscriber;
use LaravelDaily\LaravelCharts\Classes\LaravelChart;

class AdminController extends Controller
{
    public function index()
    {
        // Customer Info;
        $todayOrder = Order::today()->get();
        $yesterdayOrder = Order::yesterday()->get();
        $thisMonthOrder = Order::thismonth()->get();
        $previousMonthOrder = Order::previousmonth()->get();
        $thisYearOrder = Order::thisyear()->get();
        $previousYearOrder = Order::previousyear()->get();
    	// Customer Info;
	    $totalCustomer = Customer::active()->count();
	    $todayCustomer = Customer::today()->count();
	    $yesterdayCustomer = Customer::yesterday()->count();
	    $thisMonthCustomer = Customer::thismonth()->count();
	    $previousMonthCustomer = Customer::previousmonth()->count();
	    // Subscriber Info
	    $totalSubscriber = Subscriber::active()->count();
	    $todaySubscriber = Subscriber::today()->count();
	    $yesterdaySubscriber = Subscriber::yesterday()->count();
	    $thisMonthSubscriber = Subscriber::thismonth()->count();
	    $previousMonthSubscriber = Subscriber::previousmonth()->count();

        $chart_options = [
            'chart_title' => 'Customer by months',
            'report_type' => 'group_by_date',
            'model' => 'App\Customer',
            'group_by_field' => 'created_at',
            'group_by_period' => 'month',
            'chart_type' => 'line',
        ];

        $chart1 = new LaravelChart($chart_options);

        $chart_options = [
            'chart_title' => 'Sales by dates',
            'chart_type' => 'bar',
            'report_type' => 'group_by_date',
            'model' => 'App\Order',

            'group_by_field' => 'created_at',
            'group_by_period' => 'day',

            'aggregate_function' => 'sum',
            'aggregate_field' => 'order_total',
            
            'filter_field' => 'created_at',
            'filter_days' => 30, // show only transactions for last 30 days
            'continuous_time' => false, // show continuous timeline including dates without data
        ];

        $chart2 = new LaravelChart($chart_options);


        return view('admin.dashboard.index' , compact('todayOrder', 'yesterdayOrder', 'thisMonthOrder', 'previousMonthOrder', 'thisYearOrder', 'previousYearOrder', 'totalCustomer', 'todayCustomer', 'yesterdayCustomer', 'thisMonthCustomer', 'previousMonthCustomer', 'totalSubscriber', 'todaySubscriber', 'yesterdaySubscriber', 'thisMonthSubscriber', 'previousMonthSubscriber', 'chart1', 'chart2'));
    }

}

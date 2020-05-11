<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Order;
use App\Basicinfo;
use Session;

class OrderController extends Controller
{
    public function __construct()
    {
        $this->middleware('show')->only('show');
        $this->middleware('delete')->only('destroy');
    }
    public function index(Request $request) 
    {
        if($request->status == 'today'){
            $orders = Order::today()->latest()->with('shipping')->get();
        }elseif($request->status == 'thismonth'){
            $orders = Order::thisMonth()->latest()->with('shipping')->get();
        }elseif($request->status == 'thisyear'){
            $orders = Order::thisYear()->latest()->with('shipping')->get();
        }else{
            $orders = Order::latest()->with('shipping')->get();
        }
        return view('admin.order.index', compact('orders'));
    }
    public function show(Order $order) 
    {
    	return view('admin.order.show', compact('order'));
    }
    public function invoice(Order $order) 
    {
        $companyInfo = Basicinfo::first();
        return view('admin.order.invoice', compact('order', 'companyInfo'));
    }
    public function destroy(Order $order) 
    {
        $delete = $order->delete();
        if($delete){
            Session::flash('success', 'Order successfully deleted');
            return redirect()->back();
        }else{
            Session::flash('error', 'Order deleting failed');
            return redirect()->back();
        }
    }
    public function orderCancel(Order $order)
    {
        $order->status = 0;
        $cancel = $order->save();
        if($cancel){
            Session::flash('success', 'Order Canceled');
            return back();
        }else{
            Session::flash('error', 'Ops! Please try again');
            return back();
        }

    }
    public function orderDelivered(Order $order)
    {
        $order->status = 2;
        $cancel = $order->save();
        if($cancel){
            Session::flash('success', 'Order Delivered');
            return back();
        }else{
            Session::flash('error', 'Ops! Please try again');
            return back();
        }

    }
}

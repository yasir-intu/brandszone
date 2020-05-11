<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Order;
use Session;

class RecycleOrderController extends Controller
{
    public function __construct()
    {
        $this->middleware('superadmin');
        $this->middleware('show')->only('show');
        $this->middleware('delete')->only('destroy');
    }
    public function index()
    {
        $orders = Order::onlyTrashed()->latest()->get();
        return view('admin.recycle.order.index', compact('orders'));
    }
    public function show($id)
    {
        $order = Order::onlyTrashed()->findOrFail($id);
        $products = Order::onlyTrashed()->findOrFail($id)->products;
        return view('admin.recycle.order.show', compact('order', 'products'));
    }
    public function update($id)
    {
        $order = Order::onlyTrashed()->findOrFail($id);
        $restore = $order->restore();
        if($restore){
            Session::flash('success', 'Order Successfully restored');
            return redirect()->back();
        }else{
            Session::flash('error', 'Order restoring failed');
            return redirect()->back();
        }
    }
    public function destroy($id)
    {	
        $order = Order::onlyTrashed()->findOrFail($id);
        $order->shipping()->delete();
        $order->payment()->delete();
        $order->products()->delete();
        $delete = $order->forceDelete();
        if($delete){
            Session::flash('success', 'Order Successfully deleted');
            return redirect()->back();
        }else{
            Session::flash('error', 'Order deleting failed');
            return redirect()->back();
        }
    }
}

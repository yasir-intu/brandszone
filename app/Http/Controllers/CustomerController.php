<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Customer;
use App\Order;
use App\OrderDetail;
use Session;
use Hash;
use Carbon\Carbon;
use Cart;

class CustomerController extends Controller
{
    public function __construct()
    {
        $this->middleware('customer');
    }
    public function index()
    {
        $customer_id = Session::get('customer_id');
        $orders = Customer::find($customer_id)->orders()->count();
        $activeOrders = Customer::find($customer_id)->orders()->active()->count();
        $cancledOrders = Customer::find($customer_id)->orders()->canceled()->count();
        return view('website.customer.dashboard', compact('orders', 'activeOrders', 'cancledOrders'));

    }
    public function account(Request $request)
    {
        $customer = Customer::find(Session::get('customer_id'));
    	return view('website.customer.account', compact('customer'));
    }
    public function order()
    {
        $orders = Customer::find(Session::get('customer_id'))->orders()->latest()->paginate(3);
        return view('website.customer.order', compact('orders'));
    }
    public function show(Order $order)
    {
        if($order->customer_id == Session::get('customer_id')){
            $products = $order->products()->get();
            return view('website.customer.show', compact('order', 'products'));
        }else{
            return redirect('error/404');
        }
    }
    public function update(Request $request){
		
        $customer = Customer::find(Session::get('customer_id'));

        $this->validate($request, [
            'name' => 'required|string|min:3|max:60',
            'phone' => 'required|string|min:10|max:30,phone,'.$customer->id,
            'address' => 'required|string',
            'old_password' => 'required|string|min:6'
        ]);

        if(Hash::check($request->old_password,$customer->password)){

            if($request->password){
                $this->validate($request,
                [
                    'password'=> 'required|string|min:6|confirmed'
                ]);
                $password = Hash::make($request->password);
            }else{
                $password = $customer->password;
            }

            $customer->name = $request->name;
            $customer->phone = $request->phone;
            $customer->address = $request->address;
            $customer->password = $password;
            $update = $customer->save();

            if($update){
                Session::flash('success', 'Information Successfully Updated');
                return redirect()->back();
            }else{
                Session::flash('error', 'Ops! Please Try again');
                return redirect()->back();
            }
        }else{
            Session::flash('error', 'Password did not match');
            return redirect()->back();
        }
    }

}

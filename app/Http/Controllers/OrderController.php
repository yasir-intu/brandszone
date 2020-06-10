<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Session;
use Cart;
use App\Shipping;
use App\Payment;
use App\Order;
use App\OrderDetail;
use App\Product;
use App\Sale_Product;

class OrderController extends Controller
{
	public function __construct()
    {
        $this->middleware('signup');
    }
    public function index()
    {
        if(Session::has('shipping_id')){
            $cartItems = Cart::content();
            $shipping = Shipping::find(Session::get('shipping_id'));
            $payment = Payment::find(Session::get('payment_id'));
        	return view('website.checkout.confirm', compact('shipping', 'cartItems', 'payment'));
    	}else{
    		return back();
    	}
    }
    public function store()
    {

        $order = new Order();
        if(Session::has('customer_id')){
             $order->customer_id = Session::get('customer_id');
             $order->guest_id = '0';
            }else{
                $order->customer_id = '0';
            $order->guest_id = Session::get('guest_id');
         }
        $order->shipping_id = Session::get('shipping_id');
        $order->payment_id = Session::get('payment_id');
        $order->order_total = Cart::total();
        $order->shipping_charge = 50;
        $order->save();

        $cartItems = Cart::content();

        foreach($cartItems as $cartItem){
            $orderDetail = new OrderDetail();
            $orderDetail->order_id = $order->id;
            $orderDetail->product_id = $cartItem->id;
            $orderDetail->name = $cartItem->name;
            $orderDetail->price = $cartItem->price;
            $orderDetail->qty = $cartItem->qty;
            $orderDetail->color = $cartItem->options->color;
            $orderDetail->size = $cartItem->options->size;
            $orderDetail->save();

            $product = Product::find($cartItem->id);
            $product->sales = $product->sales + $cartItem->qty;
            $update = $product->save();

            $sale_slug='SEL_'.uniqid(2019);

            $sale = new Sale_Product();
            $sale->user_id = $product->creator;
            $sale->pro_id = $cartItem->id;
            $sale->stock = $cartItem->qty;
            $sale->slug = $sale_slug;
            $sale->save();
        }

        if($update){
            Cart::destroy();
            Session::forget('shipping_id');
            Session::forget('payment_id');
            return redirect('order/success');
        }else{
            return back();
        }
    }
	public function orderSuccess()
    {
        return view('website.checkout.success');
    }
}

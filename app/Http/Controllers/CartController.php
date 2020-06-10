<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Product;
use Cart;
use Session;

class CartController extends Controller
{
	public function index()
    {
    	$cartItems = Cart::content();
        return view('website.cart.index', compact('cartItems'));
    }
    public function store(Request $request, Product $product)
    {

    	if($request->qty){
    		$qty = $request->qty;
    	}else{
    		$qty = 1;
    	}

    	if($request->size){
    		$size = $request->size;
    	}else{
    		$size = NULL;
    	}

    	if($request->color){
    		$color = $request->color;
    	}else{
    		$color = NULL;
    	}

    	$add = Cart::add([
            'id' => $product->id, 
            'name' => $product->name, 
            'qty' => $qty, 
            'price' => $product->seller_price, 
            'options' => [
                'image' => $product->image, 
                'size' => $size, 
                'color' => $color
            ]
        ]);

    	if($add){
			Session::flash('success', $product->name . ' successfully added to your cart');
			return redirect()->back();
		}else{
			Session::flash('error', $product->name . 'Ops! Please try again');
			return redirect()->back();
		}
    }
    public function update(Request $request)
    {
        $rowId = $request->row;
        $qty =  $request->qty;
        $update = Cart::update($rowId,$qty);
        if($update){
            return response()->json('success');
        }else{
            return response()->json('error');
        }
     }
    public function destroy(Request $request)
    {

        $remove = Cart::remove($request->rowId);
        Session::flash('success', 'Successfully removed from your cart');
        return redirect()->back();
    }
    public function cartItem()
    {
        $cartItems = Cart::content();
        return view('website.cart.cart-item', compact('cartItems'));
    }
}

<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Session;
use Cart;
use App\Shipping;
use App\Country;
use App\City;

class CheckoutController extends Controller
{
	public function __construct()
    {
        $this->middleware('signup');
    }
    public function index()
    {
        if(Session::has('payment_id')){
            //$cities = City::active()->get();
            $cities = [];
            $countries = [];
            //$countries = Country::active()->get();
        	return view('website.checkout.delivery', compact('cities', 'countries'));
    	}else{
    		return back();
    	}
    }
    public function store(Request $request)
    {
        $request->validate([
            'first_name' => 'required|string|max:60',
            'last_name' => 'required|string|max:60',
            'phone' => 'required|string|max:30',
            'email' => 'required|string|email|max:60',
            'address' => 'required|string|max:255',
            'country' => 'required|integer',
            'city' => 'required|integer',
            'zip_code' => 'required|integer',
        ]);

        $shipping = new Shipping();
        $shipping->first_name = $request->first_name;
        $shipping->last_name = $request->last_name;
        $shipping->phone = $request->phone;
        $shipping->email = $request->email;
        $shipping->address = $request->address;
        $shipping->country_id = $request->country;
        $shipping->city_id = $request->city;
        $shipping->zip_code = $request->zip_code;
        $create = $shipping->save();

        if($create){
            Session::put('shipping_id', $shipping->id);
            return redirect('order/confirm');
        }else{
            return back();
        }

    }
}

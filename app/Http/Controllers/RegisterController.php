<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Customer;
use Session;
use Hash;
use Cart;
use App\Rules\Captcha;

class RegisterController extends Controller
{
    public function index()
    {
        if(!Session::has('customer_id')){
            return view('website.customer.register');
        }else{
            return redirect()->back();
        }
    }
    
    public function register(Request $request)
    {
    	$this->validate($request, [
    		'name' => 'required|string|min:3|max:60',
    		'email' => 'required|string|email|max:60|unique:customers',
    		'phone' => 'required|string|min:10|max:30|unique:customers',
            'password' => 'required|string|min:6|confirmed',
            'g-recaptcha-response' => new Captcha(),
    	]);

        $customer = new Customer();
        $customer->name = $request->name;
        $customer->email = $request->email;
        $customer->phone = $request->phone;
        $customer->password = Hash::make($request->password);
        $create = $customer->save();

        if($create){
        	Session::put('customer_id', $customer->id);
            Session::flash('success', 'Registration Success');
            if(Cart::count() < 1){
                return redirect('customer/dashboard');
            }else{
                return redirect('payment/method');
            }
        }else{
        	Session::flash('error', 'Registration failed');
        	return redirect()->back();
        }
    }
}

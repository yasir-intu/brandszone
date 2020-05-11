<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Customer;
use App\Guest;
use Session;
use Hash;
use Carbon\Carbon;
use Cart;

class LoginController extends Controller
{
    public function __construct()
    {
        $this->middleware('customer')->only('logout');
    }
    public function index()
    {
        if(!Session::has('customer_id')){
            return view('website.customer.login');
        }else{
            return redirect()->back();
        }
    }
    public function login(Request $request)
    {
        $this->validate($request, [
            'email_or_phone' => 'required|string|max:60',
            'password' => 'required|string|min:6'
        ]);
        

        $customer = Customer::where('email', $request->email_or_phone)->orWhere('phone', $request->email_or_phone)->active()->first();
        if($customer){
            if(Hash::check($request->password,$customer->password)){
                $customer->updated_at = Carbon::now()->toDateTimeString();
                $customer->save();
                Session::put('customer_id', $customer->id);
                Session::flash('success', 'Registration Success');
                if(Cart::count() < 1){
                    return redirect('customer/dashboard');
                }else{
                    return redirect('payment/method');
                }
                
            }else{
                Session::flash('error', 'Incorrect username or password.');
                return redirect()->back();
            }
        }else{
            Session::flash('error', 'Incorrect username or password.');
            return redirect()->back();
        }
        
    }
    public function Signup()
    {
        if(!Session::has('customer_id') || !Session::has('guest_id')){
            return view('website.customer.signup');
        }else{
            return redirect()->back();
        }
    }
    public function guest()
    {
        $guest = new Guest();
        $guest->slug = uniqid();
        $create = $guest->save();
        if($create){
            Session::put('guest_id', $guest->id);
            return redirect('payment/method');
        }else{
            Session::flash('error', 'Ops! please try again.');
            return redirect()->back();
        }
    }
    public function logout()
    {
        Session::forget('customer_id');
        return redirect('/customer/login');
    }

}

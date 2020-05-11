<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Cart;
use App\Payment;
use Session;
use Uzzal\SslCommerz\Client;
use Uzzal\SslCommerz\Customer;
use Uzzal\SslCommerz\IpnNotification;

class PaymentController extends Controller
{
	public function __construct()
    {
        $this->middleware('signup');
    }
    public function index()
    {
    	if(Cart::count() > 0){
        	return view('website.checkout.payment');
    	}else{
    		return redirect('shopping/cart');
    	}
    }
    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required|string|max:60',
            'card_number' => 'required|string|max:30',
            'exp_month' => 'required|integer',
            'exp_year' => 'required|integer',
            'cvv' => 'required|string|min:4|max:4',
        ]);

        $payment = new Payment();
        $payment->name = $request->name;
        $payment->card_number = $request->card_number;
        $payment->exp_month = $request->exp_month;
        $payment->exp_year = $request->exp_year;
        $payment->cvv = $request->cvv;
        $create = $payment->save();

        if($create){
            Session::put('payment_id', $payment->id);
            return redirect('delivery/method');
        }else{
            return back();
        }

    }

    public function payment()
    {
        if($request->menthos == 1){

        }else{
            $customer = new Customer('Shahadat', 'shahadat@example.com', '0171xxxxx22');
            $resp = Client::initSession($customer, 1000); //29 is the amount
            return redirect($resp->getGatewayUrl());
        }
    }

    public function success()
    {
        if(ipn_hash_varify(config('sslcommerz.store_password'))){
            $ipn = new IpnNotification($_POST);
            $val_id = $ipn->getValId();
            $resp = Client::verifyOrder($val_id);
            echo 'amount ' . $amount = $ipn->getAmount();
            echo ' status: '.$resp->getStatus();
            echo ' transaction: '.$resp->getTransactionId();

        }
    }

    public function failed()
    {
        return 'failed';
    }

    public function canceled()
    {
        return 'canceled';
    }

}

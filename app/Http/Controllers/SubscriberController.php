<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Subscriber;
use Session;
use Carbon\Carbon;

class SubscriberController extends Controller
{
    public function store(Request $request)
    {
    	$this->validate($request, [
    		'email' => 'required|string|email|max:60|unique:subscribers'
    	]);
        
        $subscriber = new Subscriber();
        $subscriber->email = $request->email;
        $create = $subscriber->save();

        if($create){
        	Session::flash('success', 'You are successfully added');
        	return redirect()->back();
        }else{
        	Session::flash('error', 'Ops! Please try again');
        	return redirect()->back();
        }
    }
}


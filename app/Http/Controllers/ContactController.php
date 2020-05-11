<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Basicinfo;
use App\Contact;
use Session;

class ContactController extends Controller
{
    public function index()
    {
    	$basicinfo = Basicinfo::first();
        return view('website.contact', compact('basicinfo'));
    }

    public function store(Request $request)
    {
    	$this->validate($request, [
    		'name' => 'required|string|min:3|max:60',
    		'email' => 'required|string|email|max:60',
    		'subject' => 'required|string|max:255',
    		'message' => 'required|string|min:5'
    	]);
        
        $contact = new Contact();
        $contact->name = $request->name;
        $contact->email = $request->email;
        $contact->subject = $request->subject;
        $contact->message = $request->message;
        $create = $contact->save();

        if($create){
        	Session::flash('success', 'Thanks for your message');
        	return redirect()->back();
        }else{
        	Session::flash('error', 'Ops! Please try again');
        	return redirect()->back();
        }
    }
}

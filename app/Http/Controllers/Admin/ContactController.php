<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Contact;
use Session;

class ContactController extends Controller
{
    public function __construct()
    {
        $this->middleware('show')->only('show');
        $this->middleware('delete')->only('destroy');
    }

    public function index() 
    {
    	$contactmessages = Contact::latest()->get();
    	return view('admin.contact.index', compact('contactmessages'));
    }
    public function show(Contact $contactmessage) 
    {
    	if($contactmessage->status == 0){
    		$contactmessage->status = 1;
    		$contactmessage->save();
    	}
    	return view('admin.contact.show', compact('contactmessage'));
    }
    public function destroy(Contact $contactmessage) 
    {
    	$delete = $contactmessag->delete();
        if($delete){
            Session::flash('success', 'Message successfully deleted');
            return redirect()->back();
        }else{
            Session::flash('error', 'Message deleting failed');
            return redirect()->back();
        }
    }
}

<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Contact;
use Session;

class RecycleContactController extends Controller
{
    public function __construct()
    {
        $this->middleware('superadmin');
        $this->middleware('show')->only('show');
        $this->middleware('delete')->only('destroy');
    }
    public function index()
    {
        $contactmessages = Contact::onlyTrashed()->latest()->get();
        return view('admin.recycle.contact.index', compact('contactmessages'));
    }
    public function show($id)
    {
        $contactmessage = Contact::onlyTrashed()->findOrFail($id);
        return view('admin.recycle.contact.show', compact('contactmessage'));
    }
    public function update($id)
    {
        $contactmessage = Contact::onlyTrashed()->findOrFail($id);
        $restore = $contactmessage->restore();
        if($restore){
            Session::flash('success', 'Contact Successfully restored');
            return redirect()->back();
        }else{
            Session::flash('error', 'Contact restoring failed');
            return redirect()->back();
        }
    }
    public function destroy($id)
    {	
        $contactmessage = Contact::onlyTrashed()->findOrFail($id);
        $delete = $contactmessage->forceDelete();
        if($delete){
            Session::flash('success', 'Contact Successfully deleted');
            return redirect()->back();
        }else{
            Session::flash('error', 'Contact deleting failed');
            return redirect()->back();
        }
    }
}

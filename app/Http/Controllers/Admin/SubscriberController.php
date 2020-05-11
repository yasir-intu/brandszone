<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Subscriber;
use Session;

class SubscriberController extends Controller
{
    public function __construct()
    {
        $this->middleware('delete')->only('destroy');
    }
    public function index()
    {
        $subscribers = Subscriber::active()->latest()->get();
        return view('admin.subscriber.index', compact('subscribers'));
    }
    public function destroy(Subscriber $subscriber) 
    {
    	$delete = $subscriber->delete();
        if($delete){
            Session::flash('success', 'Subscriber successfully deleted');
            return redirect()->back();
        }else{
            Session::flash('error', 'Subscriber deleting failed');
            return redirect()->back();
        }
    }
}

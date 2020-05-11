<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\privacy;
use Session;
use App\Http\Controllers\Controller;

class PrivacyController extends Controller
{
    public function index(){
    	$privacy = privacy::first();
    	return view('admin.privacy.index',compact('privacy'));
    }

    public function Update(Request $request)
    {	
    	$privacy = privacy::first();
    	$privacy->description = $request->description;
    	$update = $privacy->save();

    	if($update){
            Session::flash('success', ' Successfully updated');
            return redirect()->back();
        }else{
            Session::flash('error', 'oops! updating failed');
            return redirect()->back();
        }
    }
}

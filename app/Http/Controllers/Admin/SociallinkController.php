<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Sociallink;
use Session;

class SociallinkController extends Controller
{
    public function index()
    {
        $sociallink = Sociallink::first();
        return view('admin.sociallink.index', compact('sociallink'));
    }

    public function Update(Request $request)
    {
        $this->validate($request,
        [
            'facebook'  => 'nullable|string|url|max:255',
            'twitter'   => 'nullable|string|url|max:255',
            'google'    => 'nullable|string|url|max:255',
            'instagram' => 'nullable|string|url|max:255',
            'linkedin'  => 'nullable|string|url|max:255',
            'pinterest' => 'nullable|string|url|max:255',

        ]);

        $sociallink = Sociallink::first();
        $sociallink->facebook = $request->facebook;
        $sociallink->twitter = $request->twitter;
        $sociallink->google = $request->google;
        $sociallink->instagram = $request->instagram;
        $sociallink->linkedin = $request->linkedin;
        $sociallink->pinterest = $request->pinterest;
        $update = $sociallink->save();
        
        if($update){
            Session::flash('success', 'Linkes Successfully updated');
            return redirect()->back();
        }else{
            Session::flash('error', 'Linkes updating failed');
            return redirect()->back();
        }
    }
}

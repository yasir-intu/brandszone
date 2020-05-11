<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
Use App\About;
use Carbon\Carbon;
use Session;
use Storage;
use Image;

class AboutController extends Controller
{
    public function index()
    {
        $about = About::first();
        return view('admin.about.index', compact('about'));
    }

    public function Update(Request $request)
    {
        // return $request;
        $this->validate($request,
        [
            'title'      => 'required|string|max:255',
            'subtitle'   => 'required|string|max:255',
            'description'=> 'required|string',
            'image'      => 'nullable|mimes:jpeg,bmp,png',

        ]);

        $about = About::first();
        if($request->hasFile('image')){
            $image = $request->file('image');
            $currentDate = Carbon::now()->toDateString();
            $imageName = "about".'-'.$currentDate.'-'.uniqid().'.'.$image->getClientOriginalExtension();

            if (Storage::disk('public')->exists('about/'.$about->image))
            {
                Storage::disk('public')->delete('about/'.$about->image);
            }

            if (!Storage::disk('public')->exists('about'))
            {
                Storage::disk('public')->makeDirectory('about');
            }
            Image::make($image)->resize(1170,416)->save(base_path('public/storage/about/'.$imageName));
        }else{
            $imageName = $about->image;
        }

        $about->title = $request->title;
        $about->subtitle = $request->subtitle;
        
        
        $about->image = $imageName;
        $about->description = $request->description;
        $update = $about->save();
        
        if($update){
            Session::flash('success', 'Information Successfully updated');
            return redirect()->back();
        }else{
            Session::flash('error', 'Information updating failed');
            return redirect()->back();
        }
    }
}

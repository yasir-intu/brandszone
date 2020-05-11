<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
Use App\Basicinfo;
use Carbon\Carbon;
use Session;
use Storage;
use Image;

class BasicinfoController extends Controller
{
    public function index()
    {
        $basicinfo = Basicinfo::first();
        return view('admin.basicinfo.index', compact('basicinfo'));
    }

    public function Update(Request $request)
    {
        $this->validate($request,
        [
            
            'phone'      => 'required|string|max:30',
            'phone_two'  => 'nullable|string|max:30',
            'email'      => 'required|string|email|max:60',
            'email_two'  => 'nullable|string|email|max:60',
            'address'    => 'required|string|max:255',
            'description'=> 'required|string',
            'logo'     	 => 'nullable|mimes:jpeg,bmp,png',
            'favicon'    => 'nullable|mimes:jpeg,bmp,png',

        ]);

        $basicinfo = Basicinfo::first();
        if($request->hasFile('logo')){
            $logo = $request->file('logo');
            $currentDate = Carbon::now()->toDateString();
            $logoName = "logo".'-'.$currentDate.'-'.uniqid().'.'.$logo->getClientOriginalExtension();

            if (Storage::disk('public')->exists('logos/'.$basicinfo->logo))
            {
                Storage::disk('public')->delete('logos/'.$basicinfo->logo);
            }

            if (!Storage::disk('public')->exists('logos'))
            {
                Storage::disk('public')->makeDirectory('logos');
            }
            Image::make($logo)->resize(2237,701)->save(base_path('public/storage/logos/'.$logoName));
        }else{
            $logoName = $basicinfo->logo;
        }

        if($request->hasFile('favicon')){
            $favicon = $request->file('favicon');
            $currentDate = Carbon::now()->toDateString();
            $faviconName = "favicon".'-'.$currentDate.'-'.uniqid().'.'.$favicon->getClientOriginalExtension();

             if (Storage::disk('public')->exists('logos/'.$basicinfo->favicon))
            {
                Storage::disk('public')->delete('logos/'.$basicinfo->favicon);
            }

            Image::make($favicon)->resize(684,701)->save(base_path('public/storage/logos/'.$faviconName));
        }else{
            $faviconName = $basicinfo->favicon;
        }

        
        $basicinfo->logo = $logoName;
        $basicinfo->favicon = $faviconName;
        $basicinfo->phone = $request->phone;
        $basicinfo->phone_two = $request->phone_two;
        $basicinfo->email = $request->email;
        $basicinfo->email_two = $request->email_two;
        $basicinfo->address = $request->address;
        $basicinfo->description = $request->description;
        $update = $basicinfo->save();
        
        if($update){
            Session::flash('success', 'Information Successfully updated');
            return redirect()->back();
        }else{
            Session::flash('error', 'Information updating failed');
            return redirect()->back();
        }
    }
}

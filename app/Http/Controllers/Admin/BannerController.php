<?php

namespace App\Http\Controllers\Admin;

use App\Banner;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Carbon\Carbon;
use Session;
use Storage;
use Image;

class BannerController extends Controller
{
    public function __construct()
    {
        $this->middleware('create')->only('create');
        $this->middleware('edit')->only('edit');
        $this->middleware('show')->only('show');
        $this->middleware('delete')->only('destroy');
    }

    public function index()
    {
        $banners = Banner::latest()->get();
        return view('admin.banner.index', compact('banners'));
    }

    public function create()
    {
        return view('admin.banner.create');
    }

    public function store(Request $request)
    {
        $this->validate($request,
        [
            'title'    => 'required|string|max:255',
            'subtitle'   => 'required|string',
            // 'btn_text'   => 'required|string',
            // 'btn_url'=> 'required|string|url',
            'image'   => 'required|mimes:jpeg,bmp,png',

        ]);

        if($request->hasFile('image')){
            $image = $request->file('image');
            $slug = str_slug($request->title);
            $currentDate = Carbon::now()->toDateString();
            $imageName = $slug.'-'.$currentDate.'-'.uniqid().'.'.$image->getClientOriginalExtension();

            if (!Storage::disk('public')->exists('banners'))
            {
                Storage::disk('public')->makeDirectory('banners');
            }
            Image::make($image)->resize(1919,668)->save(base_path('public/storage/banners/'.$imageName));
        }

        $banner = new Banner();
        $banner->title = $request->title;
        $banner->subtitle = $request->subtitle;
        // $banner->btn_text = $request->btn_text;
        // $banner->btn_url = $request->btn_url;
        $banner->image = $imageName;
        $create = $banner->save();
        
        if($create){
            Session::flash('success', 'Banner Successfully created');
            return redirect()->back();
        }else{
            Session::flash('error', 'Banner creating failed');
            return redirect()->back();
        }
    }

    public function show(Banner $banner)
    {
        return view('admin.banner.show', compact('banner'));
    }

    public function edit(Banner $banner)
    {
        return view('admin.banner.edit', compact('banner'));
    }

    public function update(Request $request, Banner $banner)
    {
        $this->validate($request,
        [
            'title'    => 'required|string|max:255',
            'subtitle'   => 'required|string',
            // 'btn_text'   => 'required|string',
            // 'btn_url'=> 'required|string|url',
            'image'   => 'nullable|mimes:jpeg,bmp,png',

        ]);

        if($request->hasFile('image')){
            $image = $request->file('image');
            $slug = str_slug($request->title);
            $currentDate = Carbon::now()->toDateString();
            $imageName = $slug.'-'.$currentDate.'-'.uniqid().'.'.$image->getClientOriginalExtension();

            // Delete old image
            if (Storage::disk('public')->exists('banners/'.$banner->image))
            {
                Storage::disk('public')->delete('banners/'.$banner->image);
            }

            if (!Storage::disk('public')->exists('banners'))
            {
                Storage::disk('public')->makeDirectory('banners');
            }
            Image::make($image)->resize(1919,668)->save(base_path('public/storage/banners/'.$imageName));
        }else{
            $imageName = $banner->image;
        }

        $banner->title = $request->title;
        $banner->subtitle = $request->subtitle;
        $banner->btn_text = $request->btn_text;
        $banner->btn_url = $request->btn_url;
        $banner->image = $imageName;
        $update = $banner->save();
        
        if($update){
            Session::flash('success', 'Banner Successfully updated');
            return redirect()->back();
        }else{
            Session::flash('error', 'Banner updating failed');
            return redirect()->back();
        }
    }

    public function destroy(Banner $banner)
    {
        $delete = $banner->delete();
        if($delete){
            Session::flash('success', 'Banner Successfully deleted');
            return redirect()->back();
        }else{
            Session::flash('error', 'Banner deleting failed');
            return redirect()->back();
        }
    }
}

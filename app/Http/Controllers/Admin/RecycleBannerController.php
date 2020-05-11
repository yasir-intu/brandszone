<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Banner;
use Session;
use Storage;

class RecycleBannerController extends Controller
{
    public function __construct()
    {
        $this->middleware('superadmin');
        $this->middleware('show')->only('show');
        $this->middleware('delete')->only('destroy');
    }
    public function index()
    {
        $banners = Banner::onlyTrashed()->latest()->get();
        return view('admin.recycle.banner.index', compact('banners'));
    }
    public function show($id)
    {
        $banner = Banner::onlyTrashed()->findOrFail($id);
        return view('admin.recycle.banner.show', compact('banner'));
    }
    public function update($id)
    {
        $banner = Banner::onlyTrashed()->findOrFail($id);
        $restore = $banner->restore();
        if($restore){
            Session::flash('success', 'Banner Successfully restored');
            return redirect()->back();
        }else{
            Session::flash('error', 'Banner restoring failed');
            return redirect()->back();
        }
    }
    public function destroy($id)
    {	
        $banner = Banner::onlyTrashed()->findOrFail($id);
        if (Storage::disk('public')->exists('banners/'.$banner->image))
        {
            Storage::disk('public')->delete('banners/'.$banner->image);
        }
        $delete = $banner->forceDelete();
        if($delete){
            Session::flash('success', 'Banner Successfully deleted');
            return redirect()->back();
        }else{
            Session::flash('error', 'Banner deleting failed');
            return redirect()->back();
        }
    }
}

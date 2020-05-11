<?php

namespace App\Http\Controllers\Admin;

use App\Brand;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Session;
use Carbon\Carbon;
use Storage;
use Image;

class BrandController extends Controller
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
        $brands = Brand::latest()->with('products')->get();
        return view('admin.brand.index', compact('brands'));
    }

    public function create()
    {
        return view('admin.brand.create');
    }

    public function store(Request $request)
    {
        $this->validate($request,
        [
            'name'    => 'required|string|max:60|unique:brands',
            'image'   => 'required|mimes:jpeg,bmp,png',
        ]);

        if($request->hasFile('image')){
            $image = $request->file('image');
            $slug = str_slug($request->name);
            $currentDate = Carbon::now()->toDateString();
            $imageName = $slug.'-'.$currentDate.'-'.uniqid().'.'.$image->getClientOriginalExtension();

            if (!Storage::disk('public')->exists('brands'))
            {
                Storage::disk('public')->makeDirectory('brands');
            }
            Image::make($image)->save(base_path('public/storage/brands/'.$imageName));
        }

        $brand = new Brand();
        $brand->name = $request->name;
        $brand->description = $request->description;
        $brand->status = (boolean)$request->status;
        $brand->image = $imageName;
        $brand->slug = $slug;
        $create = $brand->save();
        
        if($create){
            Session::flash('success', 'Brand Successfully created');
            return redirect()->back();
        }else{
            Session::flash('error', 'Brand creating failed');
            return redirect()->back();
        }
    }

    public function show(Brand $brand)
    {
        return view('admin.brand.show', compact('brand'));
    }

    public function edit(Brand $brand)
    {
        return view('admin.brand.edit', compact('brand'));
    }

    public function update(Request $request, Brand $brand)
    {
        $this->validate($request,
        [
            'name'    => 'required|string|max:60|unique:brands,name,'.$brand->id,
            'image'   => 'mimes:jpeg,bmp,png',
        ]);

        $slug = str_slug($request->name);
        if($request->hasFile('image')){
            $image = $request->file('image');
            $currentDate = Carbon::now()->toDateString();
            $imageName = $slug.'-'.$currentDate.'-'.uniqid().'.'.$image->getClientOriginalExtension();

            if (!Storage::disk('public')->exists('brands'))
            {
                Storage::disk('public')->makeDirectory('brands');
            }
            Image::make($image)->save(base_path('public/storage/brands/'.$imageName));
        }else{
            $imageName = $brand->image;
        }

        $brand->name = $request->name;
        $brand->description = $request->description;
        $brand->status = (boolean)$request->status;
        $brand->image = $imageName;
        $brand->slug = $slug;
        $create = $brand->save();
        
        if($create){
            Session::flash('success', 'Brand Successfully updated');
            return redirect()->back();
        }else{
            Session::flash('error', 'Brand updating failed');
            return redirect()->back();
        }
    }

    public function destroy(Brand $brand)
    {
        if($brand->products->count() == 0){
            if (Storage::disk('public')->exists('brands/'.$brand->image))
            {
                Storage::disk('public')->delete('brands/'.$brand->image);
            }
            $delete = $brand->delete();
            if($delete){
                Session::flash('success', 'Brand Successfully deleted');
                return redirect()->back();
            }else{
                Session::flash('error', 'Brand deleting failed');
                return redirect()->back();
            }
        }else{
            Session::flash('error', 'Ops! You can not delete');
            return redirect()->back();
        }
        
    }
}

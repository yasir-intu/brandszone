<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Product;
use Session;
use Storage;

class RecycleProductController extends Controller
{
    public function __construct()
    {
        $this->middleware('superadmin');
        $this->middleware('show')->only('show');
        $this->middleware('delete')->only('destroy');
    }
    public function index()
    {
        $products = Product::onlyTrashed()->latest()->paginate(12);
        return view('admin.recycle.product.index', compact('products'));
    }
    public function show($id)
    {
        $product = Product::onlyTrashed()->findOrFail($id);
        return view('admin.recycle.product.show', compact('product'));
    }
    public function update($id)
    {
        $product = Product::onlyTrashed()->findOrFail($id);
        $restore = $product->restore();
        if($restore){
            Session::flash('success', 'Product Successfully restored');
            return redirect()->back();
        }else{
            Session::flash('error', 'Product restoring failed');
            return redirect()->back();
        }
    }
    public function destroy($id)
    {	
        $product = Product::onlyTrashed()->findOrFail($id);
        if (Storage::disk('public')->exists('products/'.$product->image))
        {
            Storage::disk('public')->delete('products/'.$product->image);
        }
        if (Storage::disk('public')->exists('products/'.$product->image_two))
        {
            Storage::disk('public')->delete('products/'.$product->image_two);
        }
        if (Storage::disk('public')->exists('products/'.$product->image_three))
        {
            Storage::disk('public')->delete('products/'.$product->image_three);
        }
        if (Storage::disk('public')->exists('products/'.$product->image_four))
        {
            Storage::disk('public')->delete('products/'.$product->image_four);
        }
        $product->maincategories()->detach();
        $product->categories()->detach();
        $product->colors()->detach();
        $product->sizes()->detach();
        $product->types()->detach();
        $delete = $product->forceDelete();
        if($delete){
            Session::flash('success', 'Product Successfully deleted');
            return redirect()->back();
        }else{
            Session::flash('error', 'Product deleting failed');
            return redirect()->back();
        }
    }
}

<?php

namespace App\Http\Controllers\Admin;

use App\Damaged_Product;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Product;
use App\Vendor;
use Carbon\Carbon;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;

class Damaged_ProductController extends Controller
{
    public function __construct(){
        $this->middleware('supplier');
    }

    public function index(){
        $purchases=Damaged_Product::where("user_id", Auth::user()->id)->where("status", 1)->latest()->paginate(20);
        return view('admin.damaged product.index', compact('purchases'));
    }

    public function add(){
        $products = Product::where('creator', Auth::user()->id)->where('status', '<', 2)->get();
        return view('admin.damaged product.create', compact('products'));
    }

    public function create(Request $request){
        $this->validate($request,
        [
            'product'       => 'required|integer',
            'stock'       => 'required|string|max:191',
        ],[
            'product.require' => 'Please Enter A Product',
            'product.integer' => 'Please Select A Existing Product',
            'stock.require' => 'Please Enter Product Quantity',
            'stock.max' => 'Max Character 191',
        ]);

        $slug='DMG_'.uniqid(2019);

        $create=Damaged_Product::insert([
            'user_id'=>Auth::user()->id,
            'pro_id'=>$request->product,
            'stock'=>$request->stock,
            'slug'=>$slug,
            'created_at'=>Carbon::now()->toDateTimeString(),
        ]);
        
        if($create){
            Session::flash('success', 'Product Successfully created');
            return redirect()->back();
        }else{
            Session::flash('error', 'Product creating failed');
            return redirect()->back();
        }
    }

    public function view($slug){
        $purchase=Damaged_Product::where("user_id", Auth::user()->id)->where("status", 1)->where('slug', $slug)->firstOrFail();
        return view('admin.damaged product.show', compact('purchase'));
    }

    public function edit($slug){
        $vendors=Vendor::where("user_id", Auth::user()->id)->where("status", 1)->get();
        $products = Product::where('creator', Auth::user()->id)->where('status', '<', 2)->get();
        $purchase=Damaged_Product::where("user_id", Auth::user()->id)->where("status", 1)->where('slug', $slug)->firstOrFail();
        return view('admin.damaged product.edit', compact('vendors', 'products', 'purchase'));
    }

    public function update(Request $request, $slug){
        $this->validate($request,
        [
            'product'       => 'required|integer',
            'stock'       => 'required|string|max:191',
        ],[
            'product.require' => 'Please Enter A Product',
            'product.integer' => 'Please Select A Existing Product',
            'stock.require' => 'Please Enter Product Quantity',
            'stock.max' => 'Max Character 191',
        ]);

        $update=Damaged_Product::where("user_id", Auth::user()->id)->where("status", 1)->where('slug', $slug)->update([
            'pro_id'=>$request->product,
            'stock'=>$request->stock,
            'updated_at'=>Carbon::now()->toDateTimeString(),
        ]);
        
        if($update){
            Session::flash('success', 'Product Successfully created');
            return redirect()->back();
        }else{
            Session::flash('error', 'Product creating failed');
            return redirect()->back();
        }
    }
    public function delete($slug){
        $delete=Damaged_Product::where("user_id", Auth::user()->id)->where("status", 1)->where('slug', $slug)->update([
            'status'=>'0',
            'updated_at'=>Carbon::now()->toDateTimeString(),
        ]);
        
        if($delete){
            Session::flash('success', 'Product Successfully created');
            return redirect()->back();
        }else{
            Session::flash('error', 'Product creating failed');
            return redirect()->back();
        }
    }
}

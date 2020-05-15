<?php

namespace App\Http\Controllers\Admin;

use App\Product;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Type;
use App\Category;
use App\Maincategory;
use App\Brand;
use App\Color;
use App\product_color_stor;
use App\product_info_stor;
use App\product_size_stor;
use App\Size;
use App\Subcategory;
use Carbon\Carbon;
use Session;
use Image;
use Storage;
use Auth;

class ProductController extends Controller
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
        if (Auth::user()->role_id==1) {
            $products = Product::where('status', 1)->latest()->paginate(20);
            return view('admin.product.index', compact('products'));
        }
        if (Auth::user()->role_id==4) {
            $products = Product::where('creator', Auth::user()->id)->where('status', '<', 2)->latest()->paginate(20);
            return view('admin.product.index', compact('products'));
        }
    }

    public function create()
    {
        if (Auth::user()->role_id==4) {
            $types = Type::active()->get();
            $maincategories = Maincategory::active()->get();
            $subcategories = Subcategory::active()->get();
            $categories = Category::active()->get();
            $brands = Brand::active()->get();
            $colors = Color::active()->get();
            $sizes = Size::active()->get();
            return view('admin.product.create', compact('types', 'maincategories', 'subcategories', 'categories', 'brands', 'colors', 'sizes'));
        }
    }

    public function store(Request $request)
    {
        $this->validate($request,
        [
            'name'       => 'required|string|max:255',
            'types'      => 'required',
            'maincategories' => 'required',
            'subcategories' => 'required',
            'categories' => 'required',
            'brand'      => 'required',
            'purchase_price'      => 'required',
            'seller_price'      => 'required',
            'discount'      => 'nullable|integer',
            'stock'      => 'required|integer',
            'stock_alert'      => 'required|integer',
            'description'=> 'nullable|string',
            'features'   => 'nullable|string',
            'image'      => 'required|mimes:jpeg,bmp,png',
            'image_two'  => 'nullable|mimes:jpeg,bmp,png',
            'image_three'=> 'nullable|mimes:jpeg,bmp,png',
            'image_four' => 'nullable|mimes:jpeg,bmp,png',
        ],[
            'name.require' => 'Please Enter Product Name',
            'name.max' => 'Name Should Contain 255 Character',
            'types.require' => 'Please Enter A Product Type',
            'maincategories.require' => 'Please Enter A Main Categories',
            'subcategories.require' => 'Please Enter A Sub Categories',
            'categories.require' => 'Please Enter A Categories',
            'brand.require' => 'Please Enter A Brand',
            'purchase_price.require' => 'Please Enter A Purchase Price',
            'seller_price.require' => 'Please Enter A Selling Price',
            'discount.integer' => 'Discount Should Be Only In Percentage Number',
            'stock.require' => 'Please Enter Your Product Stock',
            'stock_alert.require' => 'Please Enter Your Product Stock Limit Alert',
            'stock.interger' => 'Product Stock Should Be In Number',
            'stock-alert.interger' => 'Product Stock Limit Alert Should Be In Number',
            'image.require' => 'Please Upload Atleast One Image Of The Product',
        ]);

        if($request->hasFile('image')){
            $file = $request->file('image');
            $slug = str_slug($request->name);
            $currentDate = Carbon::now()->toDateString();
            $imageName = $slug.'-'.$currentDate.'-'.uniqid().'.'.$file->getClientOriginalExtension();

            $image = Image::make($file);

            $image->resize(1200, 1200, function ($constraint) {
                $constraint->aspectRatio();
            });

            $img_canvas = Image::canvas(1200, 1200);
            $img_canvas->insert($image, 'center');

            if (!Storage::disk('public')->exists('products'))
            {
                Storage::disk('public')->makeDirectory('products');
            }
            
            $img_canvas->save(base_path('public/storage/products/'.$imageName));
        }

        if($request->hasFile('image_two')){
            $file = $request->file('image_two');
            $slug = str_slug($request->name);
            $currentDate = Carbon::now()->toDateString();
            $imageNameTwo = $slug.'-'.$currentDate.'-'.uniqid().'.'.$file->getClientOriginalExtension();
            
            $image = Image::make($file);

            $image->resize(1200, 1200, function ($constraint) {
                $constraint->aspectRatio();
            });

            $img_canvas = Image::canvas(1200, 1200);
            $img_canvas->insert($image, 'center');
            
            $img_canvas->save(base_path('public/storage/products/'.$imageNameTwo));
        }else{
            $imageNameTwo = NULL;
        }
        if($request->hasFile('image_three')){
            $file = $request->file('image_three');
            $slug = str_slug($request->name);
            $currentDate = Carbon::now()->toDateString();
            $imageNameThree = $slug.'-'.$currentDate.'-'.uniqid().'.'.$file->getClientOriginalExtension();
            
            $image = Image::make($file);

            $image->resize(1200, 1200, function ($constraint) {
                $constraint->aspectRatio();
            });

            $img_canvas = Image::canvas(1200, 1200);
            $img_canvas->insert($image, 'center');
            
            $img_canvas->save(base_path('public/storage/products/'.$imageNameThree));
        }else{
            $imageNameThree = NULL;
        }

        if($request->hasFile('image_four')){
            $file = $request->file('image_four');
            $slug = str_slug($request->name);
            $currentDate = Carbon::now()->toDateString();
            $imageNameFour = $slug.'-'.$currentDate.'-'.uniqid().'.'.$file->getClientOriginalExtension();
            
            $image = Image::make($file);

            $image->resize(1200, 1200, function ($constraint) {
                $constraint->aspectRatio();
            });

            $img_canvas = Image::canvas(1200, 1200);
            $img_canvas->insert($image, 'center');

            if (!Storage::disk('public')->exists('products'))
            {
                Storage::disk('public')->makeDirectory('products');
            }
            
            $img_canvas->save(base_path('public/storage/products/'.$imageNameFour));
        }else{
            $imageNameFour = NULL;
        }
        
        $pos = strpos($request->discount, '%');
        if ($pos === true) {
            $discount=chop($request->discount,"%");
        }else{
            $discount=$request->discount;
        }

        $product = Product::insertGetId([
            'name' => $request->name,
            'code'=> rand(000001, 1000000),
            'brand_id' => '0',
            'purchase_price' => $request->purchase_price,
            'seller_price' => $request->seller_price,
            'discount' => $discount,
            'stock' => $request->stock,
            'stock_alert' => $request->stock_alert,
            'description' => $request->description,
            'features' => $request->features,
            'creator' => Auth::user()->id,
            'image' => $imageName,
            'image_two' => $imageNameTwo,
            'image_three' => $imageNameThree,
            'image_four' => $imageNameFour,
            'slug' => $slug,
            'status' => '0',
            'created_at'=>Carbon::now()->toDateTimeString(),
        ]);
        
        foreach($request->categories as $categories=>$v){
            
            $data2=array(
                'pro_id' => $product,
                'type' => $request->types,
                'main' => $request->maincategories,
                'sub' =>  $request->subcategories,
                'cate' => $request->categories[$categories],
                'brand' => $request->brand,
            );

            $info=array();
            $i = product_info_stor::insert($data2);
            $info[]=$i;

        }

        foreach($request->colors as $colors=>$v){
            
            $data2=array(
                'pro_id' => $product,
                'color' => $request->colors[$colors],
            );

            $color=array();
            $c = product_color_stor::insert($data2);
            $color[]=$c;

        }

        foreach($request->sizes as $sizes=>$v){
            
            $data2=array(
                'pro_id' => $product,
                'size' => $request->sizes[$sizes],
            );

            $size=array();
            $z = product_size_stor::insert($data2);
            $size[]=$z;

        }
        
        if($product && $info && $color && $size){
            Session::flash('success', 'Product Successfully created');
            return redirect()->back();
        }else{
            Session::flash('error', 'Product creating failed');
            return redirect()->back();
        }
    }

    public function show(Product $product)
    {
        return view('admin.product.show', compact('product'));
    }

    public function edit(Product $product)
    {
        $types = Type::active()->get();
        $maincategories = Maincategory::active()->get();
        $subcategories = Subcategory::active()->get();
        $categories = Category::active()->get();
        $brands = Brand::active()->get();
        $colors = Color::active()->get();
        $sizes = Size::active()->get();
        $info=product_info_stor::where('pro_id', $product->id)->get();
        $pro_colors=product_color_stor::where('pro_id', $product->id)->get();
        $pro_sizes=product_size_stor::where('pro_id', $product->id)->get();
        return view('admin.product.edit', compact('product','types', 'maincategories','subcategories', 'categories', 'brands', 'colors', 'sizes', 'info', 'pro_colors', 'pro_sizes'));
    }

    public function update(Request $request, Product $product)
    {
        $this->validate($request,
        [
            'name'       => 'required|string|max:255',
            'types'      => 'required',
            'maincategories' => 'required',
            'subcategories' => 'required',
            'categories' => 'required',
            'brand'      => 'required',
            'purchase_price'      => 'required',
            'seller_price'      => 'required',
            'discount'      => 'nullable|integer',
            'stock'      => 'required|integer',
            'stock_alert'      => 'required|integer',
            'description'=> 'nullable|string',
            'features'   => 'nullable|string',
            'image'      => 'nullable|mimes:jpeg,bmp,png',
            'image_two'  => 'nullable|mimes:jpeg,bmp,png',
            'image_three'=> 'nullable|mimes:jpeg,bmp,png',
            'image_four' => 'nullable|mimes:jpeg,bmp,png',
        ],[
            'name.require' => 'Please Enter Product Name',
            'name.max' => 'Name Should Contain 255 Character',
            'types.require' => 'Please Enter A Product Type',
            'maincategories.require' => 'Please Enter A Main Categories',
            'subcategories.require' => 'Please Enter A Sub Categories',
            'categories.require' => 'Please Enter A Categories',
            'brand.require' => 'Please Enter A Brand',
            'purchase_price.require' => 'Please Enter A Purchase Price',
            'seller_price.require' => 'Please Enter A Selling Price',
            'discount.integer' => 'Discount Should Be Only In Percentage Number',
            'stock.require' => 'Please Enter Your Product Stock',
            'stock_alert.require' => 'Please Enter Your Product Stock Limit Alert',
            'stock.interger' => 'Product Stock Should Be In Number',
            'stock-alert.interger' => 'Product Stock Limit Alert Should Be In Number',
            'image.require' => 'Please Upload Atleast One Image Of The Product',
        ]);

        $slug = str_slug($request->name);

        if($request->hasFile('image')){
            $file = $request->file('image');
            $currentDate = Carbon::now()->toDateString();
            $imageName = $slug.'-'.$currentDate.'-'.uniqid().'.'.$file->getClientOriginalExtension();

            $image = Image::make($file);

            $image->resize(1200, 1200, function ($constraint) {
                $constraint->aspectRatio();
            });

            $img_canvas = Image::canvas(1200, 1200);
            $img_canvas->insert($image, 'center');

            // Delete old image
            if (Storage::disk('public')->exists('products/'.$product->image))
            {
                Storage::disk('public')->delete('products/'.$product->image);
            }
            $img_canvas->save(base_path('public/storage/products/'.$imageName));
        }else{
            $imageName = $product->image;
        }

        if($request->hasFile('image_two')){
            $file = $request->file('image_two');
            $currentDate = Carbon::now()->toDateString();
            $imageNameTwo = $slug.'-'.$currentDate.'-'.uniqid().'.'.$file->getClientOriginalExtension();
            
            $image = Image::make($file);

            $image->resize(1200, 1200, function ($constraint) {
                $constraint->aspectRatio();
            });

            $img_canvas = Image::canvas(1200, 1200);
            $img_canvas->insert($image, 'center');

            // Delete old image
            if (Storage::disk('public')->exists('products/'.$product->imageTwo))
            {
                Storage::disk('public')->delete('products/'.$product->imageTwo);
            }
            $img_canvas->save(base_path('public/storage/products/'.$imageNameTwo));
        }else{
            $imageNameTwo = $product->image_two;
        }
        if($request->hasFile('image_three')){
            $file = $request->file('image_three');
            $currentDate = Carbon::now()->toDateString();
            $imageNameThree = $slug.'-'.$currentDate.'-'.uniqid().'.'.$file->getClientOriginalExtension();
            
            $image = Image::make($file);

            $image->resize(1200, 1200, function ($constraint) {
                $constraint->aspectRatio();
            });

            $img_canvas = Image::canvas(1200, 1200);
            $img_canvas->insert($image, 'center');

            // Delete old image
            if (Storage::disk('public')->exists('products/'.$product->imageThree))
            {
                Storage::disk('public')->delete('products/'.$product->imageThree);
            }
            $img_canvas->save(base_path('public/storage/products/'.$imageNameThree));
        }else{
            $imageNameThree = $product->image_three;
        }

        if($request->hasFile('image_four')){
            $file = $request->file('image_four');
            $currentDate = Carbon::now()->toDateString();
            $imageNameFour = $slug.'-'.$currentDate.'-'.uniqid().'.'.$file->getClientOriginalExtension();
            
            $image = Image::make($file);

            $image->resize(1200, 1200, function ($constraint) {
                $constraint->aspectRatio();
            });

            $img_canvas = Image::canvas(1200, 1200);
            $img_canvas->insert($image, 'center');

            // Delete old image
            if (Storage::disk('public')->exists('products/'.$product->imageFour))
            {
                Storage::disk('public')->delete('products/'.$product->imageFour);
            }
            $img_canvas->save(base_path('public/storage/products/'.$imageNameFour));
        }else{
            $imageNameFour = $product->image_four;
        }

        if ($product->status === 0) {
            $brand='0';
        } else {
            $brand=$request->brand;
        }

        $pos = strpos($request->discount, '%');
        if ($pos === true) {
            $discount=chop($request->discount,"%");
        }else{
            $discount=$request->discount;
        }

        $create = Product::where('id', $product->id)->update([
            'name' => $request->name,
            'brand_id' => $brand,
            'purchase_price' => $request->purchase_price,
            'seller_price' => $request->seller_price,
            'discount' => $discount,
            'stock' => $request->stock,
            'stock_alert' => $request->stock_alert,
            'description' => $request->description,
            'features' => $request->features,
            'image' => $imageName,
            'image_two' => $imageNameTwo,
            'image_three' => $imageNameThree,
            'image_four' => $imageNameFour,
            'updated_at'=>Carbon::now()->toDateTimeString(),
        ]);
        
        if ($product->status === 0) {
            foreach($request->categories as $categories=>$v){
            
                $data2=array(
                    'pro_id' => $product->id,
                    'type' => $request->types,
                    'main' => $request->maincategories,
                    'sub' =>  $request->subcategories,
                    'cate' => $request->categories[$categories],
                    'brand' => $request->brand,
                );
    
                $info=array();
                $i = product_info_stor::where('pro_id', $product->id)->update($data2);
                $info[]=$i;
    
            }
    
            foreach($request->colors as $colors=>$v){
                
                $data2=array(
                    'pro_id' => $product->id,
                    'color' => $request->colors[$colors],
                );
    
                $color=array();
                $c = product_color_stor::where('pro_id', $product->id)->update($data2);
                $color[]=$c;
    
            }
    
            foreach($request->sizes as $sizes=>$v){
                
                $data2=array(
                    'pro_id' => $product->id,
                    'size' => $request->sizes[$sizes],
                );
    
                $size=array();
                $z = product_size_stor::where('pro_id', $product->id)->update($data2);
                $size[]=$z;
    
            }
        } else {
            $product->maincategories()->sync($request->maincategories);
            $product->subcategories()->sync($request->maincategories);
            $product->categories()->sync($request->categories);
            $product->colors()->sync($request->colors);
            $product->sizes()->sync($request->sizes);
            $product->types()->sync($request->types);
        }
        
        
        if($create){
            Session::flash('success', 'Product Successfully Updated');
            return redirect()->back();
        }else{
            Session::flash('error', 'Product updating failed');
            return redirect()->back();
        }
    }

    public function destroy(Product $product)
    {
        $delete = $product->delete();
        if($delete){
            Session::flash('success', 'Product Successfully deleted');
            return redirect()->back();
        }else{
            Session::flash('error', 'Product deleting failed');
            return redirect()->back();
        }
    }

    public function topsale()
    {
        $products = Product::topsale()->paginate(8);
        return view('admin.product.index', compact('products'));
    }

    public function draft()
    {
        $products = Product::inactive()->paginate(8);
        return view('admin.product.index', compact('products'));
    }

    public function stockout()
    {
        $products = Product::stockout()->paginate(8);
        return view('admin.product.index', compact('products'));
    }

    public function productType($slug)
    {
        $type =Type::where('slug', $slug)->first();
        $products = Type::find($type->id)->products()->paginate(8);
        return view('admin.product.index', compact('products'));
    }
}
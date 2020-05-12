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
use App\Size;
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
        $products = Product::latest()->paginate(8);
        return view('admin.product.index', compact('products'));
    }

    public function create()
    {
        $types = Type::active()->get();
        $maincategories = Maincategory::active()->get();
        $categories = Category::active()->get();
        $brands = Brand::active()->get();
        $colors = Color::active()->get();
        $sizes = Size::active()->get();
        return view('admin.product.create', compact('types', 'maincategories', 'categories', 'brands', 'colors', 'sizes'));
    }

    public function store(Request $request)
    {
        $this->validate($request,
        [
            'name'       => 'required|string|max:255',
            'types'      => 'required',
            'maincategories' => 'required',
            'categories' => 'required',
            'brand'      => 'required',
            'price'      => 'required',
            'discount'      => 'nullable|integer',
            'stock'      => 'required|integer',
            'stock-alert'      => 'required|integer',
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
            'categories.require' => 'Please Enter A Categories',
            'brand.require' => 'Please Enter A Brand',
            'price.require' => 'Please Enter A Price',
            'discount.integer' => 'Discount Should Be Only In Percentage Number',
            'stock.require' => 'Please Enter Your Product Stock',
            'stock-alert.require' => 'Please Enter Your Product Stock Limit Alert',
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

        $product = new Product();
        $product->name = $request->name;
        $product->code = rand(000001, 1000000);
        $product->brand_id = $request->brand;
        $product->price = $request->price;
        $product->discount = $discount;
        $product->stock = $request->stock;
        $product->stock_alert = $request->stock_alert;
        $product->description = $request->description;;
        $product->features = $request->features;
        $product->creator = Auth::user()->id;
        $product->image = $imageName;
        $product->image_two = $imageNameTwo;
        $product->image_three = $imageNameThree;
        $product->image_four = $imageNameFour;
        $product->slug = $slug;
        $product->status = '1';
        $product->request = '0';

        $create = $product->save();

        $product->maincategories()->attach($request->maincategories);
        $product->categories()->attach($request->categories);
        $product->colors()->attach($request->colors);
        $product->sizes()->attach($request->sizes);
        $product->types()->attach($request->types);

        
        if($create){
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
        $categories = Category::active()->get();
        $brands = Brand::active()->get();
        $colors = Color::active()->get();
        $sizes = Size::active()->get();
        return view('admin.product.edit', compact('product','types', 'maincategories','categories', 'brands', 'colors', 'sizes'));
    }

    public function update(Request $request, Product $product)
    {
        $this->validate($request,
        [
            'name'       => 'required|string|max:255',
            'categories' => 'required',
            'brand'      => 'required|integer',
            'price'      => 'required',
            'stock'      => 'required|integer',
            'description'=> 'nullable|string',
            'features'   => 'nullable|string',
            'image'      => 'nullable|mimes:jpeg,bmp,png',
            'image_two'  => 'nullable|mimes:jpeg,bmp,png',
            'image_three'=> 'nullable|mimes:jpeg,bmp,png',
            'image_four' => 'nullable|mimes:jpeg,bmp,png',
        ]);

        $slug = str_slug($request->name);

        if($request->hasFile('image')){
            $image = $request->file('image');
            $currentDate = Carbon::now()->toDateString();
            $imageName = $slug.'-'.$currentDate.'-'.uniqid().'.'.$image->getClientOriginalExtension();

            // Delete old image
            if (Storage::disk('public')->exists('products/'.$product->image))
            {
                Storage::disk('public')->delete('products/'.$product->image);
            }
            Image::make($image)->save(base_path('public/storage/products/'.$imageName));
        }else{
            $imageName = $product->image;
        }

        if($request->hasFile('image_two')){
            $imageTwo = $request->file('image_two');
            $slug = str_slug($request->name);
            $currentDate = Carbon::now()->toDateString();
            $imageNameTwo = $slug.'-'.$currentDate.'-'.uniqid().'.'.$imageTwo->getClientOriginalExtension();

            // Delete old image
            if (Storage::disk('public')->exists('products/'.$product->imageTwo))
            {
                Storage::disk('public')->delete('products/'.$product->imageTwo);
            }
            Image::make($imageTwo)->save(base_path('public/storage/products/'.$imageNameTwo));
        }else{
            $imageNameTwo = $product->image_two;
        }
        if($request->hasFile('image_three')){
            $imageThree = $request->file('image_three');
            $slug = str_slug($request->name);
            $currentDate = Carbon::now()->toDateString();
            $imageNameThree = $slug.'-'.$currentDate.'-'.uniqid().'.'.$imageThree->getClientOriginalExtension();

            // Delete old image
            if (Storage::disk('public')->exists('products/'.$product->imageThree))
            {
                Storage::disk('public')->delete('products/'.$product->imageThree);
            }
            Image::make($imageThree)->save(base_path('public/storage/products/'.$imageNameThree));
        }else{
            $imageNameThree = $product->image_three;
        }

        if($request->hasFile('image_four')){
            $imageFour = $request->file('image_four');
            $slug = str_slug($request->name);
            $currentDate = Carbon::now()->toDateString();
            $imageNameFour = $slug.'-'.$currentDate.'-'.uniqid().'.'.$imageFour->getClientOriginalExtension();

            // Delete old image
            if (Storage::disk('public')->exists('products/'.$product->imageFour))
            {
                Storage::disk('public')->delete('products/'.$product->imageFour);
            }
            Image::make($imageFour)->save(base_path('public/storage/products/'.$imageNameFour));
        }else{
            $imageNameFour = $product->image_four;
        }

        $product->name = $request->name;
        $product->brand_id = $request->brand;
        $product->price = $request->price;
        $product->discount = $request->discount;
        $product->stock = $request->stock;
        $product->description = $request->description;
        $product->features = $request->features;
        $product->image = $imageName;
        $product->image_two = $imageNameTwo;
        $product->image_three = $imageNameThree;
        $product->image_four = $imageNameFour;
        $product->slug = $slug;
        $product->status = (boolean)$request->status;

        $create = $product->save();

        $product->maincategories()->sync($request->maincategories);
        $product->categories()->sync($request->categories);
        $product->colors()->sync($request->colors);
        $product->sizes()->sync($request->sizes);
        $product->types()->sync($request->types);
        
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
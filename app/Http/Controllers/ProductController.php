<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Product;
use App\Brand;
use App\Maincategory;
use App\Category;

class ProductController extends Controller
{
    public function productByMaincategory($slug)
    {
        $maincategory= Maincategory::where('slug', $slug)->firstOrFail();
        $products = $maincategory->products()->with('brand', 'categories')->active()->instock()->latest()->paginate(6);
        return view('website.product.index', compact('products'));
    }
    public function productByCategory(Category $category)
    {
        $products = $category->products()->active()->instock()->latest()->paginate(6);
        return view('website.product.index', compact('products'));
    }
    public function productByBrand($slug)
    {
        $brand = Brand::where('slug', $slug)->firstOrFail();
        $products = $brand->products()->active()->instock()->latest()->paginate(6);
        return view('website.product.index', compact('products'));
    }
    public function productDetails(Product $product)
    {
        $brands = Brand::active()->latest()->inRandomOrder()->limit(10)->get();
        $relatedProducts = Brand::find($product->brand_id)->products()->active()->latest()->inRandomOrder()->limit(10)->get();
        return view('website.product.show', compact('product', 'brands', 'relatedProducts'));
    }
}

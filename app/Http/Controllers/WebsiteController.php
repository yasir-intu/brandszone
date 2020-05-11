<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Banner;
use App\Type;
use App\Brand;
use App\Category;
use App\About;
use App\privacy;

class WebsiteController extends Controller
{
    public function index()
    {
        
        
        $banners = Banner::active()->latest()->limit(3)->get();
        $brands = Brand::active()->latest()->limit(6)->get();
        $summerCollections = Type::find(1)->products()->active()->instock()->latest()->limit(10)->get();
        $newArivals = Type::find(4)->products()->active()->instock()->latest()->limit(10)->get();
        $featuredProducts = Type::find(3)->products()->active()->instock()->latest()->limit(7)->get();
        $trendyTshirts = Type::find(5)->products()->active()->instock()->latest()->limit(10)->get();
        $gadgetAccessories = Type::find(6)->products()->active()->instock()->latest()->limit(10)->get();
        $categories = Category::active()->latest()->limit(3)->get();
        return view('website.index', compact('banners', 'brands', 'summerCollections', 'newArivals', 'featuredProducts', 'trendyTshirts', 'gadgetAccessories', 'categories'));
    }
    public function about()
    {
        $about = About::first();
        return view('website.about', compact('about'));
    }
    public function errorPage()
    {
        return view('website.404');
    }
    
    public function privacy(){
        $privacy = privacy::first();
        return view('website.privacy', compact('privacy'));
    }
}

<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Product;

class SearchController extends Controller
{
    public function search(Request $request)
    {
        $query = $request->input('query');

        $products = Product::where('name', 'LIKE', "%$query%")->orWhere('price', 'LIKE', "%$query%")->orWhere('discount', 'LIKE', "%$query%")->orWhere('description', 'LIKE', "%$query%")->active()->instock()->latest()->paginate(6);
        return view('website.product.index', compact('products', 'query'));
    }
}
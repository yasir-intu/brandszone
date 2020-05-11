<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Product;

class SearchController extends Controller
{
    public function search(Request $request)
    {
    	$query = $request->input('query');

    	$products = Product::where('name', 'LIKE', "%$query%")->orWhere('code', 'LIKE', "%$query%")->orWhere('price', 'LIKE', "%$query%")->orWhere('discount', 'LIKE', "%$query%")->paginate(8);
    	return view('admin.product.index', compact('products', 'query'));
    }
}

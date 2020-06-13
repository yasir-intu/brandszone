<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Product;
use Carbon\Carbon;
use Illuminate\Support\Facades\Auth;

class InventoryController extends Controller
{
    public function total_stock(Request $request)
    {
        if ($request->date1 && $request->date2) {
            $from=date('Y-m-d', strtotime(str_replace("/","-", $request->date1)));
            /* important thing
             $from=date('Y-m-d', strtotime('-1 day', strtotime($date))); */
            $to=date('Y-m-d', strtotime(str_replace("/","-", $request->date2)));
            $date2=date('Y-m-d', strtotime('1 day', strtotime($to)));
        }elseif ($request->date1) {
            $from=date('Y-m-d', strtotime(str_replace("/","-", $request->date1)));
            $to=Carbon::now()->toDateString();
            $date2=Carbon::now()->addDay()->toDateString();
        }elseif ($request->date2) {
            $date=Null;
            $date2=Null;
            $from=Null;
            $to=date('Y-m-d', strtotime(str_replace("/","-", $request->date2)));
        } else {
            $date=Null;
            $date2=Null;
            $from=Null;
            $to=Carbon::now()->toDateString();
        }

        $products = Product::where('creator', Auth::user()->id)->where('status', '<', 2)->latest()->paginate(20);
        return view('admin.stock.index-total', compact('products', 'from', 'to', 'date2'));
    }
}

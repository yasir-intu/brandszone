<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Customer;
use Session;

class CustomerController extends Controller
{
    public function __construct()
    {
        $this->middleware('show')->only('show');
        $this->middleware('delete')->only('destroy');
    }

    public function index() 
    {
    	$customers = Customer::latest()->get();
    	return view('admin.customer.index', compact('customers'));
    }
    public function show(Customer $customer) 
    {
    	return view('admin.customer.show', compact('customer'));
    }
    public function destroy(Customer $customer) 
    {
    	$delete = $customer->delete();
        if($delete){
            Session::flash('success', 'Customer successfully deleted');
            return redirect()->back();
        }else{
            Session::flash('error', 'Customer deleting failed');
            return redirect()->back();
        }
    }
}

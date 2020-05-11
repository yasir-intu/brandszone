<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Customer;
use Session;

class RecycleCustomerController extends Controller
{
    public function __construct()
    {
        $this->middleware('superadmin');
        $this->middleware('show')->only('show');
        $this->middleware('delete')->only('destroy');
    }
    public function index()
    {
        $customers = Customer::onlyTrashed()->latest()->get();
        return view('admin.recycle.customer.index', compact('customers'));
    }
    public function show($id)
    {
        $customer = Customer::onlyTrashed()->findOrFail($id);
        return view('admin.recycle.customer.show', compact('customer'));
    }
    public function update($id)
    {
        $customer = Customer::onlyTrashed()->findOrFail($id);
        $restore = $customer->restore();
        if($restore){
            Session::flash('success', 'Customer Successfully restored');
            return redirect()->back();
        }else{
            Session::flash('error', 'Customer restoring failed');
            return redirect()->back();
        }
    }
    public function destroy($id)
    {	
        $customer = Customer::onlyTrashed()->findOrFail($id);
        $delete = $customer->forceDelete();
        if($delete){
            Session::flash('success', 'Customer Successfully deleted');
            return redirect()->back();
        }else{
            Session::flash('error', 'Customer deleting failed');
            return redirect()->back();
        }
    }
}

<?php

namespace App\Http\Controllers\Admin;

use App\Account;
use App\AccountHead;
use App\Employee;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Vendor;
use Carbon\Carbon;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;

class AccountsHeadController extends Controller
{
    public function __construct(){
        $this->middleware('auth');
        $this->middleware('supplier');
    }

    public function index(){
        $account_heads=AccountHead::where('user_id', Auth::user()->id)->get();
        $vendors=Vendor::where("user_id", Auth::user()->id)->where("status", 1)->get();
        $employees=Employee::where('user_id', Auth::user()->id)->where('status', 1)->get();
        return view('admin.account head.index', compact('account_heads', 'vendors', 'employees'));
    }

    public function create(){
        return view('admin.account head.create');
    }

    public function add(Request $request){
        $this->validate($request,
        [
            'name'=>'required|string|max:191',
        ],[
            'name.required'=>'Please Enter Name',
            'name.string'=>'This Should be String',
            'name.max'=>'Name Should Contain Max 191 Character',
        ]);
        
        $slug='ACH_'.uniqid(2019);

        $insert= AccountHead::insertGetId([
            'user_id'   =>  Auth::user()->id,
            'name'   =>  $request->name,
            'slug'    =>  $slug,
            'created_at'    =>  Carbon::now()->toDateTimeString()
        ]);
        

        if($insert){
            Session::flash('success', 'Bank Added Successfully');
            return redirect()->back();
        }else{
            Session::flash('error', 'Bank Added failed');
            return redirect()->back();
        }
    }

    public function edit($id){
        $department= AccountHead::where('slug', $id)->where('user_id', Auth::user()->id)->firstOrFail();
        return view('admin.account head.edit', compact('department'));
    }

    public function update(Request $request, $id){
        $this->validate($request,
        [
            'name'=>'required|string|max:191',
        ],[
            'name.required'=>'Please Enter First Name',
            'name.string'=>'This Should be String',
            'name.max'=>'Name Should Contain Max 191 Character',
        ]);
        

        $insert= AccountHead::where('slug', $id)->where('user_id', Auth::user()->id)->update([
            'name'=>$request->name,
            'updated_at'    =>  Carbon::now()->toDateTimeString()
        ]);

        if($insert){
            Session::flash('success', 'Bank Added Successfully');
            return redirect()->back();
        }else{
            Session::flash('error', 'Bank Added failed');
            return redirect()->back();
        }
    }

    public function delete($id){
        $delete = AccountHead::where('slug', $id)->where('user_id', Auth::user()->id)->delete();
        if($delete){
            Session::flash('success', 'Product Successfully deleted');
            return redirect()->back();
        }else{
            Session::flash('error', 'Product deleting failed');
            return redirect()->back();
        }
    }
    public function account(Request $request, $slug1){
        $this->validate($request,
        [
            'account'=>'required',
        ],[
            'account.required'=>'Please Select Type',
        ]);
        $slug='ACH_'.uniqid(2019);

        if ($request->account == 1) {
            $account= $request->vendor;
        }

        if ($request->account == 2) {
            $account= $request->employee;
        }
        $head = AccountHead::where('slug', $slug1)->where('user_id', Auth::user()->id)->first();
        $insert= Account::insert([
            'user_id'   =>  Auth::user()->id,
            'head_id'   =>  $head->id,
            'account'   =>  $request->account,
            'account_id'   =>  $account,
            'slug'    =>  $slug,
            'created_at'    =>  Carbon::now()->toDateTimeString()
        ]);

        if($insert){
            Session::flash('success', 'Account Added Successfully');
            return redirect()->back();
        }else{
            Session::flash('error', 'Account Added failed');
            return redirect()->back();
        }
    }
}

<?php

namespace App\Http\Controllers\Admin;

use App\Bank;
use App\Bank_branch;
use App\Bank_Details;
use App\Country;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Carbon\Carbon;
use Session;
use Illuminate\Support\Facades\Auth;

class BankController extends Controller{
    
    public function __construct(){
        $this->middleware('auth');
    }

    public function index(){
        return view('admin.bank.index');
    }

    public function create(){
        $banks=Bank::all();
        $branchs=Bank_branch::all();
        $countries=Country::all();
        return view('admin.bank.create', compact('banks', 'branchs', 'countries'));
    }

    public function add(Request $request){
        $this->validate($request,
        [
            'name'       => 'required|string',
            'acc_num'      => 'required|integer',
            'bank' => 'required',
            'branch' => 'required',
            'country' => 'required',
            'code'      => 'required',
        ],[
            'name.require' => 'Please Enter A Account Name',
            'acc_num.require' => 'Please Enter The Account Number',
            'acc_num.integer' => 'Account Number Should be Number',
            'bank.require' => 'Please Enter The Bank',
            'branch.require' => 'Please Enter The Branch',
            'country.require' => 'Please Enter The Country',
            'code.require' => 'Please Enter The Swift Code of The Bank',
        ]);

        if (gettype($request->bank)==="string") {
            $banks=Bank::insertGetId([
                'name'  => $request->bank,
                'create_at' =>  Carbon::now()->toDateTimeString(),
            ]);
        } elseif (gettype($request->bank)==="integer") {
            $banks=$request->bank;
        } else{

            $this->validate($request,
            [
                'bank' => 'string',
            ],[
                'bank.require' => 'Bank Should be in String',
            ]);
        }

        if (gettype($request->branch)==="string") {
            $branchs=Bank_branch::insertGetId([
                'name'  => $request->branch,
                'create_at' =>  Carbon::now()->toDateTimeString(),
            ]);
        } elseif (gettype($request->branch)==="integer") {
            $branchs=$request->branch;
        } else{

            $this->validate($request,
            [
                'branch' => 'string',
            ],[
                'branch.require' => 'branch Should be in String',
            ]);
        }

        if (gettype($request->country)==="string") {
            $countries=Country::insertGetId([
                'name'  => $request->country,
                'create_at' =>  Carbon::now()->toDateTimeString(),
            ]);
        } elseif (gettype($request->country)==="integer") {
            $countries=$request->country;
        } else{

            $this->validate($request,
            [
                'country' => 'string',
            ],[
                'country.require' => 'country Should be in String',
            ]);
        }
        

        $remarks=$request->Remarks;

        $insert= Bank_Details::insert([
            'user_id'   =>  Auth::user()->id,
            'country_id'    =>  $countries,
            'bank_id'   =>  $banks,
            'branch_id' =>  $branchs,
            'account_name'  =>  $request->name,
            'account_number'    =>  $request->acc_num,
            'swift_code'    =>  $request->code,
            'remark'    =>  $remarks,
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

    public function show(){
        //return view('admin.bank.create');
    }

}

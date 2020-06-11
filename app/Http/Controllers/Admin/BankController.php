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
        $banks=Bank_Details::where('user_id', Auth::user()->id)->get();
        return view('admin.bank.index', compact('banks'));
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
            'name'      => 'required',
            'acc_num'      => 'required|string|min:13',
            'bank' => 'required',
            'branch' => 'required',
            'country' => 'required',
            'code'      => 'required',
        ],[
            'name.required' => 'Please Enter A Account Name',
            'acc_num.required' => 'Please Enter The Account Number',
            'acc_num.min' => 'Account Number Should be Minimun 13 Character',
            'bank.required' => 'Please Enter The Bank',
            'branch.required' => 'Please Enter The Branch',
            'country.required' => 'Please Enter The Country',
            'code.required' => 'Please Enter The Swift Code of The Bank',
        ]);

        $a1=preg_match ("/^[0-9]+$/", $request->bank);
        $a2=preg_match ("/^[a-zA-Z\s]+$/", $request->bank);
        $b1=preg_match ("/^[0-9]+$/", $request->branch);
        $b2=preg_match ("/^[a-zA-Z\s]+$/", $request->branch);
        $c1=preg_match ("/^[0-9]+$/", $request->country);
        $c2=preg_match ("/^[a-zA-Z\s]+$/", $request->country);

        if ($a2===1 && $a1===0) {
            $banks=Bank::insertGetId([
                'name'  => ucwords(strtolower($request->bank)),
                'created_at' =>  Carbon::now()->toDateTimeString(),
            ]);
        } elseif ($a1===1 && $a2===0) {
            $banks=$request->bank;
        } else{

            $this->validate($request,
            [
                'bank' => 'string',
            ],[
                'bank.required' => 'Bank Should be in String',
            ]);
        }

        if ($b2===1 && $b1===0) {
            $branchs=Bank_branch::insertGetId([
                'name'  => ucwords(strtolower($request->branch)),
                'created_at' =>  Carbon::now()->toDateTimeString(),
            ]);
        } elseif ($b1===1 && $b2===0) {
            $branchs=$request->branch;
        } else{

            $this->validate($request,
            [
                'branch' => 'string',
            ],[
                'branch.required' => 'branch Should be in String',
            ]);
        }

        if ($c2===1 && $c1===0) {
            $countries=Country::insertGetId([
                'name'  => ucwords(strtolower($request->country)),
                'created_at' =>  Carbon::now()->toDateTimeString(),
            ]);
        } elseif ($c1===1 && $c2===0) {
            $countries=$request->country;
        } else{

            $this->validate($request,
            [
                'country' => 'string',
            ],[
                'country.required' => 'country Should be in String',
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

    public function show($id){
        $banks=Bank_Details::where('user_id', Auth::user()->id)->where('id', $id)->firstOrfail();
        return view('admin.bank.show', compact('banks'));
    }

    public function edit($id){
        $bankss=Bank_Details::where('user_id', Auth::user()->id)->where('id', $id)->firstOrfail();
        $banks=Bank::all();
        $branchs=Bank_branch::all();
        $countries=Country::all();
        return view('admin.bank.edit', compact('bankss', 'banks', 'branchs', 'countries'));
    }

    public function update(Request $request, $id){
        $this->validate($request,
        [
            'name'       => 'required|string',
            'acc_num'      => 'required|string|min:13',
            'bank' => 'required',
            'branch' => 'required',
            'country' => 'required',
            'code'      => 'required',
        ],[
            'name.required' => 'Please Enter A Account Name',
            'acc_num.required' => 'Please Enter The Account Number',
            'acc_num.min' => 'Account Number Should be Minimun 13 Character',
            'bank.required' => 'Please Enter The Bank',
            'branch.required' => 'Please Enter The Branch',
            'country.required' => 'Please Enter The Country',
            'code.required' => 'Please Enter The Swift Code of The Bank',
        ]);
        
        
        $a1=preg_match ("/^[0-9]+$/", $request->bank);
        $a2=preg_match ("/^[a-zA-Z\s]+$/", $request->bank);
        $b1=preg_match ("/^[0-9]+$/", $request->branch);
        $b2=preg_match ("/^[a-zA-Z\s]+$/", $request->branch);
        $c1=preg_match ("/^[0-9]+$/", $request->country);
        $c2=preg_match ("/^[a-zA-Z\s]+$/", $request->country);

        if ($a2===1 && $a1===0) {
            $banks=Bank::insertGetId([
                'name'  => ucwords(strtolower($request->bank)),
                'created_at' =>  Carbon::now()->toDateTimeString(),
            ]);
        } elseif ($a1===1 && $a2===0) {
            $banks=$request->bank;
        } else{

            $this->validate($request,
            [
                'bank' => 'string',
            ],[
                'bank.required' => 'Bank Should be in String',
            ]);
        }

        if ($b2===1 && $b1===0) {
            $branchs=Bank_branch::insertGetId([
                'name'  => ucwords(strtolower($request->branch)),
                'created_at' =>  Carbon::now()->toDateTimeString(),
            ]);
        } elseif ($b1===1 && $b2===0) {
            $branchs=$request->branch;
        } else{

            $this->validate($request,
            [
                'branch' => 'string',
            ],[
                'branch.required' => 'branch Should be in String',
            ]);
        }

        if ($c2===1 && $c1===0) {
            $countries=Country::insertGetId([
                'name'  => ucwords(strtolower($request->country)),
                'created_at' =>  Carbon::now()->toDateTimeString(),
            ]);
        } elseif ($c1===1 && $c2===0) {
            $countries=$request->country;
        } else{

            $this->validate($request,
            [
                'country' => 'string',
            ],[
                'country.required' => 'country Should be in String',
            ]);
        }
        

        $remarks=$request->Remarks;

        $insert= Bank_Details::where('id', $id)->where('user_id', Auth::user()->id)->update([
            'country_id'    =>  $countries,
            'bank_id'   =>  $banks,
            'branch_id' =>  $branchs,
            'account_name'  =>  $request->name,
            'account_number'    =>  $request->acc_num,
            'swift_code'    =>  $request->code,
            'remark'    =>  $remarks,
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

    public function delete($id)
    {
        $delete = Bank_Details::where('id', $id)->where('user_id', Auth::user()->id)->delete();
        if($delete){
            Session::flash('success', 'Product Successfully deleted');
            return redirect()->back();
        }else{
            Session::flash('error', 'Product deleting failed');
            return redirect()->back();
        }
    }

}

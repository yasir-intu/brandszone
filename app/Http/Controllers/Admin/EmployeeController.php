<?php

namespace App\Http\Controllers\Admin;

use App\Bank;
use App\Bank_branch;
use App\Country;
use App\Department;
use App\Designation;
use App\Employee;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Carbon\Carbon;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;

class EmployeeController extends Controller
{
    public function __construct(){
        $this->middleware('auth');
        $this->middleware('supplier');
    }

    public function serialId(){
        $code= Employee::where('user_id', Auth::user()->id)->latest()->value('employee_id');
        if ($code) {
            $id=str_replace("0","",str_replace("BZ_","",$code))+1;
            if(strlen($id)<=6){
                $zero=6-strlen($id);
            }else{
                $zero=0;
            }
            $ids = 'BZ_'.str_repeat("0", $zero).($id);
        }else{
            $zero=5;
            $ids = 'BZ_'.str_repeat("0", $zero).'1';
        }
        return $ids;
    }

    public function index(){
        $employees=Employee::where('user_id', Auth::user()->id)->where('status', 1)->get();
        return view('admin.employee.index', compact('employees'));
    }

    public function create(){
        $banks=Bank::all();
        $branchs=Bank_branch::all();
        $countries=Country::all();
        $departments=Department::where('user_id', Auth::user()->id)->get();
        $designations=Designation::where('user_id', Auth::user()->id)->get();
        return view('admin.employee.create', compact('banks', 'branchs', 'countries', 'departments', 'designations'));
    }

    public function add(Request $request){
        $this->validate($request,
        [
            'first_name'=>'required|string|max:191',
            'last_name'=>'required|string|max:191',
            'father_name'=>'nullable|string|max:191',
            'mother_name'=>'nullable|string|max:191',
            'present_address'=>'required|string',
            'permanent_address'=>'nullable|string',
            'date_of_birth'=>'nullable|date_format:d/m/Y',
            'designation'=>'required|numeric',
            'contact_no'=>'required|numeric|digits_between:0,15',
            'emergency_contact_no'=>'nullable|numeric|digits_between:0,15',
            'department'=>'required|numeric',
            'joining_date'=>'required|date_format:d/m/Y',
            'salary'=>'required|numeric|digits_between:0,191',
            'name'       => 'nullable|string',
            'acc_num'      => 'nullable|string|min:13',
        ],[
            'first_name.required'=>'Please Enter First Name',
            'first_name.string'=>'This Should be String',
            'first_name.max'=>'Name Should Contain Max 191 Character',
            'last_name.required'=>'Please Enter Last Name',
            'last_name.string'=>'This Should be String',
            'last_name.max'=>'Name Should Contain Max 191 Character',
            'father_name.string'=>'This Should be String',
            'father_name.max'=>'Name Should Contain Max 191 Character',
            'mother_name.string'=>'This Should be String',
            'mother_name.max'=>'Name Should Contain Max 191 Character',
            'present_address.required'=>'Please Enter Present Address',
            'present_address.string'=>'This Should be String',
            'permanent_address.string'=>'This Should be String',
            'date_of_birth.date_format' => 'Date Formate Should be Like This D/M/Y',
            'designation.required'=>'Please Enter The Designation',
            'designation.numeric'=>'Enter Designtion From Existing',
            'contact_no.required'=>'Please Enter Contact Number',
            'contact_no.numeric'=>'This Should Contain Number',
            'contact_no.digits_between'=>'Contact Number max contain 15 digit',
            'emergency_contact_no.required'=>'Please Enter Contact Number',
            'emergency_contact_no.numeric'=>'This Should Contain Number',
            'emergency_contact_no.digits_between'=>'Contact Number max contain 15 digit',
            'department.required'=>'Please Enter the Department',
            'department.numeric'=>'Enter Department Form Existing',
            'joining_date.required' => 'Please Enter the Joining dDte',
            'joining_date.date_format' => 'Date Formate Should be Like This D/M/Y',
            'salary.required'=>'Please Enter the Salary Amount',
            'salary.numeric'=>'Amount Should be in Number',
            'salary.digits_between'=>'Salary max contain 191 digit',
            'acc_num.min' => 'Account Number Should be Minimun 13 Character',
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
                'bank.require' => 'Bank Should be in String',
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
                'branch.require' => 'branch Should be in String',
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
                'country.require' => 'country Should be in String',
            ]);
        }
        
        $slug='EMP_'.uniqid(2019);

        $remarks=$request->Remarks;

        $insert= Employee::insert([
            'user_id'   =>  Auth::user()->id,
            'employee_id'   =>  $this->serialId(),
            'first_name'=>$request->first_name,
            'last_name'=>$request->last_name,
            'father_name'=>$request->father_name,
            'mother_name'=>$request->mother_name,
            'present_address'=>$request->present_address,
            'permanent_address'=>$request->permanent_address,
            'date_of_birth'=>$request->date_of_birth,
            'designation'=>$request->designation,
            'contact_no'=>$request->contact_no,
            'emergency_contact_no'=>$request->emergency_contact_no,
            'department'=>$request->department,
            'joining_date'=>$request->joining_date,
            'salary'=>$request->salary,
            'country_id'    =>  $countries,
            'bank_id'   =>  $banks,
            'branch_id' =>  $branchs,
            'account_name'  =>  $request->name,
            'account_number'    =>  $request->acc_num,
            'swift_code'    =>  $request->code,
            'remark'    =>  $remarks,
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

    public function show($id){
        $employee=Employee::where('user_id', Auth::user()->id)->where('slug', $id)->where('status', 1)->firstOrfail();
        return view('admin.employee.show', compact('employee'));
    }

    public function edit($id){
        $employee=Employee::where('user_id', Auth::user()->id)->where('slug', $id)->where('status', 1)->firstOrfail();
        $banks=Bank::all();
        $branchs=Bank_branch::all();
        $countries=Country::all();
        $departments=Department::where('user_id', Auth::user()->id)->get();
        $designations=Designation::where('user_id', Auth::user()->id)->get();
        return view('admin.employee.edit', compact('employee', 'banks', 'branchs', 'countries', 'departments', 'designations'));
    }

    public function update(Request $request, $id){
        $this->validate($request,
        [
            'first_name'=>'required|string|max:191',
            'last_name'=>'required|string|max:191',
            'father_name'=>'nullable|string|max:191',
            'mother_name'=>'nullable|string|max:191',
            'present_address'=>'required|string',
            'permanent_address'=>'nullable|string',
            'date_of_birth'=>'nullable|date_format:d/m/Y',
            'designation'=>'required|numeric',
            'contact_no'=>'required|numeric|digits_between:0,15',
            'emergency_contact_no'=>'nullable|numeric|digits_between:0,15',
            'department'=>'required|numeric',
            'joining_date'=>'required|date_format:d/m/Y',
            'salary'=>'required|numeric|digits_between:0,191',
            'name'       => 'nullable|string',
            'acc_num'      => 'nullable|string|min:13',
        ],[
            'first_name.required'=>'Please Enter First Name',
            'first_name.string'=>'This Should be String',
            'first_name.max'=>'Name Should Contain Max 191 Character',
            'last_name.required'=>'Please Enter Last Name',
            'last_name.string'=>'This Should be String',
            'last_name.max'=>'Name Should Contain Max 191 Character',
            'father_name.string'=>'This Should be String',
            'father_name.max'=>'Name Should Contain Max 191 Character',
            'mother_name.string'=>'This Should be String',
            'mother_name.max'=>'Name Should Contain Max 191 Character',
            'present_address.required'=>'Please Enter Present Address',
            'present_address.string'=>'This Should be String',
            'permanent_address.string'=>'This Should be String',
            'date_of_birth.date_format' => 'Date Formate Should be Like This D/M/Y',
            'designation.required'=>'Please Enter The Designation',
            'designation.numeric'=>'Enter Designtion From Existing',
            'contact_no.required'=>'Please Enter Contact Number',
            'contact_no.numeric'=>'This Should Contain Number',
            'contact_no.digits_between'=>'Contact Number max contain 15 digit',
            'emergency_contact_no.required'=>'Please Enter Contact Number',
            'emergency_contact_no.numeric'=>'This Should Contain Number',
            'emergency_contact_no.digits_between'=>'Contact Number max contain 15 digit',
            'department.required'=>'Please Enter the Department',
            'department.numeric'=>'Enter Department Form Existing',
            'joining_date.required' => 'Please Enter the Joining dDte',
            'joining_date.date_format' => 'Date Formate Should be Like This D/M/Y',
            'salary.required'=>'Please Enter the Salary Amount',
            'salary.numeric'=>'Amount Should be in Number',
            'salary.digits_between'=>'Salary max contain 191 digit',
            'acc_num.min' => 'Account Number Should be Minimun 13 Character',
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
                'bank.require' => 'Bank Should be in String',
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
                'branch.require' => 'branch Should be in String',
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
                'country.require' => 'country Should be in String',
            ]);
        }
        

        $remarks=$request->Remarks;

        $insert= Employee::where('slug', $id)->where('user_id', Auth::user()->id)->where('status', 1)->update([
            'first_name'=>$request->first_name,
            'last_name'=>$request->last_name,
            'father_name'=>$request->father_name,
            'mother_name'=>$request->mother_name,
            'present_address'=>$request->present_address,
            'permanent_address'=>$request->permanent_address,
            'date_of_birth'=>$request->date_of_birth,
            'designation'=>$request->designation,
            'contact_no'=>$request->contact_no,
            'emergency_contact_no'=>$request->emergency_contact_no,
            'department'=>$request->department,
            'joining_date'=>$request->joining_date,
            'salary'=>$request->salary,
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

    public function delete($id){
        $delete = Employee::where('slug', $id)->where('user_id', Auth::user()->id)->where('status', 1)->update([
            'status' => '0',
        ]);
        if($delete){
            Session::flash('success', 'Product Successfully deleted');
            return redirect()->back();
        }else{
            Session::flash('error', 'Product deleting failed');
            return redirect()->back();
        }
    }
}

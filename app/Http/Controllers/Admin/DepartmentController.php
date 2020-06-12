<?php

namespace App\Http\Controllers\Admin;

use App\Department;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Carbon\Carbon;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;

class DepartmentController extends Controller
{
    public function __construct(){
        $this->middleware('auth');
        $this->middleware('supplier');
    }

    public function index(){
        $departments=Department::where('user_id', Auth::user()->id)->get();
        return view('admin.department.index', compact('departments'));
    }

    public function create(){
        return view('admin.department.create');
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
        
        $slug='DEP_'.uniqid(2019);

        $insert= Department::insertGetId([
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
        $department= Department::where('slug', $id)->where('user_id', Auth::user()->id)->firstOrFail();
        return view('admin.department.edit', compact('department'));
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
        

        $insert= Department::where('slug', $id)->where('user_id', Auth::user()->id)->update([
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
        $delete = Department::where('slug', $id)->where('user_id', Auth::user()->id)->delete();
        if($delete){
            Session::flash('success', 'Product Successfully deleted');
            return redirect()->back();
        }else{
            Session::flash('error', 'Product deleting failed');
            return redirect()->back();
        }
    }
}

<?php

namespace App\Http\Controllers\Admin;

use App\Designation;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Carbon\Carbon;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;

class DesignationController extends Controller
{
    public function __construct(){
        $this->middleware('auth');
        $this->middleware('supplier');
    }

    public function index(){
        $designations=Designation::where('user_id', Auth::user()->id)->get();
        return view('admin.designation.index', compact('designations'));
    }

    public function create(){
        return view('admin.designation.create');
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

        $insert= Designation::insertGetId([
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
        $designation= Designation::where('slug', $id)->where('user_id', Auth::user()->id)->firstOrFail();
        return view('admin.designation.edit', compact('designation'));
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
        

        $insert= Designation::where('slug', $id)->where('user_id', Auth::user()->id)->update([
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
        $delete = Designation::where('slug', $id)->where('user_id', Auth::user()->id)->delete();
        if($delete){
            Session::flash('success', 'Product Successfully deleted');
            return redirect()->back();
        }else{
            Session::flash('error', 'Product deleting failed');
            return redirect()->back();
        }
    }
}

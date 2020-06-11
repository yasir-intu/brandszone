<?php

namespace App\Http\Controllers\Admin;

use App\Maincategory;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Session;
class MaincategoryController extends Controller
{
    public function __construct()
    {
        $this->middleware('create')->only('create');
        $this->middleware('edit')->only('edit');
        $this->middleware('show')->only('show');
        $this->middleware('delete')->only('destroy');
    }

    public function index()
    {
        $maincategories = Maincategory::latest()->with('subcategories', 'Categories')->get();
        return view('admin.maincategory.index', compact('maincategories'));
    }

    public function create()
    {
        return view('admin.maincategory.create');
    }

    public function store(Request $request)
    {
        $this->validate($request,
        [
            'name' => 'required|string|max:60|unique:maincategories',
        ]);

        $maincategory = new Maincategory();
        $maincategory->name = ucwords($request->name);
        $maincategory->slug = str_slug($request->name);
        $maincategory->status = (boolean)$request->status;
        $create = $maincategory->save();
        
        if($create){
            Session::flash('success', 'Category Successfully created');
            return redirect()->back();
        }else{
            Session::flash('error', 'Category creating failed');
            return redirect()->back();
        }
    }

    public function edit(Maincategory $maincategory)
    {
        return view('admin.maincategory.edit', compact('maincategory'));
    }

    public function update(Request $request, Maincategory $maincategory)
    {
        $this->validate($request,
        [
            'name' => 'required|string|max:60|unique:maincategories,name,'.$maincategory->id,
        ]);
            
        $maincategory->name = $request->name;
        $maincategory->slug = str_slug($request->name);
        $maincategory->status = (boolean)$request->status;
        $update = $maincategory->save();

        if($update){
            Session::flash('success', 'Category Successfully updated');
            return redirect()->back();
        }else{
            Session::flash('error', 'Category updating failed');
            return redirect()->back();
        }
    }

    public function destroy(Maincategory $maincategory)
    {
        if($maincategory->subcategories->count() == 0){
            $delete = $maincategory->delete();
            if($delete){
                Session::flash('success', 'Category Successfully deleted');
                return redirect()->back();
            }else{
                Session::flash('error', 'Category deleting failed');
                return redirect()->back();
            }
        }else{
            Session::flash('error', 'Ops! You can not delete');
            return redirect()->back();
        }
    }
}

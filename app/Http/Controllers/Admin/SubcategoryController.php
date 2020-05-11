<?php

namespace App\Http\Controllers\Admin;

use App\Maincategory;
use App\Subcategory;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Session;

class SubcategoryController extends Controller
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
        $subcategories = Subcategory::latest()->with('maincategory', 'categories')->get();
        return view('admin.subcategory.index', compact('subcategories'));
    }

    public function create()
    {
        $maincategories = Maincategory::active()->get();
        return view('admin.subcategory.create', compact('maincategories'));
    }

    public function store(Request $request)
    {
        $this->validate($request,
        [
            'name' => 'required|string|max:60',
            'maincategory' => 'required|integer',
        ]);

        $subcategory = new Subcategory();
        $subcategory->name = $request->name;
        $subcategory->slug = str_slug($request->name);
        $subcategory->status = (boolean)$request->status;
        $subcategory->maincategory_id = $request->maincategory;
        $create = $subcategory->save();
        
        if($create){
            Session::flash('success', 'Subcategory Successfully created');
            return redirect()->back();
        }else{
            Session::flash('error', 'Subcategory creating failed');
            return redirect()->back();
        }
    }

    public function edit(Subcategory $subcategory)
    {
        $maincategories = Maincategory::active()->get();
        return view('admin.subcategory.edit', compact('maincategories', 'subcategory'));
    }

    public function update(Request $request, SubCategory $subcategory)
    {
        $this->validate($request,
        [
            'name' => 'required|string|max:60',
        ]);
            
        $subcategory->name = $request->name;
        $subcategory->slug = str_slug($request->name);
        $subcategory->status = (boolean)$request->status;
        $subcategory->maincategory_id = $request->maincategory;
        $update = $subcategory->save();

        if($update){
            Session::flash('success', 'Subcategory Successfully updated');
            return redirect()->back();
        }else{
            Session::flash('error', 'Subcategory updating failed');
            return redirect()->back();
        }
    }

    public function destroy(Subcategory $subcategory)
    {
        if($subcategory->categories->count() == 0){
            $delete = $subcategory->delete();
            if($delete){
                Session::flash('success', 'Subcategory Successfully deleted');
                return redirect()->back();
            }else{
                Session::flash('error', 'Subcategory deleting failed');
                return redirect()->back();
            }
        }else{
            Session::flash('error', 'Ops! You can not delete');
            return redirect()->back();
        }
    }
}

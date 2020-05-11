<?php

namespace App\Http\Controllers\Admin;

use App\Category;
use App\Subcategory;
use App\Maincategory;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Session;

class CategoryController extends Controller
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
        $categories = Category::latest()->with('subcategory', 'products')->get();
        return view('admin.category.index', compact('categories'));
    }

    public function create()
    {
        $maincategories = Maincategory::active()->get();
        return view('admin.category.create', compact('maincategories'));
    }

    public function store(Request $request)
    {
        $this->validate($request,
        [
            'name' => 'required|string|max:60',
            'subcategory' => 'required|integer',
        ]);

        $category = new Category();
        $category->name = $request->name;
        $category->slug = str_slug($request->name);
        $category->status = (boolean)$request->status;
        $category->subcategory_id = $request->subcategory;
        $create = $category->save();
        
        if($create){
            Session::flash('success', 'Category Successfully created');
            return redirect()->back();
        }else{
            Session::flash('error', 'Category creating failed');
            return redirect()->back();
        }
    }

    public function edit(Category $category)
    {
        $maincategories = Maincategory::active()->get();
        $subcategories = Subcategory::active()->get();
        return view('admin.category.edit', compact('maincategories', 'subcategories', 'category'));
    }

    public function update(Request $request, Category $category)
    {
        $this->validate($request,
        [
            'name' => 'required|string|max:60',
        ]);
            
        $category->name = $request->name;
        $category->slug = str_slug($request->name);
        $category->status = (boolean)$request->status;
        $category->subcategory_id = $request->subcategory;
        $update = $category->save();

        if($update){
            Session::flash('success', 'Category Successfully updated');
            return redirect()->back();
        }else{
            Session::flash('error', 'Category updating failed');
            return redirect()->back();
        }
    }

    public function destroy(Category $category)
    {
        if($category->products->count() == 0){
            $delete = $category->delete();
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

    public function subcategory($id)
    {
        $subcategories = Subcategory::where('maincategory_id', $id)->get();
        return view('admin.category.subcategory', compact('subcategories'));
    }
}

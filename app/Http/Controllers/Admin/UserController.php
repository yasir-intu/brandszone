<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Hash;
use Auth;
use App\Role;
use App\User;
use Session;
use Carbon\Carbon;
use Storage;
use Image;

class UserController extends Controller
{
    public function __construct()
    {
        $this->middleware('superadmin')->only('permission', 'create');
        $this->middleware('create')->only('create');
        $this->middleware('edit')->only('edit');
        $this->middleware('show')->only('show');
        $this->middleware('delete')->only('destroy');
    }
    public function index()
    {
        $users = User::latest()->with('role')->get();
        return view('admin.user.index', compact('users'));
    }

    public function create()
    {
        $roles = Role::active()->get();
        return view('admin.user.create', compact('roles'));
    }

    public function store(Request $request)
    {
        $this->validate($request,
		[
			'name'    => 'required|string|max:60',
            'email'   => 'required|string|email|max:60|unique:users',
            'phone'   => 'required|string|max:30',
            'password'=> 'required|string|min:6|confirmed',
            'role'    => 'required|integer',
            'image'   => 'required|mimes:jpeg,bmp,png',

        ]);

        if($request->hasFile('image')){
            $image = $request->file('image');
            $slug = str_slug($request->name);
            $currentDate = Carbon::now()->toDateString();
            $imageName = $slug.'-'.$currentDate.'-'.uniqid().'.'.$image->getClientOriginalExtension();

            if (!Storage::disk('public')->exists('users'))
            {
                Storage::disk('public')->makeDirectory('users');
            }
            Image::make($image)->resize(600,600)->save(base_path('public/storage/users/'.$imageName));
        }

        $user = new User();
        $user->name = $request->name;
        $user->email = $request->email;
        $user->phone = $request->phone;
        $user->password = Hash::make($request->password);
        $user->image = $imageName;
        $user->role_id = $request->role;
        $user->can_create = (boolean)$request->can_create;
        $user->can_edit = (boolean)$request->can_edit;
        $user->can_view = (boolean)$request->can_view;
        $user->can_delete = (boolean)$request->can_delete;
        $create = $user->save();
        
        if($create){
			Session::flash('success', 'User Successfully created');
			return redirect()->back();
		}else{
			Session::flash('error', 'User creating failed');
			return redirect()->back();
		}
    }

    public function show(User $user)
    {
        $roles = Role::active()->get();
        return view('admin.user.show', compact('user', 'roles'));
    }

    public function edit(User $user)
    {
        $roles = Role::active()->get();
        return view('admin.user.edit', compact('user', 'roles'));
    }

    public function update(Request $request, User $user)
    {
        $this->validate($request,
		[
			'name'    => 'required|string|max:60',
            'phone'   => 'required|string|max:30',
            'image'   => 'mimes:jpeg,bmp,png',
            'old_password'=> 'required|string|min:6',

        ]);

        if(Hash::check($request->old_password,$user->password)){
            
            if($request->password){
                $this->validate($request,
                [
                    'password'=> 'required|string|min:6|confirmed'
                ]);
                $password = Hash::make($request->password);
            }else{
                $password = $user->password;
            }

            if($request->hasFile('image')){
                $slug = str_slug($request->name);
                $image = $request->file('image');
                $currentDate = Carbon::now()->toDateString();
                $imageName = $slug.'-'.$currentDate.'-'.uniqid().'.'.$image->getClientOriginalExtension();

                // Delete old image
                if (Storage::disk('public')->exists('users/'.$user->image))
                {
                    Storage::disk('public')->delete('users/'.$user->image);
                }

                if (!Storage::disk('public')->exists('users'))
                {
                    Storage::disk('public')->makeDirectory('users');
                }

                Image::make($image)->resize(600,600)->save(base_path('public/storage/users/'.$imageName));
            }else{
                $imageName = $user->image;
            }

            $user->name = $request->name;
            $user->phone = $request->phone;
            $user->password = $password;
            $user->image = $imageName;
            $update = $user->save();

            if($update){
                Session::flash('success', 'User Successfully updated');
                return redirect()->back();
            }else{
                Session::flash('error', 'User updating failed');
                return redirect()->back();
            }
        }else{
            Session::flash('error', 'Password did not match');
            return redirect()->back();
        }
    }

    public function permission(User $user)
    {
        $roles = Role::active()->get();
        return view('admin.user.permission', compact('user', 'roles'));
    }

    public function permissionUpdate(Request $request, User $user)
    {
        $user->role_id = $request->role;
        $user->can_create = (boolean)$request->can_create;
        $user->can_edit = (boolean)$request->can_edit;
        $user->can_view = (boolean)$request->can_view;
        $user->can_delete = (boolean)$request->can_delete;
        $update = $user->save();

        if($update){
            Session::flash('success', 'User Successfully updated');
            return redirect()->back();
        }else{
            Session::flash('error', 'User updating failed');
            return redirect()->back();
        }
    }

    public function destroy(User $user)
    {
        $delete = $user->delete();
        if($delete){
            Session::flash('success', 'User Successfully deleted');
            return redirect()->back();
        }else{
            Session::flash('error', 'User deleting failed');
            return redirect()->back();
        }
    }
}

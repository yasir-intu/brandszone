<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Transaction;
use Illuminate\Support\Facades\Auth;

class JournalController extends Controller
{
    public function __construct(){
        $this->middleware('auth');
    }

    public function index(){
        $transactions=Transaction::where('user_id', Auth::user()->id)->get();
        return view('admin.accounts.journal.index',compact('transactions'));
    }
}

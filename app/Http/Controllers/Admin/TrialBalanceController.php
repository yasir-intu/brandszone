<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Trial_Balance;
use Carbon\Carbon;
use Illuminate\Support\Facades\Auth;

class TrialBalanceController extends Controller
{
    public function __construct(){
        $this->middleware('auth');
    }
    public function index(){
        
        $transaction=Trial_Balance::whereYear('updated_at', Carbon::now()->year)->where('user_id', Auth::user()->id)->firstOrFail();
        return view('admin.accounts.trial-balance.index', compact('transaction'));
    }
}

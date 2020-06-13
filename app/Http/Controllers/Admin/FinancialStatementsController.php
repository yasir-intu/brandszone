<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Trial_Balance;
use Carbon\Carbon;
use Illuminate\Support\Facades\Auth;

class FinancialStatementsController extends Controller
{
    public function __construct(){
        $this->middleware('auth');
    }

    public function income(){
        $transaction=Trial_Balance::whereYear('updated_at', Carbon::now()->year)->where('user_id', Auth::user()->id)->firstOrFail();
        return view('admin.accounts.financial-statements.income', compact('transaction'));
    }

    public function owner(){
        return view('admin.accounts.financial-statements.owner');
    }

    public function financial(){
        return view('admin.accounts.financial-statements.financial');
    }
}

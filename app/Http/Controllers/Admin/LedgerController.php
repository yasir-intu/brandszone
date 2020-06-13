<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Transaction_central_topic;
use App\Transaction_payment_method;
use App\Transaction_topic;

class LedgerController extends Controller
{
    public function __construct(){
        $this->middleware('auth');
    }

    public function index(){
    $ledgers1=Transaction_central_topic::all();
    $ledgers2=Transaction_topic::all();
    $ledgers3=Transaction_payment_method::all();
    return view('admin.accounts.ledger.index', compact('ledgers1', 'ledgers2', 'ledgers3'));
    }
}

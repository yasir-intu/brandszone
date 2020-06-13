<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Transaction;
use App\Transaction_central_topic;
use App\Transaction_topic;
use Carbon\Carbon;
use Illuminate\Support\Facades\Auth;

class TransactionController extends Controller
{
    public function __construct(){
        $this->middleware('auth');
    }
    public function index(){
        $transaction_central_topic=Transaction_central_topic::all();
        $transaction_topic=Transaction_topic::all();
        return view('admin.transaction.create', compact('transaction_central_topic','transaction_topic'));
    }

    public function insert(Request $request){
        /* $this->validate($request,
        [
            'transaction_central_topic'       => 'required',
            'name'       => 'required',
            'amount'       => 'required',
        ],[
            'transaction_central_topic.require' => 'Please Enter Transaction Type',
            'name.require' => 'Please Enter Transaction Name',
            'amount.require' => 'Please Enter Amount',
        ]); */
        //dd($request->cheque_type);
        if($request->transaction_central_topic == null){
            $transaction_central_topic= null;
        }else {
            $transaction_central_topic= $request->transaction_central_topic;
        }

        if($request->topic == null){
            $topic=null;
        }else {
            $topic=$request->topic;
        }

        if($request->about_transaction == null){
            $about_transaction=null;
        }else {
            $about_transaction=$request->about_transaction;
        }
        
        if($request->cash == null){
            $cash=null;
        }else {
            $cash=$request->cash;
        }
        
        if($request->bank_cheque == null){
            $bank_cheque=null;
        }else {
            $bank_cheque=$request->bank_cheque;
        }
        
        if($request->cheque_type == null){
            $cheque_type='3';
        }else {
            $cheque_type=$request->cheque_type;
        }
        
        if($request->cheque == null){
            $cheque=$request->bank_cheque;
        }else {
            $cheque=$request->cheque;
        }
        
        if($request->creditor_name == null){
            $creditor_name=null;
        }else {
            $creditor_name=$request->creditor_name;
        }
        
        if($request->creaditor_amount == null){
            $creaditor_amount=null;
        }else {
            $creaditor_amount=$request->creaditor_amount;
        }
        
        if($request->debtor_name == null){
            $debtor_name=null;
        }else {
            $debtor_name=$request->debtor_name;
        }
        
        if($request->debtor_amount == null){
            $debtor_amount=null;
        }else {
            $debtor_amount=$request->debtor_amount;
        }
        
        if($request->discount == null){
            $discount=null;
        }else {
            $discount=$request->discount;
        }
        
        if($request->payable_bills == null){
            $payable_bills=null;
        }else {
            $payable_bills=$request->payable_bills;
        }
        
        if($request->due_bills == null){
            $due_bills=null;
        }else {
            $due_bills=$request->due_bills;
        }
        
        if($request->transportation == null){
            $transportation=null;
        }else {
            $transportation=$request->transportation;
        }

        $transaction = Transaction::insert([
            'user_id'=>Auth::user()->id,
            'about'=>$about_transaction,
            'c_t'=>$transaction_central_topic,
            't'=>$topic,
            'p_m_id_1'=>'1',
            'cash'=>$cash,
            'p_m_id_2'=>$cheque_type,
            'cheque'=>$cheque,
            'p_m_id_3'=>'4',
            'discount'=>$discount,
            'p_m_id_4'=>'5',
            'payable_bill'=>$payable_bills,
            'p_m_id_5'=>'6',
            'due_bill'=>$due_bills,
            'p_m_id_6'=>'7',
            'creditor'=>$creaditor_amount,
            'p_m_id_7'=>'8',
            'debtor'=>$debtor_amount,
            'p_m_id_8'=>'9',
            'transportation'=>$transportation,
            'created_at'=>Carbon::now()->toDateTimeString(),
            ]);
        
        $request->transaction_central_topic;  
        $request->topic;
        $request->about_transaction;
        $request->cash;
        $request->bank_cheque;
        $request->cheque_type;
        $request->cheque;
        $request->creditor_name;
        $request->creaditor_amount;
        $request->debtor_name;
        $request->debtor_amount;
        $request->discount;
        $request->payable_bills;
        $request->due_bills;
        $request->transportation;
    }
}

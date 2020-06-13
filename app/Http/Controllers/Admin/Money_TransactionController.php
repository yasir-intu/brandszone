<?php

namespace App\Http\Controllers\Admin;

use App\AccountHead;
use App\Bank;
use App\Bank_branch;
use App\Bank_Details;
use App\Country;
use App\Employee;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\PaymentTransfer;
use App\Vendor;
use App\Wallet;
use App\withdrawal;
use Carbon\Carbon;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;

class Money_TransactionController extends Controller
{
    public function __construct(){
        $this->middleware('supplier');
    }

    public function withdrawal(){
        $wallet=Wallet::where('user_id', Auth::user()->id)->firstOrFail();
        $banks=Bank_Details::where('user_id', Auth::user()->id)->get();
        return view('admin.money transaction.withdrawal', compact('wallet', 'banks'));
    }

    public function withdrawal_confirmation(Request $request){
        $this->validate($request,
        [
            'bank'       => 'required|numeric',
            'amount'       => 'required|numeric',
        ],[
            'bank.required' => 'Please Enter A Account Number',
            'bank.numeric' => 'Please Select A Existing Account Number',
            'amount.required' => 'Please Enter A Amount',
            'amount.numeric' => 'Please Enter A Valid Amount',
        ]);
        $wallet=Wallet::where('user_id', Auth::user()->id)->firstOrFail();
        $bank=Bank_Details::where('user_id', Auth::user()->id)->where('id', $request->bank)->firstOrFail();
        $amount=$request->amount;
        return view('admin.money transaction.withdrawal-confirmation', compact('wallet', 'bank', 'amount'));
    }
    
    public function withdrawal_confirm(Request $request){
        $slug='WTH_'.uniqid(2020);
        $update=withdrawal::insert([
            'user_id'=>Auth::user()->id,
            'account_name'=>$request->acc_name,
            'account_number'=>$request->acc_number,
            'bank'=>$request->bank,
            'branch'=>$request->branch,
            'country'=>$request->country,
            'swift_code'=>$request->swift,
            'amount'=>$request->amount,
            'slug'=>$slug,
            'created_at'=>Carbon::now()->toDateTimeString(),
        ]);

        $wallet=Wallet::where('user_id', Auth::user()->id)->update([
            'cash' => $request->current_amount,
        ]);

        if($update){
            Session::flash('success', 'Product Successfully created');
            return redirect('admin/money_transaction/withdrawal');
        }else{
            Session::flash('error', 'Product creating failed');
            return redirect('admin/money_transaction/withdrawal');
        }
    }

    public function withdrawal_history(){
        $withdrawals=withdrawal::where('user_id', Auth::user()->id)->latest()->paginate(20);
        return view("admin.money transaction.withdrawal-history", compact('withdrawals'));
    }

    public function withdrawal_history_view($slug){
        $withdrawal=withdrawal::where('user_id', Auth::user()->id)->where('slug', $slug)->firstOrFail();
        return view("admin.money transaction.withdrawal-history-show", compact('withdrawal'));
    }
    
    public function transfer(){
        $wallet=Wallet::where("user_id", Auth::user()->id)->firstOrFail();
        $accheads=AccountHead::where("user_id", Auth::user()->id)->get();
        return view("admin.money transaction.transfer", compact('wallet', 'accheads'));
    }
    
    public function transfer_confirmation(Request $request){
        $this->validate($request,
        [
            'acchead'       => 'required|numeric',
            'to'       => 'required',
            "payment" => 'required',
            'amount'       => 'required|numeric',
        ],[
            'acchead.required' => 'Please Enter A Account Head',
            'acchead.numeric' => 'Please Select A Existing Account Head',
            'to.required' => 'Please Select Whom to Send',
            'payment.required' => 'Please Select Payment type',
            'amount.required' => 'Please Enter A Amount',
            'amount.numeric' => 'Please Enter A Valid Amount',
        ]);

        if ($request->payment == 2) {
            $this->validate($request,
            [
                'cheque'       => 'required',
            ],[
                'cheque.required' => 'Please Enter A Cheque Number',
            ]);
        }

        $acchead=AccountHead::where("user_id", Auth::user()->id)->where("id", $request->acchead)->firstOrFail();
        $to=explode (",", $request->to);

        if ($to[1]==1) {
            $bank=Vendor::where("user_id", Auth::user()->id)->where('id', $to[0])->firstOrFail();
        }
        
        if ($to[1]==2) {
            $bank=Employee::where("user_id", Auth::user()->id)->where('id', $to[0])->firstOrFail();
        }

        $wallet=Wallet::where('user_id', Auth::user()->id)->firstOrFail();
        $acchead=AccountHead::where('id', $request->acchead)->firstOrFail();
        $amount=$request->amount;
        $payment=$request->payment;
        $cheque=$request->cheque;
        return view('admin.money transaction.tranfer-confirmation', compact('wallet', 'bank', 'acchead', 'amount', 'to', 'payment', 'cheque'));
    }

    public function transfer_confirm(Request $request){
        if ($request->payment===2) {
            $this->validate($request,
            [
                'cheque'       => 'required',
            ],[
                'cheque.required' => 'There is no Cheque Number',
            ]);
        }

        if ($request->payment===3) {
        
            $this->validate($request,
            [
                "acc_name" => 'required',
                "acc_number" => 'required',
                "bank" => 'required',
                "branch" => 'required',
                "country" => 'required',
                "swift" => 'required',
            ],[
                "acc_name.required" => 'Account Name is Needed',
                "acc_number.required" => 'Account Number is Needed',
                "bank.required" => 'Bank Name is Needed',
                "branch.required" => 'Branch Name is Needed',
                "country.required" => 'Country Name is Needed',
                "swift.required" => 'Swift Code is Needed',
            ]);
        
        }

        $slug='PAY_'.uniqid(2020);

        $update=PaymentTransfer::insert([
            'user_id'=>Auth::user()->id,
            'head_id'=>$request->head,
            'account_id'=>$request->to,
            'account'=>$request->account,
            'payment_type'=>$request->payment,
            'cheque'=>$request->cheque,
            'account_name'=>$request->acc_name,
            'account_number'=>$request->acc_number,
            'bank'=>$request->bank,
            'branch'=>$request->branch,
            'country'=>$request->country,
            'swift_code'=>$request->swift,
            'amount'=>$request->amount,
            'slug'=>$slug,
            'created_at'=>Carbon::now()->toDateTimeString(),
        ]);

        $wallet=Wallet::where('user_id', Auth::user()->id)->update([
            'cash' => $request->current_amount,
        ]);

        if($update){
            Session::flash('success', 'Product Successfully created');
            return redirect('admin/money_transaction/withdrawal');
        }else{
            Session::flash('error', 'Product creating failed');
            return redirect('admin/money_transaction/withdrawal');
        }
    }
    
    public function transfer_history(){
        $payments=PaymentTransfer::where('user_id', Auth::user()->id)->latest()->paginate(20);
        return view("admin.money transaction.transfer-history", compact('payments'));
    }

    public function transfer_history_view($slug){
        $payment=PaymentTransfer::where('user_id', Auth::user()->id)->where('slug', $slug)->firstOrFail();
        return view("admin.money transaction.transfer-history-show", compact('payment'));
    }
}

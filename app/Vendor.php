<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Vendor extends Model
{
    public function bank(){
        return $this->belongsTo('App\Bank', 'bank_id', 'id');
    }
    
    public function branch(){
        return $this->belongsTo('App\Bank_branch', 'branch_id', 'id');
    }
    
    public function country(){
        return $this->belongsTo('App\Country', 'country_id', 'id');
    }

    public function product(){
        return $this->hasMany('App\Purchase_Product', 'ven_id', 'id');
    }

    public function purchase_return(){
        return $this->hasMany('App\Purchase_Return', 'ven_id', 'id');
    }

    public function payment(){
        return $this->hasMany('App\PaymentTransfer', 'account_id', 'id');
    }
}

<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PaymentTransfer extends Model
{
    public function accountHead(){
        return $this->belongsTo('App\AccountHead', 'head_id', 'id');
    }

    public function vendor(){
        return $this->belongsTo('App\Vendor', 'account_id', 'id');
    }

    public function employee(){
        return $this->belongsTo('App\Employee', 'account_id', 'id');
    }
}

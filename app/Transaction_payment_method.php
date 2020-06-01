<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Transaction_payment_method extends Model{

    public function transaction(){
        return $this->hasMany('App\Transaction', 'p_m_id_1', 'id');
    }

    public function transactionB(){
        return $this->hasMany('App\Transaction', 'p_m_id_2', 'id');
    }
}

<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Transaction extends Model
{
    public function central_topic(){
        return $this->belongsTo('App\Transaction_central_topic', 'c_t', 'id');
    }

    public function topic(){
        return $this->belongsTo('App\Transaction_topic', 't', 'id');
    }

    public function cashs(){
        return $this->belongsTo('App\Transaction_payment_method', 'p_m_id_1', 'id');
    }

    public function cheques(){
        return $this->belongsTo('App\Transaction_payment_method', 'p_m_id_2', 'id');
    }
    
    public function discounts(){
        return $this->belongsTo('App\Transaction_payment_method', 'p_m_id_3', 'id');
    }
    
    public function payable_bills(){
        return $this->belongsTo('App\Transaction_payment_method', 'p_m_id_4', 'id');
    }
    
    public function due_bills(){
        return $this->belongsTo('App\Transaction_payment_method', 'p_m_id_5', 'id');
    }
    
    public function creditors(){
        return $this->belongsTo('App\Transaction_payment_method', 'p_m_id_6', 'id');
    }
    
    public function debtors(){
        return $this->belongsTo('App\Transaction_payment_method', 'p_m_id_7', 'id');
    }
    
    public function transportations(){
        return $this->belongsTo('App\Transaction_payment_method', 'p_m_id_8', 'id');
    }
    
    public function depreciations(){
        return $this->belongsTo('App\Transaction_payment_method', 'p_m_id_9', 'id');
    }
    
    public function arrear(){
        return $this->belongsTo('App\Transaction_payment_method', 'p_m_id_10', 'id');
    }
    
    public function purchases(){
        return $this->belongsTo('App\Transaction_payment_method', 'p_m_id_11', 'id');
    }
    
    public function sales(){
        return $this->belongsTo('App\Transaction_payment_method', 'p_m_id_12', 'id');
    }

    public function creditorOrDebtor(){
        return $this->belongsTo('App\CreditorOrDebtor', 'c_d_id', 'id');
    }
}

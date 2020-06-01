<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Transaction_central_topic extends Model{
    
    public function transaction(){
        return $this->hasMany('App\Transaction', 'c_t', 'id');
    }
}

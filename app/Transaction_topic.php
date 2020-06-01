<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Transaction_topic extends Model{

    public function transaction(){
        return $this->hasMany('App\Transaction', 't', 'id');
    }
}

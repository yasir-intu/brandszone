<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Bank extends Model
{
    public function bank(){
        return $this->hasMany('App\Bank_Details', 'bank_id', 'id');
    }
}

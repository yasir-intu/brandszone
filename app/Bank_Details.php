<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Bank_Details extends Model
{
    public function bank(){
        return $this->belongsTo('App\Bank', 'id', 'bank_id');
    }

    public function branch(){
        return $this->belongsTo('App\Bank', 'id', 'branch_id');
    }

}

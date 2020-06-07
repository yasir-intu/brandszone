<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Account extends Model
{
    public function vendor(){
        return $this->belongsTo('App\Vendor', 'account_id', 'id');
    }

    public function employee(){
        return $this->belongsTo('App\employee', 'account_id', 'id');
    }
}

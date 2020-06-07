<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class AccountHead extends Model
{
    public function account(){
        return $this->hasMany('App\Account', 'head_id', 'id');
    }
}

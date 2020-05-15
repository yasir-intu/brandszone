<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Bank_branch extends Model{

    public function branch(){
        return $this->hasMany('App\Bank_Details', 'branch_id', 'id');
    }

}

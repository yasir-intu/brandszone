<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Employee extends Model
{
    public function bank(){
        return $this->belongsTo('App\Bank', 'bank_id', 'id');
    }
    
    public function branch(){
        return $this->belongsTo('App\Bank_branch', 'branch_id', 'id');
    }
    
    public function country(){
        return $this->belongsTo('App\Country', 'country_id', 'id');
    }
}
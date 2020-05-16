<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Country extends Model
{
    public function country(){
        return $this->hasMany('App\Bank_Details', 'country_id', 'id');
    }
}

<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Shipping extends Model
{
    public function country()
    {
        return $this->belongsTo('App\Country');
    }
    public function city()
    {
        return $this->belongsTo('App\City');
    }
}

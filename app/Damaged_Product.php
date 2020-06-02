<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Damaged_Product extends Model
{
    public function product(){
        return $this->belongsTo('App\Product', 'pro_id', 'id');
    }
}

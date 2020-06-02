<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Purchase_Product extends Model
{
    public function product(){
        return $this->belongsTo('App\Product', 'pro_id', 'id');
    }
    
    public function vendor(){
        return $this->belongsTo('App\Vendor', 'ven_id', 'id');

    }
}

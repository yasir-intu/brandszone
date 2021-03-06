<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Banner extends Model
{
	use SoftDeletes;
	
    public function scopeActive($query)
    {
        return $query->where('status', 1);
    }
}

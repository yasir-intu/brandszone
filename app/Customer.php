<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Carbon\Carbon;

class Customer extends Model
{
	use SoftDeletes;

	public function scopeActive($query)
    {
        return $query->where('deleted_at', NULL);
    }
	public function scopeToday($query)
    {
        return $query->whereDate('created_at', Carbon::today());
    }
    public function scopeYesterday($query)
    {
        return $query->whereDate('created_at', Carbon::yesterday());
    }
    public function scopeThismonth($query)
    {
        return $query->whereMonth('created_at', Carbon::now()->month);
    }
    public function scopePreviousmonth($query)
    {
        return $query->whereMonth('created_at', Carbon::now()->subMonth()->month);
    }
    public function orders()
    {
        return $this->hasMany('App\Order');
    }

}

<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Carbon\Carbon;

class Order extends Model
{
    use SoftDeletes;
    
    public function scopeActive($query)
    {
        return $query->where('status', 1);
    }
    public function scopeCanceled($query)
    {
        return $query->where('status', 0);
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
    public function scopeThisyear($query)
    {
        return $query->whereYear('created_at', Carbon::now()->year);
    }
    public function scopePreviousyear($query)
    {
        return $query->whereYear('created_at', Carbon::now()->subYear()->year);
    }
    public function order_details()
    {
        return $this->hasMany('App\OrderDetail');
    }
    public function shipping()
    {
        return $this->belongsTo('App\Shipping');
    }
    public function payment()
    {
        return $this->belongsTo('App\Payment');
    }
    public function customer()
    {
        return $this->belongsTo('App\Customer');
    }
}

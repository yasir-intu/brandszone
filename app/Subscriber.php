<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Carbon\Carbon;

class Subscriber extends Model
{
    public function scopeActive($query)
    {
        return $query->where('status', 1);
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
}

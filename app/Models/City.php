<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class City extends Model
{
    use HasFactory;

    public function articleCount()
    {
        return $this->hasMany('App\Models\Article','cityPlateNo','plateNo')->where('status',1)->count();
    }
}


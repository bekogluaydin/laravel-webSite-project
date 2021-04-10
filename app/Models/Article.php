<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Laravelista\Comments\Commentable;

class Article extends Model
{ 
    use HasFactory;
    use SoftDeletes;
    use Commentable;

    public function getCategory()
    {
       return $this->hasOne('App\Models\Category', 'id', 'categoryID');
    }
    
    public function getCity()
    {
       return $this->hasOne('App\Models\City', 'plateNo', 'cityPlateNo');
    }  

    public function getUser()
    {
       return $this->hasOne('App\Models\User', 'id', 'userID');
    }
}

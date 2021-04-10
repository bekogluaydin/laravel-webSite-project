<?php

namespace App\Http\Controllers\backEnd;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Article;
use App\Models\Page;
use App\Models\Category;

class Dashboard extends Controller
{
    public function index()
    {
        $article=Article::all()->count();
        $hit=Article::sum('hit');
        $category=Category::all()->count();
        $page=Page::all()->count();
        return view('backEnd.dashboard',compact('article','hit','category','page'));
    }
}

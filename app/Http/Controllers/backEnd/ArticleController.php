<?php

namespace App\Http\Controllers\backEnd;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Article;
use App\Models\Category;
use App\Models\City;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\File;


class ArticleController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $articles=Article::orderBy('created_at','ASC')->get();
        return view('backEnd.articles.index',compact('articles'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {   
        $categories=Category::all();
        $cities=City::all();
        $users=User::all();
        return view('backEnd.articles.create', compact('categories', 'cities', 'users'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        
        $request->validate([
            'title'=>'required|min:3',
            'image'=>'required|image|mimes:jpeg,jpg,png|max:4096'
        ]);

        $article=new Article;
        $article->title=$request->title;
        $article->categoryID=$request->category;
        $article->cityPlateNo=$request->city;
        $article->userID=Auth::user()->id;
        $article->content=$request->content;
        $article->slug=str_slug($request->title);

        if($request->hasFile('image'))
        {
            $imageName=str_slug($request->title).'.'.$request->image->getClientOriginalExtension();
            $request->image->move(public_path('uploads'),$imageName);
            $article->image='uploads/'.$imageName;
        }
        $article->save();
        toastr()->success('Başarılı', 'Makale başarılı bir şekilde oluşturuldu');


        return redirect()->route('admin.makaleler.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        return $id;
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $article=Article::findOrFail($id);
        

        $categories=Category::all();
        $cities=City::all();
        $users=User::all();

        if(Auth::user()->id==$article->userID or Auth::user()->auth==1)
        {
            return view('backEnd.articles.edit', compact('categories', 'cities', 'users','article'));
        }

        else
        {
            toastr()->warning('Bu yazıyı düzenlemek için yetkiniz bulunmuyor!');
            return redirect()->route('admin.makaleler.index'); 
        }      
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $request->validate([
            'title'=>'required|min:3',
            'image'=>'image|mimes:jpeg,jpg,png|max:4096'
        ]);

        $article= Article::findOrFail($id);
        $article->title=$request->title;
        $article->categoryID=$request->category;
        $article->cityPlateNo=$request->city;
        // $article->userID=Auth::user()->id;
        $article->userID=$article->userID;
        // @foreach($users as $user) @if($article->userID==$user->id) value="{{$user->name}}" @endif @endforeach
        $article->content=$request->content;
        $article->slug=str_slug($request->title);

        if($request->hasFile('image'))
        {
            $imageName=str_slug($request->title).'.'.$request->image->getClientOriginalExtension();
            $request->image->move(public_path('uploads'),$imageName);
            $article->image='uploads/'.$imageName;
        }
        $article->save();
        toastr()->success('Başarılı', 'Makale başarılı bir şekilde güncellendi');

        return redirect()->route('admin.makaleler.index');
    }

    public function switch(Request $request)
    {
        $article=Article::findOrFail($request->id);
        
        if(Auth::user()->id==$article->userID or Auth::user()->auth==1)
        {
            $article->status=$request->statu =="true" ? 1:0;
            $article->save();
        }

        else
        {
            toastr()->warning('Bu yazıyı düzenlemek için yetkiniz bulunmuyor!');           
        }     
    }
    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */

    public function delete($id)
    {
        $article=Article::findOrFail($id);

        if(Auth::user()->id==$article->userID or Auth::user()->auth==1)
        {
            $article->delete();
            toastr()->success('Makale başarılı bir şekilde çöp kutusuna taşındı');
            return redirect()->route('admin.makaleler.index');
        }

        else
        {
            toastr()->warning('Bu makaleyi çöp kutusuna yollamak için yetkiniz bulunmuyor!');    
            return redirect()->route('admin.makaleler.index');       
        }     
    }

    public function trashed()
    {
        $articles = Article::onlyTrashed()->orderBy('deleted_at','ASC')->get();
        return view('backEnd.articles.trashed',compact('articles'));
    }

    public function recover($id)
    {
        $article=Article::onlyTrashed()->find($id);

        if(Auth::user()->id==$article->userID or Auth::user()->auth==1)
        {
            $article->restore();
            toastr()->success('Makale başarılı bir şekilde çöp kutusundan geri yüklendi');
            //aşağıdaki ile aynı şeyi yapıyor return redirect()->route('admin.trashed.article');
            return redirect()->back();   
        }

        else
        {
            toastr()->warning('Bu makaleyi geri yüklemek için yetkiniz bulunmuyor!');    
            // return aşağıdaki ile aynı şeyi yapıyor redirect()->route('admin.trashed.article');    
            return redirect()->back();     
        }     
    }

    public function hardDelete($id)
    {
        $article=Article::onlyTrashed()->findOrFail($id);

        if(Auth::user()->id==$article->userID or Auth::user()->auth==1)
        {
            if(File::exists($article->image))
            {
              File::delete(public_path($article->image));
            }

            $article->forceDelete();
            toastr()->success('Makale başarılı bir şekilde silindi');
            // return aşağıdaki ile aynı şeyi yapıyor redirect()->route('admin.trashed.article');    
            return redirect()->back();   
        }

        else
        {
            toastr()->warning('Bu makaleyi silmek için yetkiniz bulunmuyor!');    
            // return aşağıdaki ile aynı şeyi yapıyor redirect()->route('admin.trashed.article');    
            return redirect()->back();         
        }     
    }
}
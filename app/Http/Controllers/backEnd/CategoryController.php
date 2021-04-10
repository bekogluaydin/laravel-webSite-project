<?php

namespace App\Http\Controllers\backEnd;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Category;
use App\Models\Article;
use Illuminate\Support\Facades\Auth;

class CategoryController extends Controller
{
    public function index()
    {
        $categories=Category::all();
        return view('backEnd.categories.index',compact('categories'));
    }

    public function create(Request $request)
    {
        $isExist=Category::whereSlug(str_slug($request->category))->first();

        if($isExist)
        {
            toastr()->error($request->category.'Kategorisi mevcut');
            return redirect()->back(); 
        }

        $category=new Category;
        $category->name=$request->category;
        $category->slug=str_slug($request->category);
        $category->save();
        toastr()->success('Kategori Başarıyla Oluşturuldu!');
        return redirect()->back(); 
    }

    public function update(Request $request)
    {
        $isSlugExist=Category::whereSlug(str_slug($request->slug))->whereNotIn('id',[$request->id])->first();
        $isNameExist=Category::whereName($request->category)->whereNotIn('id',[$request->id])->first();

        if(Auth::user()->auth==1)
        {
            if($isSlugExist and !$isNameExist)
            {
                toastr()->error($request->slug.' slug değeri mevcut');
                return redirect()->back(); 
            }

           else if(!$isSlugExist and $isNameExist)
            {
                toastr()->error($request->category.' kategori isim mevcut');
                return redirect()->back(); 
            }

            else if($isSlugExist and $isNameExist)
            {
                toastr()->error($request->category.' kategorisi mevcut');
                return redirect()->back(); 
            }

            else
            {
                $category=Category::find($request->id);
                $category->name=$request->category;
                $category->slug=str_slug($request->slug);
                $category->save();
                toastr()->success('Kategori Bilgileri Başarıyla Güncellendi!');
                return redirect()->back(); 
            }    
        }                        

        else
            {
                toastr()->error('Yetkin Yok');
                return redirect()->back(); 
            }

            // toastr()->error($request->category.'Kategorisi mevcut');       
    }

    public function delete(Request $request)
    {
        $category=Category::findOrFail($request->id);
        $allArticle = Article::withTrashed()->where('categoryID',$category->id);

        if(Auth::user()->auth==1)
        {
            if($category->id==1)
            {
                toastr()->error('Bu Kategori silinemez!');
                return redirect()->back(); 
            }
    
            $messages = " ";
            $count=$category->articleCount();
            if($count>0)
            {
                $allArticle->update(['categoryID'=>1]);
                $defaultCategory=Category::find(1);
                $messages= 'Bu kategoriye ait '.$count.' makale '.$defaultCategory->name. ' kategorisine taşındı.';
            }
            elseif ($count==0 and count($allArticle->get())>0)
            {
                $allArticle->update(['categoryID'=>1]);
            }

            $category->delete();   
            toastr()->success($messages,'Kategori Başarıyla Silindi' );
            return redirect()->back(); 
        }

        else
        {
            toastr()->error('Yetkin Yok');
            return redirect()->back(); 
        }
    }

    public function getData(Request $request)
    {
        $category=Category::findOrFail($request->id);
        return response()->json($category);
    }
}

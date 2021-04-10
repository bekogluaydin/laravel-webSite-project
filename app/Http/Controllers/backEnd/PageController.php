<?php

namespace App\Http\Controllers\backEnd;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Page;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\File;

class PageController extends Controller
{
    public function index(){
        $pages=Page::orderBy('order','ASC')->get();
        // $pages=Page::all();

        return view ('backEnd.pages.index',compact('pages'));
    }

    public function create()
    {   $pages=Page::all();

        if($pages->count()<= 9)
        {
            return view('backEnd.pages.create');
            
        }
        else{
            toastr()->warning('En Fazla 10 sayfa oluşturabilirsiniz!');
            return view ('backEnd.pages.index',compact('pages'));
        }       
    }

    public function edit($id)
    {
        $page=Page::findOrFail($id);
        
        if(Auth::user()->auth==1)
        {
            return view('backEnd.pages.edit',compact('page'));
        }

        else
        {
            toastr()->warning('Bu sayfayı düzenlemek için yetkiniz bulunmuyor!');
            return redirect()->route('admin.page.index'); 
        } 
    }

    public function update(Request $request, $id)
    {
        $request->validate([
            'title'=>'required|min:3',
            'image'=>'image|mimes:jpeg,jpg,png|max:4096'
        ]);

        $page= Page::findOrFail($id);
        $page->title=$request->title;
        $page->content=$request->content;
        $page->slug=str_slug($request->title);

        if($request->hasFile('image'))
        {
            $imageName=str_slug($request->title).'.'.$request->image->getClientOriginalExtension();
            $request->image->move(public_path('uploads'),$imageName);
            $page->image='uploads/'.$imageName;
        }
        $page->save();
        toastr()->success('Sayfa başarılı bir şekilde güncellendi');

        return redirect()->route('admin.page.index');
    }

    public function delete($id)
    {
        $page=Page::findOrFail($id);

        if(Auth::user()->auth==1)
        {
            if(File::exists($page->image))
            {
              File::delete(public_path($page->image));
            }

            $page->delete();
            toastr()->success('Sayfa başarılı bir şekilde silindi');
            return redirect()->back();   
        }

        else
        {
            toastr()->warning('Bu sayfayı silmek için yetkiniz bulunmuyor!');    
            return redirect()->back();         
        }     
    }

    public function post(Request $request)
    {
        $pages=Page::all();

        if(Auth::user()->auth==1 and $pages->count()<= 9)
        {
            $request->validate([
                'title'=>'required|min:3',
                'image'=>'required|image|mimes:jpeg,jpg,png|max:4096'
            ]);
    
            $last=Page::orderBy('order','desc')->first();
            
            $page=new Page;
            $page->title=$request->title;
            $page->content=$request->content;
            if($last==null)
            {
                $page->order=1;
            }
            else $page->order=$last->order+1;
            $page->slug=str_slug($request->title);
    
            if($request->hasFile('image'))
            {
                $imageName=str_slug($request->title).'.'.$request->image->getClientOriginalExtension();
                $request->image->move(public_path('uploads'),$imageName);
                $page->image='uploads/'.$imageName;
            }
            $page->save();

            toastr()->success('Sayfa başarılı bir şekilde oluşturuldu');   
            return redirect()->route('admin.page.index');
        }

        else
        {
            toastr()->error('Sayfa oluşturmak için yetkiniz yok! veya hali hazırda 10 adet sayfa oluşturmuşsunuz!');   
            return redirect()->route('admin.page.index');
        }
        
        
    }

    public function switch(Request $request)
    {
        $page=Page::findOrFail($request->id);
        
        if(Auth::user()->auth==1)
         {
            $page->status=$request->statu =="true" ? 1:0;
            $page->save();  
         }

        else
        {
             toastr()->warning('Bu yazıyı düzenlemek için yetkiniz bulunmuyor!');           
        }     
    }

    public function orders(Request $request){
        foreach($request->get('page') as $key => $order){
            Page::where('id',$order)->update(['order'=>$key]);
        }
    }
}

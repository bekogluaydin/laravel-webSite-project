<?php

namespace App\Http\Controllers\frontEnd;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use Validator;
use Mail;

// Models
use App\Models\Category;
use App\Models\City;
use App\Models\Article;
use App\Models\Page;
use App\Models\Contact;
use App\Models\User;
use App\Models\Config;
use Illuminate\Support\Facades\Auth;
use Carbon\Carbon;

class Homepage extends Controller
{
    public function __construct()
    {
        if(Config::find(1)->active==0){
            return redirect()->to('bakimda')->send();
        }

        view()->share('pages',Page::where('status',1)->orderBy('order','ASC')->get() );
        view()->share('city',City::orderBy('plateNo','ASC')->get());
        view()->share('categories',Category::orderBy('id','ASC')->get());
        view()->share('users',User::orderBy('id','ASC')->get());
        // $data['pages']=Page::orderBy('order','ASC')->get();
        // $data['city']=City::orderBy('plateNo','ASC')->get();
        // $data['categories']=Category::orderBy('id','ASC')->get();
    }

    public function index()
    {   
        $data['articles']=Article::where('status',1)->orderBy('created_at','DESC')->paginate(9);
        return view('frontEnd.homepage',$data);    
    }

    public function single($category,$slug)
    {    
        $categoryVarmi=Category::whereSlug($category)->first() ?? abort(403,'Böyle bir kategori yok');

        $article=Article::where('status',1)->whereSlug($slug)->whereCategoryid($categoryVarmi->id)->first() ?? abort(403,'Böyle Bir Yazı Bulunamadı');
        $article->increment('hit');  

        $data['article']=$article;

        // Son 1 haftanın paylaşımları (GÜNDEM)

        // $date = \Carbon\Carbon::today()->subDays(7);
        // $users = Article::where('created_at','>=',$date)->get();
        // dd($users);

        // Son 1 haftanın paylaşımları (GÜNDEM)
   
        return view('frontEnd.single', $data);
    }

    public function categoryURL($slug, Request $request)
    {
        $categoryVarmi=Category::where('slug',$slug)->first() ?? abort(404,'Böyle bir kategori yok');
        $data['category']=$categoryVarmi;
        $data['articles']=Article::where('categoryID',$categoryVarmi->id)->where('status',1)->orderBy('created_at','DESC')->paginate(7);
        
        $lastpage = $data['articles']->lastPage();
        $page = $request->input('page');// get page number at url
        if ($page>$lastpage) {
            // abort(404) ; 
            return redirect()->route('categoryURL',['category'=>$categoryVarmi->slug]);          
        };

        return view('frontEnd.category',$data);   
    }

    public function cityURL($slug, Request $request)
    {
        $cityGet=City::where('slug',$slug)->first() ?? abort(403,'Böyle bir şehir yok');
        $data['city']=$cityGet;
        $data['articles']=Article::where('cityPlateNo',$cityGet->plateNo)->where('status',1)->orderBy('created_at','DESC')->paginate(7);

        $lastpage = $data['articles']->lastPage();
        $page = $request->input('page');// get page number at url
        if ($page>$lastpage) {
            // abort(404) ; 
            return redirect()->route('cityURL',['city'=>$cityGet->slug]);          
        };
      
        return view('frontEnd.city',$data);
    }

    public function userURL($user_name, Request $request)
    {
        $userGet=User::where('user_name',$user_name)->first() ?? abort(403,'Böyle bir kullanıcı yok');
        $data['user']=$userGet;
        $data['articles']=Article::where('userID',$userGet->id)->where('status',1)->orderBy('created_at','DESC')->paginate(7);

        $lastpage = $data['articles']->lastPage();
        $page = $request->input('page');// get page number at url
        if ($page>$lastpage) {
            // abort(404) ; 
            return redirect()->route('userURL',['user'=>$userGet->user_name]);          
        };
      
        return view('frontEnd.user',$data);
    }

    public function pageURL($slug){
        $pageGet=Page::where('status',1)->whereSlug($slug)->first() ?? abort(403, 'Böyle bir sayfa yok');
        $data['page']=$pageGet;

        return view('frontEnd.page',$data);
    }
    
    public function contact()
    {
        return view('frontEnd.contact');
    }

    public function contactPost(Request $request)
    {
        $request->validate([
            'name'=>'required|min:10',
            'email'=>'required|email',
            'phone'=>'required|min:11|max:11',
            'topic'=>'required',
            'message'=>'required|min:20'
        ]);

        // $validate=Validator::make($request->post(),$rules);

        // if($request->errors())
        // {
        //     return redirect()->route('contact')->withErrors($request)->withInput();
        // }

        Mail::send([],[], function($message) use($request){
                        $message->from('iletisim@patijoy.com','PatiJoy');
                        $message->to('admin@patijoy.com');
                        $message->setBody(' Mesajı Gönderen: '.$request->name.'<br />
                        Mesajı Gönderen Mail: '.$request->email.'<br />
                        Mesajı Gönderen Telefon: '.$request->phone.'<br />
                        Mesaj Konusu: '.$request->topic.'<br />
                        Mesaj: '.$request->message.'<br /><br />
                        Mesaj Gönderilme Tarihi: '.now().'','text/html');
                        $message->subject($request->name. ' iletişimden mesaj gönderdi!');
                    });

        // $contact=new Contact;
        // $contact->name=$request->name;
        // $contact->email=$request->email;
        // $contact->phone=$request->phone;
        // $contact->topic=$request->topic;
        // $contact->message=$request->message;
        // $contact->save();  

        return redirect()->route('contact')->with('success', 'Mesajınız bize iletildi. Teşekkür Ederiz');
    }
}

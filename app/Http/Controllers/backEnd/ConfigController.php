<?php

namespace App\Http\Controllers\backEnd;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Config;
use Illuminate\Support\Facades\Auth;

class ConfigController extends Controller
{
    public function index()
    {   if(Auth::user()->auth==1)
        {
            $config=Config::find(1);
            return view ('backEnd.config.index',compact('config'));
        }
        else
        {
            toastr()->warning('Site ayarlarını görüntülemek için yetkiniz bulunmuyor!');
            return redirect()->route('admin.dashboard'); 
        }         
    }

    public function update(Request $request)
    {
        if(Auth::user()->auth==1)
        {
            $config=Config::find(1);
            $config->title=$request->title;
            $config->active=$request->active;
            $config->facebook=$request->facebook;
            $config->twitter=$request->twitter;
            $config->instagram=$request->instagram;
            $config->linkedin=$request->linkedin;
            $config->youtube=$request->youtube;
     
            if($request->hasFile('logo'))
            {
                $logo=str_slug($request->title).'Logo.'.$request->logo->getClientOriginalExtension();
                $request->logo->move(public_path('uploads'),$logo);
                $config->logo='uploads/'.$logo;
            }
     
            if($request->hasFile('favicon'))
            {
                $favicon=str_slug($request->title).'Favicon.'.$request->favicon->getClientOriginalExtension();
                $request->favicon->move(public_path('uploads'),$favicon);
                $config->favicon='uploads/'.$favicon;
            }
            
            $config->save();
            toastr()->success('Ayarlar başarıyla güncellendi');
            return redirect()->back();
        }

        else
        {
            toastr()->warning('Site ayarlarını düzenlemek için yetkiniz bulunmuyor!');
            return redirect()->route('admin.dashboard'); 
        }                  
    }
}

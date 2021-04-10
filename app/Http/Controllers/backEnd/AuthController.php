<?php

namespace App\Http\Controllers\backEnd;


use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Models\User;
use Illuminate\Support\Facades\Auth;


class AuthController extends Controller
{
    public function login()
    {
        return view('backEnd.auth.login');
    }

    public function loginPost(Request $request)
    {
        if(Auth::attempt(['email' => $request->email, 'password' => $request->password]))
        {
            toastr()->success('Tekrardan Hoşgeldiniz: '. Auth::user()->name);
            return redirect()->route('homepage');
        }     
        return redirect()->route('admin.login')->withErrors('E-Posta veya Şifre Hatalı');
    }

    public function logout(){
        Auth::logout();
        return redirect()->route('admin.login');
    }

    public function register()
    {
        return view('backEnd.auth.register');
    }

    public function registerPost(Request $request)
    {
        $request->validate([
            'nameSurName'=>'required|min:4',
            'user_name'=>'required|unique:users|min:5',
            'email'=>'required|email|unique:users|min:10',
            'password'=>'required|confirmed|min:6',
        ]);
        
        $user=new User;
        $user->name=$request->nameSurName;
        $user->user_name=$request->user_name;
        $user->email=$request->email;
        $user->password=bcrypt($request->password);
        $user->auth=0;
        $user->save();

        return redirect()->route('admin.login')->withSuccess('Status', 'Üye Olundu');
        // if(Auth::attempt(['email' => $request->email, 'password' => $request->password]))
        // {
        //     toastr()->success('Tekrardan Hoşgeldiniz: '. Auth::user()->name);
        //     return redirect()->route('admin.dashboard');
        // }     
        // return redirect()->route('admin.login')->withErrors('E-Posta veya Şifre Hatalı');
    }

    public function forget()
    {
        return view('backEnd.auth.forget');
    }
}

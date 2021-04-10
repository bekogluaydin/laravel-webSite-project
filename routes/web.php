<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\frontEnd\Homepage;
use App\Http\Controllers\backEnd\Dashboard;
use App\Http\Controllers\backEnd\AuthController;
use App\Http\Controllers\backEnd\ArticleController;
use App\Http\Controllers\backEnd\CategoryController;
use App\Http\Controllers\backEnd\PageController;
use App\Http\Controllers\backEnd\ConfigController;


/*
|--------------------------------------------------------------------------
| Back End Routes
|--------------------------------------------------------------------------
|
*/
Route::get('bakimda', function()
{
    return view('frontEnd.offline');
});

 Route::prefix('admin')->name('admin.')->middleware('isLogin')->group(function()
 {
     // AUTH GET
     Route::get('giris',[AuthController::class, 'login'])->name('login');
     Route::get('kayit',[AuthController::class, 'register'])->name('register');
     Route::get('sifremi_unuttum',[AuthController::class, 'forget'])->name('forget');

     // AUTH POST
     Route::post('giris',[AuthController::class, 'loginPost'])->name('login.post');
     Route::post('kayit',[AuthController::class, 'registerPost'])->name('register.post');
     
 });


 Route::prefix('admin')->name('admin.')->middleware('isAdmin')->group(function()
 {
     Route::get('panel',[Dashboard::class, 'index'])->name('dashboard');
     
     // MAKALE ROUTE'S
     Route::get('makaleler/silinenler',[ArticleController::class, 'trashed'])->name('trashed.article');
     Route::resource('makaleler', ArticleController::class);
     Route::get('/switch',[ArticleController::class, 'switch'])->name('switch');
     Route::get('/deletearticle/{id}',[ArticleController::class, 'delete'])->name('delete.article');
     Route::get('/harddeletearticle/{id}',[ArticleController::class, 'hardDelete'])->name('hard.delete.article');
     Route::get('/recoverarticle/{id}',[ArticleController::class, 'recover'])->name('recover.article');
     
     // KATEGORİ ROUTE'S
     Route::get('/kategoriler',[CategoryController::class, 'index'])->name('category.index');
     Route::post('/kategoriler/create',[CategoryController::class, 'create'])->name('category.create');
     Route::post('/kategori/update',[CategoryController::class, 'update'])->name('category.update');
     Route::post('/kategori/delete',[CategoryController::class, 'delete'])->name('category.delete');
     Route::get('/kategori/getData',[CategoryController::class, 'getData'])->name('category.getdata');
    
     // SAYFA ROUTE'S
     Route::get('/sayfalar',[PageController::class, 'index'])->name('page.index');    
     Route::get('/sayfalar/olustur',[PageController::class, 'create'])->name('page.create');
     Route::post('/sayfalar/olustur',[PageController::class, 'post'])->name('page.create.post');
     Route::get('/sayfalar/duzenle/{id}',[PageController::class, 'edit'])->name('page.edit');
     Route::post('/sayfalar/duzenle/{id}',[PageController::class, 'update'])->name('page.edit.post');
     Route::get('/sayfa/switch',[PageController::class, 'switch'])->name('page.switch');
     Route::get('/sayfa/sil/{id}',[PageController::class, 'delete'])->name('page.delete');
     Route::get('/sayfa/siralama',[PageController::class, 'orders'])->name('page.orders');

     // Config's Route
     Route::get('/ayarlar',[ConfigController::class, 'index'])->name('config.index');
     Route::post('/ayarlar/guncelle',[ConfigController::class, 'update'])->name('config.update');

     // LOGOUT
     Route::get('cikis',[AuthController::class, 'logout'])->name('logout');
 });




/*
|--------------------------------------------------------------------------
| Front End Routes
|--------------------------------------------------------------------------
|
*/

Route::get('/', [Homepage::class, 'index'])->name('homepage');
Route::get('/iletisim',[Homepage::class, 'contact'])->name('contact');
Route::post('/iletisim',[Homepage::class, 'contactPost'])->name('contact.post');
Route::get('/sehir/{city}',[Homepage::class, 'cityURL'])->name('cityURL');
Route::get('/kategori/{category}',[Homepage::class, 'categoryURL'])->name('categoryURL');
Route::get('/yazar/{user}',[Homepage::class, 'userURL'])->name('userURL');
Route::get('/{sayfa}',[Homepage::class, 'pageURL'])->name('pageURL');
Route::get('/{category}/{slug}',[Homepage::class, 'single'])->name('single');
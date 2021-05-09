<?php

use App\Http\Controllers\Backend\BlogController;
use App\Http\Controllers\Backend\PageController;
use App\Http\Controllers\Backend\SliderController;
use App\Http\Controllers\Backend\UserController;
use App\Http\Controllers\Frontend\DefaultFrontendController;
use App\Http\Controllers\Frontend\FeBlogController;
use App\Http\Controllers\Frontend\FePageController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Backend\DefaultController;
use \App\Http\Controllers\Backend\SettingsController;


/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
// Bağımsız saylafar
Route::get('/',[DefaultFrontendController::class,'index'] )->name('home.index');
Route::get('contact',[DefaultFrontendController::class,'contact'] )->name('contact.index');
Route::post('contact',[DefaultFrontendController::class,'sendmail'] )->name('contact.send');
#Bloglar
Route::get('blogs',[FeBlogController::class,'index'] )->name('feblog.index');
Route::get('blogs/{slug}',[FeBlogController::class,'detail'] )->name('feblog.detail');
//Sayfalar..
Route::get('pages/{slug}',[FePageController::class,'detail'] )->name('fepage.index');



Route::prefix('nedmin')->group(function () {
    Route::get('dashboard', [DefaultController::class, 'index'])->name('nedmin.index')->middleware('admin');
    Route::get('/', [DefaultController::class, 'login'])->name('nedmin.login')->middleware('CheckLogin');
    Route::get('logout', [DefaultController::class, 'logout'])->name('nedmin.logout');
    Route::post('/', [DefaultController::class, 'authenticate'])->name('nedmin.auth');

});

Route::middleware(['admin'])->prefix('nedmin/settings')->group(function () {
    Route::get('/', [SettingsController::class, 'index'])->name('settings.index');
    Route::post('sortable', [SettingsController::class, 'sortable'])->name('setting.sortable');
    Route::get('delete/{id}', [SettingsController::class, 'destroy']);
    Route::get('edit/{id}', [SettingsController::class, 'edit'])->name('settings.edit');
    Route::post('update/{id}', [SettingsController::class, 'update'])->name('settings.update');
});


Route::prefix('nedmin')->group(function () {
    Route::middleware(['admin'])->group(function () {
        //BLOG modülü
        Route::post('blog/sortable', [BlogController::class, 'sortable'])->name('blog.sortable');
        Route::resource('blog', BlogController::class);
//Slider Modülü
        Route::post('page/sortable', [PageController::class, 'sortable'])->name('page.sortable');
        Route::resource('page', PageController::class);

        //Slider
        Route::post('slider/sortable', [SliderController::class, 'sortable'])->name('slider.sortable');
        Route::resource('slider', SliderController::class);
//
        Route::post('user/sortable', [UserController::class, 'sortable'])->name('user.sortable');
        Route::resource('user', UserController::class);
    });
});


Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

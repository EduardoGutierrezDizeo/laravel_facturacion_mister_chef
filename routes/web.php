<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProductoController;
use App\Http\Controllers\HomeController;

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::middleware(['auth'])->group(function(){
    Route::resource('productos', ProductoController::class);
    Route::get('/home', [HomeController::class, 'index'])->name('home');
});

//---------------------------------

// use App\Http\Controllers\ProductoController;
// use Illuminate\Support\Facades\Route;

// Route::resource('productos', ProductoController::class);

//-----------------------------------------------

// use App\Http\Controllers\HomeController;

// Route::get('/', function () {
//     return view('welcome');
// });

//Auth::routes();

// Route::get('/home', [HomeController::class, 'index'])->name('home');


//--------------------------------------------------------------------

// use Illuminate\Support\Facades\Route;

// Route::get('/', function () {
//     return view('welcome');
// });

// Auth::routes();

// Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

//----------------------RUTAS BASICAS-------------------------------------------

// use Illuminate\Support\Facades\Route;
// Route::get('/', function () {
// return view(welcome);
// });
// Route::get('/about', function () {
// return 'Acerca de nosotros';
// }); 

//--------------------RUTAS CON PARAMETROS-----------------------------------------

// use Illuminate\Support\Facades\Route;
// Route::get('/user/{id}', function ($id) {
// return 'ID de usuario: ' . $id;
// });

//-------------------RUTAS CON NOMBRES---------------------------------------------

// use Illuminate\Support\Facades\Route;
// Route::get('/contacto', function () {
// return 'Página de contacto';
// })->name('contacto');


//------------------RUTAS CON RESTRICCIONES-----------------------------------------

// use Illuminate\Support\Facades\Route;
// Route::get('/user/{id}', function ($id) {
// return 'ID de usuario: ' . $id;
// })->where('id', '[0-9]{3}');
// ;

//----------------GRUPO DE RUTAS---------------------------------------------------

// use Illuminate\Support\Facades\Route;

// Route::prefix('admin')->group(function () {
// Route::get('/', function () {
// return 'Panel de administración';
// });
// Route::get('/users', function () {
// return 'Lista de usuarios';
// });
// }); 

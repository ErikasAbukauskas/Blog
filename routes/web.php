<?php

use Illuminate\Support\Facades\Route;

Use App\Http\Controllers\CategoryController;
Use App\Http\Controllers\PostController;
Use App\Http\Controllers\CommentController;
use Illuminate\Support\Facades\Redirect;


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


// Route::get('/', [PostController::class, 'index'])->name('posts.index');
// Route::get('/posts/create', [PostController::class, 'create'])->name('posts.create');
// Route::get('/posts', [PostController::class, 'create'])->name('posts.store');
// Route::get('/posts/{post}', [PostController::class, 'show'])->name('posts.show');


// Route::get('/posts/{post}/comments/{comment}', function ($postId, $commentId) {
//     //
// });

// Route::post('/posts/{post}/comments', [CommentController::class, 'store']);

// Route::post('comments', [CommentController::class, 'store'])->name('comments.store');


Route::get('/', [PostController::class, 'index'])->name('home');

Route::resources([
    'categories' => CategoryController::class,
    'posts' => PostController::class,
]);

Route::resource('posts.comments', CommentController::class)->only(['create', 'store'])->shallow();





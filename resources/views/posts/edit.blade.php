@extends('layouts.app')


@section('content')

<div class="container">
    <div class="row justify-content-center">
        <!-- Blog entries-->
        <div class="col-lg-4">
            <!-- Featured blog post-->

            @if ($errors->any())
                <div class="alert alert-danger">
                    <ul>
                        @foreach ($errors->all() as $error)
                            <li>{{ $error }}</li>
                        @endforeach
                    </ul>
                </div>
            @endif

            <form action="{{ route('posts.update', $post)}}" method='POST'>
                @csrf
                @method('PUT')

                Title:
                <input type="text" name="title" class="form-control" value="{{ $post->title }}">
                <br>
                Text:
                <textarea name="text" rows="5" class="form-control">{{ $post->text }}</textarea>
                <br>
                Category;
                <select name="category_id" class="form-control">
                    @foreach ($categories as $category)
                            <option value="{{ $category->id }}"@if($category->id == $post->category_id) selected @endif>{{ $category->name }}</option>
                            {{-- laravel 9 --}}
                            {{-- @selected($category->id == $post->category_id)>{{ $category->name }}</option> --}}
                    @endforeach
                </select>
                <br>
                <button type="submit" class="btn btn-success">Update</button>

                <a class="btn btn-primary m-3" href="{{ route('posts.index') }}">Back</a>

            </form>
        </div>
    </div>
</div>

@endsection

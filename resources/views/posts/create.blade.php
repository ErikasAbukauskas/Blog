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

            <form action="{{ route('posts.store') }}" method='POST'>
                @csrf

                Title:
                <input type="text" name="title" class="form-control" value="{{ old('title') }}">
                <br>
                Text:
                <textarea name="text" rows="5" class="form-control">{{ old('text') }}</textarea>
                <br>
                Category:
                <select class="form-control" name="category_id">
                    @foreach ($categories as $category)
                        <option value="{{ $category->id}}">{{ $category->name }}</option>
                    @endforeach
                </select>
                <br>
                <button type="submit" class="btn btn-success">Creat Post</button>

                <a class="btn btn-primary m-3" href="{{ route('posts.index') }}">Back</a>

            </form>
        </div>
    </div>
</div>

@endsection

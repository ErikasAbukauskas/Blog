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

            <form action="{{ route('categories.store') }}" method='POST'>
                @csrf

                Category:
                <input type="text" name="name" class="form-control">

                <button type="submit" class="btn btn-success">Creat Category</button>

                <a class="btn btn-primary m-3" href="{{ route('posts.index') }}">Back</a>

            </form>
        </div>
    </div>
</div>

@endsection

@extends('layouts.app')


@section('content')

  <!-- Page content-->
 <div class="container">
    <div class="row">
        <!-- Blog entries-->
        <div class="col-lg-8">
            <!-- Featured blog post-->
            <div class="card mb-4">
                <a href="#!"><img class="card-img-top" src="{{ asset('img/desk.png') }}" alt="..." /></a>
                <div class="card-body">
                    <div class="small text-muted">January 1, 2022</div>
                    <h2 class="card-title">Featured Post Title</h2>
                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis aliquid atque, nulla? Quos cum ex quis soluta, a laboriosam. Dicta expedita corporis animi vero voluptate voluptatibus possimus, veniam magni quis!</p>
                    {{-- <a class="btn btn-primary" href="">Read more →</a> --}}
                </div>
            </div>
            <!-- Nested row for non-featured blog posts-->
            <div class="row">
                <div class="col-lg-6">

                    <!-- Blog post-->
                    @forelse ( $posts as $post)
                        <div class="card mb-4">
                            <a href="{{ route('posts.show', $post) }}"><img class="card-img-top" src="{{ asset('img/nature.png') }}" alt="..." /></a>
                            <div class="card-body">
                                <div class="small text-muted">{{ $post->created_at }}</div>
                                <h2 class="card-title h4">{{ $post->title }}</h2>
                                <h2 class="card-title h6">Category: <a href="{{ route('categories.show', $post->category) }}">{{ $post->category->name }}</a></h2>
                                <p class="card-text">
                                    @if(strlen($post->text) > 200)
                                        {{ substr($post->text, 0, 200) }}...
                                    @else
                                        {{ $post->text }}
                                    @endif
                                </p>
                                <a class="btn btn-primary" href="{{ route('posts.show', $post) }}">Read more →</a>
                            </div>
                        </div>

                    @empty

                        <div class="card mb-4">
                            <div class="card-body">
                                <p class="card-text">
                                    Create your first post
                                </p>
                            </div>
                        </div>

                    @endforelse
                </div>
            </div>
        </div>
        <!-- Side widgets-->
        <div class="col-lg-4">
            <!-- Search widget-->
            <div class="card mb-4">
                <div class="card-header">Search</div>
                <div class="card-body">
                    <div class="input-group">
                        <input class="form-control" type="text" placeholder="Enter search term..." aria-label="Enter search term..." aria-describedby="button-search" />
                        <button class="btn btn-primary" id="button-search" type="button">Go!</button>
                    </div>
                </div>
            </div>
            <!-- Categories widget-->
            <div class="card mb-4">
                <div class="card-header">Categories</div>
                <div class="card-body">
                    <div class="row">

                        @forelse ( $categories as $category)
                            <div class="col-sm-4">
                                <ul class="list-unstyled mb-0">
                                    <li><a href="{{ route('categories.show', $category) }}">{{ $category->name }}</a></li>
                                </ul>
                            </div>
                        @empty
                            <div class="col-sm-6">
                                <ul class="list-unstyled mb-0">
                                Category list is empty
                                </ul>
                            </div>
                        @endforelse
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


@endsection

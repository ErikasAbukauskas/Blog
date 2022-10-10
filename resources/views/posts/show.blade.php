@extends('layouts.app')


@section('content')

  <!-- Page content-->
  <div class="container">
    <div class="row justify-content-center">
        <!-- Blog entries-->
        <div class="col-lg-8">
            <!-- Featured blog post-->
            <div class="card mb-4">
                <a href="#!"><img class="card-img-top" src="{{ asset('img/nature.png') }}" alt="..." /></a>
                <div class="card-body">
                    <div class="small text-muted">{{ $post->created_at }}</div>
                    <h2 class="card-title">{{ $post->title }}</h2>
                    <p class="card-text">{{ $post->text }}</p>
                    <form method="POST" action="{{ route('posts.destroy', $post) }}">
                        @csrf
                        @method('DELETE')
                        <a class="btn btn-warning" href="{{ route('posts.edit', $post) }}">Edit</a>
                        <button type="submit" class="btn btn-danger" onclick="return confirm('Are you sure?')">Delete</button>
                    </form>
                </div>
            </div>
            <div class="mb-4">
                <a class="btn btn-primary" href="{{ route('posts.index') }}">Back</a>
            </div>
            <!-- Nested row for non-featured blog posts-->
            <div class="comment-area mt4">
                <div class="card card-y">
                    <h6 class="card-title">Leave a comment</h6>
                    <form action="{{ route('posts.comments.store', $post)}}" method="POST">
                        @csrf

                        Email:
                        <input type="email" name="email" class="form-control">
                        Comment:
                        <textarea name="text" rows="3" class="form-control"></textarea>
                        <button type="submit" class="btn btn-primary mt-3">Submit</button>
                    </form>
                </div>
            </div>

            {{-- @forelse ( $comments as $comment ) --}}
            @forelse ( $post->comments as $comment )

                <div class="card card-body-shadow-sm mt-3">
                    <div class="detai-area">
                        <h6 class="user-name mb-1"> {{ $comment->email }}
                            <small class="ms-3 text-primary">{{ $comment->created_at }}</small>
                        </h6>
                        <p class="user-comment-mb-1">
                            {{ $comment->text }}
                        </p>
                    </div>
                </div>

                @empty
                <div class="card card-body-shadow-sm mt-3">
                    <div class="detai-area">
                        <p class="user-comment-mb-1 text-center">
                           No Comments
                        </p>
                    </div>
                </div>

            @endforelse

        </div>
    </div>
</div>

@endsection

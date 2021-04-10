@extends('frontEnd.layouts.master')
@section('title',$article->title)
{{-- @section('postImage', 'http://127.0.0.1:8000/'.$article->image) --}}
@section('postImage',asset($article->image))

@section('content')
{{-- @include('frontEnd.widgets.cityWidget') --}}
<div class="col-md-7 mx-auto">

 {!!$article->content!!}</br>
 <span class="text-danger float-right">Okunma Sayısı: <b>{{$article->hit}}</b></span></br></br></br>

<div>
        @comments(['model' => $article])
</div>

</div>
   
@include('frontEnd.widgets.categoryWidget')
@endsection

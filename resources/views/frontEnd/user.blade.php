@extends('frontEnd.layouts.master')
@section('title',$user->name.' Yazar')

@section('content')
{{-- @include('frontEnd.widgets.cityWidget') --}}
<div class="col-md-7 mx-auto">
    @if(count($articles)>0)
    @include('frontEnd.widgets.articleListWidget')
    @else
    <div class="alert alert-danger">
        </h2>Bu Yazara Ait Yazı Bulunamadı!</h2>
    </div>
    @endif
</div>
@include('frontEnd.widgets.categoryWidget')
@endsection


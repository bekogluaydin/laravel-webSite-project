@extends('frontEnd.layouts.master')
@section('title','Anasayfa')

@section('content')
@include('frontEnd.widgets.gundemWidget')
<div class="col-md-7 mx-auto">
    @include('frontEnd.widgets.articleListWidget')
</div>
@include('frontEnd.widgets.categoryWidget')
@endsection
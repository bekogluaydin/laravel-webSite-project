@extends('backEnd.layouts.master')
@section('title', $article->title.' makalesini güncelle')
@section('content')

<!-- DataTales Example -->
<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-primary float-left"><strong>Makale Düzenle</strong></h6>
    </div>
    <div class="card-body">

        @if($errors->any())
        <div class="alert alert-danger">
            <ul>
                @foreach($errors->all() as $error)
                <li>{{$error}}</li>
                @endforeach
            </ul>
        </div>
        @endif

        <form method="post" action="{{route('admin.makaleler.update',$article->id)}}" enctype="multipart/form-data">
            @method('put')
            @csrf
            <div class="form-group">
                <label>Makale Başlığı</label>
                <input type="text" name="title" class="form-control" value="{{$article->title}}" required>
            </div>
            <div class="form-group">
                <label>Makale Kategori</label>
                <select class="form-control" name="category" required>
                    <option value="">Seçim Yapınız</option>
                    @foreach($categories as $category)
                    <option @if($article->categoryID==$category->id) selected @endif value="{{$category->id}}">{{$category->name}}</option>
                    @endforeach
                </select>
            </div>
            <div class="form-group">
                <label>Paylaşım Şehri</label>
                <select class="form-control" name="city" required>
                    <option value="">Seçim Yapınız</option>
                    @foreach($cities as $city)
                    <option @if($article->cityPlateNo==$city->plateNo) selected @endif value="{{$city->plateNo}}">{{$city->cityName}}</option>
                    @endforeach
                </select>
            </div>
            <div class="form-group">
                <label>Yazar</label>
                <input class="form-control" readonly="readonly" name="author" type="text" @foreach($users as $user) @if($article->userID==$user->id) value="{{$user->name}}" @endif @endforeach >
            </div>
            <div class="form-group">
                <label>Öne Çıkan Resim</label>
                <img src="{{asset($article->image)}}" class="rounded " width="300" > 
                <input type="file" name="image" class="form-control">
            </div>
            <div class="form-group">
                <label>Makale İçeriği</label>
                <textarea id="editor" name="content" class="form-control" rows="4">{!!$article->content!!}</textarea>
            </div>
            <div class="form-group">
                <button type="submit" class="btn btn-primary btn-block">Makaleyi Güncelle</button>
            </div>
        </form>
    </div>
</div>
@endsection
@section('css')
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
@endsection
@section('js')
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
<script>
    $(document).ready(function() {
        $('#editor').summernote({
            'height': 300
        });
    });

</script>
@endsection

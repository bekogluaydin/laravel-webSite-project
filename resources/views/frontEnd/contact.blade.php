@extends('frontEnd.layouts.master')
@section('title','İletişim')
@section('postImage', 'http://127.0.0.1:8000/frontEnd/img/contact-bg.jpg' )

@section('content')
<div class="col-md-8">
    @if(session('success'))
    <div class="alert alert-success">
        {{session('success')}}
    </div>
    @endif

    @if($errors->any())
    <div class="alert alert-danger">
        <ul>
            @foreach($errors->all() as $error)
            <li>{{$error}}</li>
            @endforeach
        </ul>
    </div>
    @endif

    <p>Bizimle İletişime Geçebilirsiniz.</p>

    <form method="post" action={{route('contact.post')}}>
        @csrf
        <div class="control-group">
            <div class="form-group floating-label-form-group controls">
                <label>Ad Soyad</label>
                <input type="text" class="form-control" value="{{old('name')}}" placeholder="Ad Soyad" name="name" required>
                <span style="color: red">@error('name'){{$message}}@enderror</span>
            </div>
        </div>
        <div class="control-group">
            <div class="form-group floating-label-form-group controls">
                <label>E-Posta</label>
                <input type="email" class="form-control" value="{{old('email')}}" placeholder="E-Posta Adresi" name="email" required>
                <span style="color: red">@error('email'){{$message}}@enderror</span>
            </div>
        </div>
        <div class="control-group">
            <div class="form-group col-xs-12 floating-label-form-group controls">
                <label>Telefon</label>
                <input type="tel" class="form-control" value="{{old('phone')}}" placeholder="Telefon Numarası" name="phone" required>
                <span style="color: red">@error('phone'){{$message}}@enderror</span>
            </div>
        </div>
        <div class="control-group">
            <div class="form-group">
                <label>Konu</label>
                <select class="form-control" name="topic" required>
                    <option @if(old('topic')=="Bilgi" ) selected @endif>Bilgi</option>
                    <option @if(old('topic')=="Destek" ) selected @endif>Destek</option>
                    <option @if(old('topic')=="Genel" ) selected @endif>Genel</option>
                </select>
                <span style="color: red">@error('topic'){{$message}}@enderror</span>
            </div>
        </div>
        <hr>
        <div class="control-group">
            <div class="form-group floating-label-form-group controls">
                <label>Mesajınız</label>
                <textarea rows="5" class="form-control" placeholder="Mesajınız" name="message" required>{{old('message')}}</textarea>
                <span style="color: red">@error('message'){{$message}}@enderror</span>
            </div>
        </div>
        <br>
        <div id="success"></div>
        <button type="submit" class="btn btn-primary" id="sendMessageButton">Gönder</button>
    </form>
</div>

<div class="col-md-4">
    <div class="card card-default">
        <div class="card-body">Panel Content</div>
        Adres: bla bla bla
    </div>
</div>
@endsection

@extends('backEnd.layouts.master')
@section('title', 'Silinen Makaleler')
@section('content')

<!-- DataTales Example -->
<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-primary float-left"><strong>Tüm Makaleler</strong></h6>
        <h6 class="m-0 font-weight-bold text-primary float-right text-danger">
            <strong>{{$articles->count()}}</strong> makale bulundu.
            <a href="{{route('admin.makaleler.index')}}" class="btn btn-primary btn-sm"><i class="fas fa-share-alt"></i> Paylaşılan Makaleler</a>
        </h6>
    </div>
    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <thead>
                    <tr>
                        <th>Fotoğraf</th>
                        <th>Başlık</th>
                        <th>Yazar</th>
                        <th>Kategori</th>
                        <th>Şehir</th>
                        <th>Hit</th>
                        <th>Tarih</th>
                        <th>İşlemler</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($articles as $article)
                    <tr>
                        <td>
                            <img src="{{asset($article->image)}}" width="200">
                        </td>
                        <td>{{$article->title}}</td>
                        <td>{{$article->getUser->name}}</td>
                        <td>{{$article->getCategory->name}}</td>
                        <td>{{$article->getCity->cityName}}</td>
                        <td>{{$article->hit}}</td>
                        <td>{{$article->created_at->diffForHumans()}}</td>
                        <td>
                            <a href="{{route('admin.recover.article',$article->id)}}" title="Geri Al" class="btn btn-sm btn-success"><i class="fa fa-recycle"></i></a>
                            <a href="{{route('admin.hard.delete.article',$article->id)}}" title="Kalıcı Olarak Sil" class="btn btn-sm btn-danger"><i class="fa fa-times"></i></a>
                        </td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
</div>
@endsection
@extends('backEnd.layouts.master')
@section('title', 'Paylaşılan Makaleler')
@section('content')

<!-- DataTales Example -->
<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-primary float-left"><strong>Tüm Makaleler</strong></h6>
        <h6 class="m-0 font-weight-bold text-primary float-right text-danger">
            <strong>{{$articles->count()}}</strong> makale bulundu.
            <a href="{{route('admin.trashed.article')}}" class="btn btn-warning btn-sm"><i class="fa fa-trash"></i>Çöp Kutusu</a>
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
                        <th>Durum</th>
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
                            @if(Auth::user()->id==$article->userID or Auth::user()->auth==1)<input class="switch" articleID="{{$article->id}}" type="checkbox" data-toggle="toggle" data-on="Aktif" data-off="Pasif" @if($article->status==1) checked @endif data-onstyle="outline-warning" data-offstyle="outline-info" data-style="slow">
                            @else
                            Yetkin Yok!
                            @endif
                        </td>
                        <td>
                            <a target="_blank" href="{{route('single',[$article->getCategory->slug,$article->slug])}}" title="Görüntüle" class="btn btn-sm btn-success"><i class="fa fa-eye"></i></a>
                            <a href="{{route('admin.makaleler.edit',$article->id)}}" title="Düzenle" class="btn btn-sm btn-primary"><i class="fa fa-pen"></i></a>
                            <a href="{{route('admin.delete.article',$article->id)}}" title="Sil" class="btn btn-sm btn-danger"><i class="fa fa-times"></i></a>
                        </td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
</div>
@endsection
@section('css')
<link href="https://cdn.jsdelivr.net/gh/gitbrent/bootstrap4-toggle@3.6.1/css/bootstrap4-toggle.min.css" rel="stylesheet">

<style>
    .slow .toggle-group {
        transition: left 0.7s;
        -webkit-transition: left 0.7s;
    }

    .fast .toggle-group {
        transition: left 0.1s;
        -webkit-transition: left 0.1s;
    }

    .quick .toggle-group {
        transition: none;
        -webkit-transition: none;
    }
</style>
@endsection

@section('js')
<script src="https://cdn.jsdelivr.net/gh/gitbrent/bootstrap4-toggle@3.6.1/js/bootstrap4-toggle.min.js" id = "bootStrapScript"></script>

<script>
    $(document).ready(function() {
         
         {{-- Aşağıdaki kod parçacığı sadece clas verilmiş şeylerde işlem yapar Örneğin table classsi .switch ve dinamik tablolarda sadece ilk 10 kayıtta aktif olur --}}
         {{-- $('.switch').change(function() {
            id = $(this)[0].getAttribute('articleID');
            statu= $(this).prop('checked');

            $.get("{{route('admin.switch')}}", {id:id,statu:statu}, function(data, status) {
                console.log(data);
            });
        });  --}}


        {{-- Aşağıdaki kod parçacığı sadece idsi verilmiş şeylerde işlem yaparç Örneğin table id si #datatable --}}
        {{-- $("#dataTable tbody").on("change",".switch",function() {
            id = $(this)[0].getAttribute('articleID');
            statu= $(this).prop('checked');

            $.get("{{route('admin.switch')}}", {id:id,statu:statu}, function(data, status) {
                console.log(data);
            });
        }); --}}


        $(document).on("change",".switch",function() {
            id = $(this)[0].getAttribute('articleID');
            statu= $(this).prop('checked');

            $.get("{{route('admin.switch')}}", {id:id,statu:statu}, function(data, status) {
                console.log(data);
            });
        });

        {{-- $(document).on("click", ".page-link", function() {
            var oldScript = document.getElementById("bootStrapScript");
            oldScript.remove();
            const script = document.createElement("script");
            script.id = "bootStrapScript";
            script.src = "https://cdn.jsdelivr.net/gh/gitbrent/bootstrap4-toggle@3.6.1/js/bootstrap4-toggle.min.js";
            document.body.appendChild(script);
        }); --}}
    });
</script>
@endsection
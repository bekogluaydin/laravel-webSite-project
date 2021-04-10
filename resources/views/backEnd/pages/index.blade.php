@extends('backEnd.layouts.master')
@section('title', 'Oluşturulan Sayfalar')
@section('content')

<!-- DataTales Example -->
<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-primary float-left"><strong>Tüm Sayfalar</strong></h6>
        <h6 class="m-0 font-weight-bold text-primary float-right text-danger">
            <strong>{{$pages->count()}}</strong> sayfa bulundu.
            {{-- <a href="{{route('admin.trashed.page')}}" class="btn btn-warning btn-sm"><i class="fa fa-trash"></i>Çöp Kutusu</a> --}}
        </h6>
    </div>
    <div class="card-body">
        <div id="orderSuccess" style="display:none;" class="alert alert-success">
            Sıralama başarıyla güncellendi!
        </div>
        <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <thead>
                    <tr>
                        <th>Sırala</th>
                        <th>Fotoğraf</th>
                        <th>Sayfa Başlığı</th>
                        <th>Durum</th>
                        <th>İşlemler</th>
                    </tr>
                </thead>
                <tbody id="orders">
                    @foreach($pages as $page)
                    <tr id="page_{{$page->id}}">
                        <td class="text-center" style="width: 2%"><i class="fa fa-arrows-alt-v fa-2x handle" style="cursor:move"></li></td>
                        <td>
                            <img src="{{asset($page->image)}}" width="200">
                        </td>
                        <td>{{$page->title}}</td>
                        <td>
                            @if(Auth::user()->auth==1)<input class="switch" pageID="{{$page->id}}" type="checkbox" data-toggle="toggle" data-on="Aktif" data-off="Pasif" @if($page->status==1) checked @endif data-onstyle="outline-warning" data-offstyle="outline-info" data-style="slow">
                            @else
                            Yetkin Yok!
                            @endif
                        </td>
                        <td>
                            <a target="_blank" href="{{route('pageURL',$page->slug)}}" title="Görüntüle" class="btn btn-sm btn-success"><i class="fa fa-eye"></i></a>
                            <a href="{{route('admin.page.edit',$page->id)}}" title="Düzenle" class="btn btn-sm btn-primary"><i class="fa fa-pen"></i></a>
                            <a href="{{route('admin.page.delete',$page->id)}}" title="Sil" class="btn btn-sm btn-danger"><i class="fa fa-times"></i></a>
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
<script src="https://cdn.jsdelivr.net/npm/sortablejs@1.12.0/dist/sortable.umd.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/jquery-ui.min.js"></script>

<script>
 $('#orders').sortable({
     handle:'.handle',
     update:function(){
         var siralama = $('#orders').sortable('serialize');
         $.get("{{route('admin.page.orders')}}?"+siralama,function(data,status){
             $("#orderSuccess").show();
             setTimeout(function() { $("#orderSuccess").hide(); }, 1000);
         });
     }
 });
</script>

<script>
    $(document).ready(function() {
         
        $(document).on("change",".switch",function() {
            id = $(this)[0].getAttribute('pageID');
            statu= $(this).prop('checked');

            $.get("{{route('admin.page.switch')}}", {id:id,statu:statu}, function(data, status) {});
        });
    });
</script>
@endsection
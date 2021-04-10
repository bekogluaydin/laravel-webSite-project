@extends('backEnd.layouts.master')
@section('title', 'Tüm Kategoriler')
@section('content')

<div class="row">
    <div class="col-md-4">
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-primary">Kategori Oluştur</h6>
            </div>
            @if(Auth::user()->auth==1)
            <div class="card-body">
                <form method="post" action="{{route('admin.category.create')}}">
                    @csrf
                    <div class="form-group">
                        <label>Kategori adı</label>
                        <input type="text" class="form-control" name="category" required />
                    </div>
                    <div class="form-group">
                        <button type="submit" class="btn btn-primary btn-block">Ekle</button>
                    </div>
                </form>
            </div>
            @else
            <div class="card-body">
                <div class="form-group">
                    <label>Kategori adı</label>
                    <input type="text" class="form-control" readonly="readonly" name="category" type="text" value="Yetkin Yok">
                </div>
            </div>
            @endif
        </div>
    </div>

    <div class="col-md-8">
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-primary">@yield('title')</h6>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                        <thead>
                            <tr>
                                <th>Kategori Adı</th>
                                <th>Makale Sayısı</th>
                                <th>İşlemler</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($categories as $category)
                            <tr>
                                <td>{{$category->name}}</td>
                                <td>{{$category->articleCount()}}</td>
                                <td>
                                    @if(Auth::user()->auth==1)
                                    {{-- <a target="_blank" href="{{route('single',[$article->getCategory->slug,$article->slug])}}" title="Görüntüle" class="btn btn-sm btn-success"><i class="fa fa-eye"></i></a>
                                    <a href="{{route('admin.makaleler.edit',$article->id)}}" title="Düzenle" class="btn btn-sm btn-primary"><i class="fa fa-pen"></i></a>
                                    <a href="{{route('admin.delete.article',$article->id)}}" title="Sil" class="btn btn-sm btn-danger"><i class="fa fa-times"></i></a> --}}
                                    <a category-id="{{$category->id}}" class="btn btn-sm btn-primary edit-click" title="Kategoriyi Düzenle"><i class="fa fa-edit text-white"></i></a>
                                    <a category-id="{{$category->id}}" category-name="{{$category->name}}" category-count="{{$category->articleCount()}}" class="btn btn-sm btn-danger remove-click" title="Kategoriyi Sil"><i class="fa fa-times text-white"></i></a>
                                    @else
                                    Yetkin Yok!
                                    @endif
                                </td>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- The Edit Modal -->
<div class="modal" id="editModal">
    <div class="modal-dialog">
        <div class="modal-content">
            <!-- Modal Header -->
            <div class="modal-header">
                <h4 class="modal-title">Kategori Düzenle</h4>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>
            <!-- Modal body -->
            <div class="modal-body">
                <form method="POST" action="{{route('admin.category.update')}}">
                @csrf
                    <div class="form-group">
                        <label>Kategori Adı</label>
                        <input id="category" tpye="text" class="form-control" name="category" />
                        <input type="hidden" name="id" id="category_id"/>
                    </div>
                    <div class="form-group">
                        <label>Kategori Slug</label>
                        <input id="slug" tpye="text" class="form-control" name="slug" />
                    </div>               
            </div>
            <!-- Modal footer -->
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">Kapat</button>
                <button type="submit" class="btn btn-success">Oluştur</button>
            </div>
        </form>
        </div>
    </div>
</div>
<!-- The Modal Ending-->

<!-- The Remove Modal -->
<div class="modal" id="deleteModal">
    <div class="modal-dialog">
        <div class="modal-content">
            <!-- Modal Header -->
            <div class="modal-header">
                <h4 class="modal-title">Kategori Sil</h4>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>
            <!-- Modal body -->
            <div class="modal-body">
                    <div class="alert alert-danger" id="articleAlert"> </div>
            </div>
            <!-- Modal footer -->
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">Kapat</button>
                <form method="post" action="{{route('admin.category.delete')}}">
                    @csrf
                    <input type="hidden" name="id" id="deleteId"/>
                     <button id="deleteButton" type="submit" class="btn btn-success">Sil</button>
                </form>
            </div>
        </form>
        </div>
    </div>
</div>
<!-- The Modal Ending-->
@endsection

@section('js')
<script src="https://cdn.jsdelivr.net/gh/gitbrent/bootstrap4-toggle@3.6.1/js/bootstrap4-toggle.min.js" id = "bootStrapScript"></script>

<script>
    $(document).ready(function() {
              
        $(document).on("click",".edit-click",function()
        {
            id = $(this)[0].getAttribute('category-id');         
            $.ajax({
                type:'GET',
                url:'{{route('admin.category.getdata')}}',
                data:{id:id},
                success:function(data){
                    console.log(data);
                    $('#category').val(data.name);
                    $('#slug').val(data.slug);
                    $('#category_id').val(data.id);
                    $('#editModal').modal();
                }
            });
        });

        $(document).on("click",".remove-click",function()
        {
            id = $(this)[0].getAttribute('category-id');         
            count = $(this)[0].getAttribute('category-count'); 
            name = $(this)[0].getAttribute('category-name'); 

            if(id==1){
                $('#articleAlert').html(name +' Kategorisi Silinemez, sabittir! Kategorisi olmayan veya kategorisi silinenen makaleler buraya eklenecektir.');
                $('#deleteButton').hide();
                $('#deleteModal').modal();
                return;  
            }
            
            $('#deleteButton').show(); 
            $('#deleteId').val(id);
            if(count>0){
                $('#articleAlert').html(name +' kategorisine ait '+count+' makakle bulunmaktadır. Silmek istediğinize emin misiniz?');
            }
            else{
            $('#articleAlert').html(name +' kategorisinde hiç makale bulunmamaktadır. Silmek istediğinize emin misiniz?');
            }           
            $('#deleteModal').modal();  
        });

        {{-- $(document).on("click",".edit-click",function() {
            id = $(this)[0].getAttribute('articleID');
            statu= $(this).prop('checked');

            $.get("{{route('admin.switch')}}", {id:id,statu:statu}, function(data, status) {
                console.log(data);
            });
        }); --}}       
    });
</script>
@endsection
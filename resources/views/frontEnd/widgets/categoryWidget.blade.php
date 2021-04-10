@isset($categories)
    <div class=" mr-3">
     <div class="card text-light" style="background-color: rgba(126, 217, 87);">
         <div class="card-header">
             Kategoriler
         </div>

         <div class="list-group">
             @foreach($categories as $category)
             <li class="list-group-item @if(Request::segment(2)==$category->slug) active @endif" style="background-color: rgba(126, 217, 87);">
                 <a class="text-light" @if(Request::segment(2)!=$category->slug) href="{{route('categoryURL',$category->slug)}} @endif">{{$category->name}}</a> 
                 <span class="badge bg-white float-right text-primary">{{$category->articleCount()}}</span>
             </li>
             @endforeach
         </div>
     </div>
 </div>
@endisset



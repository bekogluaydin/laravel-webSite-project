@isset($articles)
    <div class="col-md-2 ml-2">
     <div class="card text-light" style="background-color: rgba(126, 217, 87);">
         <div class="card-header">
             Gündem
         </div>

         <div class="list-group pt-0">
              @foreach($articles as $article)
             <li class="list-group-item border border-top-0 border-left-0 border-right-0 border-secondary" style="background-color: rgba(126, 217, 87);">
                 <a href="{{route('single', [$article->getCategory->slug, $article->slug])}}">
                <p class="post-title text-light m-0  small">
                    {{-- {{$article->title}} --}}
                    {!!\Illuminate\Support\Str::limit($article->title, 25)!!}
                </p>
                
            </a>
                 {{-- <span class="badge bg-danger float-right text-white">{{$category->articleCount()}}</span> --}}
             </li>
             @endforeach
         </div>
     </div>
 </div>
@endisset
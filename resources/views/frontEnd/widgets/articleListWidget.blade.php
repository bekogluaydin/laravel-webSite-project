{{-- @foreach($articles as $article)
<div class="post-preview">
    <a href="{{route('single', [$article->getCategory->slug, $article->slug])}}">
        <h2 class="post-title">
            {{$article->title}}
        </h2>
        <img src= {{asset($article->image)}} width="600">
        <p class="post-subtitle">
            {!!\Illuminate\Support\Str::limit($article->content, 70)!!}
        </p>
    </a>

    <p class="post-meta">Yazar:
        <a href="{{route('userURL',$article->getUser->user_name)}}">{{$article->getUser->name}}</a> |

        Kategori:
        <a href="{{route('categoryURL',$article->getCategory->slug)}}">{{$article->getCategory->name}}</a> |

        Şehir:
        <a href="{{route('cityURL',$article->getCity->slug)}}">{{$article->getCity->cityName}}</a>

        <span class="float-right"> {{$article->created_at->diffForHumans()}}</span>
    </p>
</div>

@if(!$loop->last)
<hr>
@endif

@endforeach
<div class="d-flex justify-content-center">{{$articles->links()}} </div> --}}

			<div class="container">
                <div class="row">
                @foreach($articles as $article)
                    <div class="col-md-4 ftco-animate">
                        <div class="work mb-4 img d-flex align-items-end" style="background-image: url({{asset($article->image)}}">
            	            <a href="{{asset($article->image)}}" class="icon image-popup d-flex justify-content-center align-items-center">
	    					    <span class="fa fa-expand"></span>
	    				    </a>
            	            <div class="desc w-100 px-4">
	                            <div class="text w-100 mb-3">
	                                {{-- <span><a href="{{route('single', [$article->getCategory->slug, $article->slug])}}"> {!!\Illuminate\Support\Str::limit($article->title, 25)!!}</a></span> --}}
	              	                <h2><a href="{{route('single', [$article->getCategory->slug, $article->slug])}}"> {!!\Illuminate\Support\Str::limit($article->title, 25)!!}</a></h2>
	                            </div>
                            </div>
                        </div>
                    </div>
                     @endforeach
                </div>
		    </div>      
        <div class="d-flex justify-content-center">{{$articles->links()}} </div>
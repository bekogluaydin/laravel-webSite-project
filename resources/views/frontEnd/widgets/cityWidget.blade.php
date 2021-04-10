@isset($city)
    <div class="col-md-2">
     <div class="card">
         <div class="card-header">
             Şehirler
         </div>

         <div class="list-group">
             @foreach($city as $cityList)
             <li class="list-group-item @if(Request::segment(2)==$cityList->slug) active @endif">
                 <a @if(Request::segment(2)!=$cityList->slug) href="{{route('cityURL',$cityList->slug)}} @endif">{{$cityList->cityName}}</a> 
                 <span class="badge bg-danger float-right text-white">{{$cityList->articleCount()}}</span>
                  {{-- dd({{route('cityURL',$cityList->slug)}}); --}}
             </li>
             @endforeach
         </div>
     </div>
 </div>
 @endisset






 
</div>
</div>
<hr>

<!-- Footer -->
<footer>
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-md-10 mx-auto">
                <ul class="list-inline text-center">

                    @php $socials=['facebook','twitter','instagram','linkedin','youtube']; @endphp
                    @foreach($socials as $social)
                    @if($config->$social!=null)
                    <li class="list-inline-item">
                        <a target="_blank" href="{{$config->$social}}">
                            <span class="fa-stack fa-lg">
                                <i class="fas fa-circle fa-stack-2x"></i>
                                <i class="fab fa-{{$social}} fa-stack-1x fa-inverse"></i>
                            </span>
                        </a>
                    </li>
                    @endif
                    @endforeach
                </ul>
                <p class="copyright text-muted">{{$config->title}} Copyright &copy; {{date('Y')}} - design by <a href="https://technovadi.com"> TechnoVadi</a></p>
            </div>
        </div>
    </div>
</footer>

<!-- Bootstrap core JavaScript -->
<script src="{{asset('frontEnd/')}}/vendor/jquery/jquery.min.js"></script>
<script src="{{asset('frontEnd/')}}/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Custom scripts for this template -->
<script src="{{asset('frontEnd/')}}/js/clean-blog.min.js"></script>

<!-- aldıklarım -->

<script src="{{asset('frontEnd/')}}/js/jquery.min.js"></script>
<script src="{{asset('frontEnd/')}}/js/jquery-migrate-3.0.1.min.js"></script>
<script src="{{asset('frontEnd/')}}/js/jquery.waypoints.min.js"></script>
<script src="{{asset('frontEnd/')}}/js/jquery.stellar.min.js"></script>
<script src="{{asset('frontEnd/')}}/js/owl.carousel.min.js"></script>
<script src="{{asset('frontEnd/')}}/js/jquery.magnific-popup.min.js"></script>
<script src="{{asset('frontEnd/')}}/js/main.js"></script>

<!--aldıklarım -->

</body>

</html>
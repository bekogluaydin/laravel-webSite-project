</div>
<!-- /.container-fluid -->
</div>
<!-- End of Main Content -->

<!-- Footer -->
<footer class="sticky-footer bg-white">
    <div class="container my-auto">
        <div class="copyright text-center my-auto">
            <span>Copyright &copy; PatiJoy 2019-{{date('Y')}} by <a href="https://technovadi.com">TechnoVadi</a></span>
        </div>
    </div>
</footer>
<!-- End of Footer -->

</div>
<!-- End of Content Wrapper -->

</div>
<!-- End of Page Wrapper -->

<!-- Scroll to Top Button-->
<a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
</a>

<!-- Logout Modal-->
<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Çıkış Yapmak İstediğinden Emin misin?</h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body">Oturumu Sonlandırmak için "Çıkış" basın.</div>
            <div class="modal-footer">
                <button class="btn btn-secondary" type="button" data-dismiss="modal">İptal</button>
                <a class="btn btn-primary" href="{{route('admin.logout')}}">Çıkış Yap</a>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap core JavaScript-->
<script src="/backEnd/vendor/jquery/jquery.min.js"></script>
<script src="/backEnd/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Core plugin JavaScript-->
<script src="/backEnd/vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Custom scripts for all pages-->
<script src="/backEnd/js/sb-admin-2.min.js"></script>

<!-- Page level plugins -->
<script src="/backEnd/vendor/chart.js/Chart.min.js"></script>

<!-- Page level custom scripts -->
<script src="/backEnd/js/demo/chart-area-demo.js"></script>
<script src="/backEnd/js/demo/chart-pie-demo.js"></script>


<!-- Page level plugins -->
<script src="/backEnd/vendor/datatables/jquery.dataTables.min.js"></script>
<script src="/backEnd/vendor/datatables/dataTables.bootstrap4.min.js"></script>

<!-- Page level custom scripts -->
<script src="/backEnd/js/demo/datatables-demo.js"></script>

@yield('js')
@toastr_js
@toastr_render
</body>
</html>

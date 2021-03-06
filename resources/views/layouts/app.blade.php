<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>@yield('title')</title>
    
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@300;400;600;700;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="{{url('assets/css/bootstrap.css')}}">
    
<link rel="stylesheet" href="{{url('assets/vendors/jquery-datatables/jquery.dataTables.min.css')}}">
<link rel="stylesheet" href="{{url('assets/vendors/jquery-datatables/jquery.dataTables.bootstrap5.min.css')}}">
<link rel="stylesheet" href="{{url('assets/vendors/fontawesome/all.min.css')}}">
<style>
    table.dataTable td{
        padding: 15px 8px;
    }
    .fontawesome-icons .the-icon svg {
        font-size: 24px;
    }
    .float{
	background: #605ca8;
	color: white;
	border-top: 0;
	border-left: 0;
	border-right: 0;
	text-decoration: none;
	font-family: sans-serif;
	font-size: 14pt;
	position:fixed;
	width:60px;
	height:60px;
	bottom:40px;
	right:40px;
	background-color:#605ca8;
	color:#FFF;
	border-radius:50px;
	text-align:center;
	box-shadow: 2px 2px 3px #999;
	margin-top:32px;
}
</style>

    <link rel="stylesheet" href="{{url('assets/vendors/perfect-scrollbar/perfect-scrollbar.css')}}">
    <link rel="stylesheet" href="{{url('assets/vendors/bootstrap-icons/bootstrap-icons.css')}}">
    <link rel="stylesheet" href="{{url('assets/css/app.css')}}">
    <link rel="shortcut icon" href="{{url('assets/images/favicon.svg')}}" type="image/x-icon">
</head>

<body>
    <div id="app">
        <div id="sidebar" class="active">
            <div class="sidebar-wrapper active">
    <div class="sidebar-header">
        <div class="d-flex justify-content-between">
            <div class="logo">
                <a href="{{url('/')}}">
                    <h2>Sipagung</h2>
                </a>
            </div>
            <div class="toggler">
                <a href="#" class="sidebar-hide d-xl-none d-block"><i class="bi bi-x bi-middle"></i></a>
            </div>
        </div>
    </div>
    <div class="sidebar-menu">
        <ul class="menu">
            
            <li
                class="sidebar-item  ">
                <a href="{{url('/')}}" class='sidebar-link'>
                    <i class="bi bi-grid-fill"></i>
                    <span>Dashboard</span>
                </a>
            </li>
            
            <li class="sidebar-title">Diagnosa</li>
            
            <li
                class="sidebar-item  has-sub">
                <a href="#" class='sidebar-link'>
                    <i class="bi bi-bug-fill"></i>
                    <span>Diagnosa Hama</span>
                </a>
                <ul class="submenu ">
                    <li class="submenu-item ">
                        <a href="{{url('/diagnosahama')}}">Diagnosa</a>
                    </li>
                    <li class="submenu-item ">
                        <a href="{{url('/riwayathama')}}">Riwayat</a>
                    </li>
                </ul>
            </li>
            
            <li
                class="sidebar-item has-sub">
                <a href="#" class='sidebar-link'>
                  <i class="bi bi-bug"></i>
                    <span>Diagnosa Penyakit</span>
                </a>
                <ul class="submenu ">
                    <li class="submenu-item ">
                        <a href="{{url('/diagnosapenyakit')}}">Diagnosa</a>
                    </li>
                </ul>
            </li>
            
            
            <li class="sidebar-title">Menu</li>
            
            <li
                class="sidebar-item  ">
                <a href="form-layout.html" class='sidebar-link'>
                    <i class="bi bi-lock-fill"></i>
                    <span>Post Hama</span>
                </a>
            </li>
            
        </ul>
    </div>
    <button class="sidebar-toggler btn x"><i data-feather="x"></i></button>
</div>
        </div>
        <div id="main">
            <header class="mb-3">
                <a href="#" class="burger-btn d-block d-xl-none">
                    <i class="bi bi-justify fs-3"></i>
                </a>
            </header>
            
<div class="page-heading">
    @yield('content')
</div>

            <footer>
                <div class="footer clearfix mb-0 text-muted">
                    <div class="float-start">
                        <p>2021 &copy; Sipagung</p>
                    </div>
                    <div class="float-end">
                        <p>Crafted with <span class="text-danger"><i class="bi bi-heart"></i></span> by <a
                                href="http://ahmadsaugi.com">Audy Ruslan</a></p>
                    </div>
                </div>
            </footer>
        </div>
    </div>
    <script src="{{url('assets/vendors/perfect-scrollbar/perfect-scrollbar.min.js')}}"></script>
    <script src="{{url('assets/js/bootstrap.bundle.min.js')}}"></script>
    
<script src="{{url('assets/vendors/jquery/jquery.min.js')}}"></script>
<script src="{{url('assets/vendors/jquery-datatables/jquery.dataTables.min.js')}}"></script>
<script src="{{url('assets/vendors/jquery-datatables/custom.jquery.dataTables.bootstrap5.min.js')}}"></script>
<script src="{{url('assets/vendors/fontawesome/all.min.js')}}"></script>
<script>
    // Jquery Datatable
    let jquery_datatable = $("#table1").DataTable()
</script>

<script src="{{url('assets/js/mazer.js')}}"></script>
</body>

</html>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    {{-- Favicon --}}
    <link rel="icon" href="images/favicon.ico" type="image/x-icon">
    {{-- Core theme CSS (includes Bootstrap) --}}
    <link rel="stylesheet" href="assets/css/style.css">
    <title>Sipagung | Home</title>
</head>

<body>
    {{-- Responsive navbar --}}
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container">
            <a class="navbar-brand" href="/">Sipagung</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                    <li class="nav-item"><a class="nav-link active" aria-current="page" href="#">Home</a></li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button"
                            data-bs-toggle="dropdown" aria-expanded="false">Menu Hama</a>
                        <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="/diagnosahama">Diagnosa Hama</a></li>
                            <li><a class="dropdown-item" href="/hama">Jenis Hama</a></li>
                            <li><a class="dropdown-item" href="/gejalahama">Gejala Hama</a></li>
                            <li><a class="dropdown-item" href="/kondisihama">Kondisi Hama</a></li>
                            <li><a class="dropdown-item" href="/basishama">Basis Hama</a></li>
                        </ul>
                    </li>
                    <li class="nav-item"><a class="nav-link" href="/login">Login</a></li>
                </ul>
            </div>
        </div>
    </nav>
    {{-- Page content --}}
    <div class="container">
        <div class="text-center mt-5">
            <h1>A Bootstrap 5 Starter Template</h1>
            <p class="lead">A complete project boilerplate built with Bootstrap</p>
            <p>Bootstrap v5.1.3</p>
        </div>
    </div>
    {{-- <!-- Bootstrap core JS--> --}}
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    {{-- <!-- Core theme JS--> --}}
    <script src="js/scripts.js"></script>
</body>

</html>

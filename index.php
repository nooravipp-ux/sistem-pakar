<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Home</title>
  <link rel="shortcut icon" type="image/png" href="assets/img/law.png">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i">
  <link rel="stylesheet" href="assets/fontawesome/css/all.min.css">

  <!-- Bootstrap core CSS -->
  <link href="assets/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="assets/css/scrolling-nav.css" rel="stylesheet">

</head>

<body id="page-top">

  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
    <div class="container-fluid">
        <a class="navbar-brand js-scroll-trigger" href="#page-top">
        <i class="fas fa-balance-scale"></i>
        Pakar Hukum
      </a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav">
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#about">Tentang Sistem Coy</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#services">Pasal KUHP</a>
          </li>
        </ul>
      </div>
      <div class="float-right">
          <a class="nav-link" href="login/index.php">
                  <span class="mr-2 d-none d-lg-inline text-white-600">Login</span><i class="fas fa-sign-in-alt"></i>
          </a>
        </div>
    </div>
  </nav>

  <header class="bg-primary text-white">
    <div class="container text-center">
      <h1>Selamat Datang di Sistem Pakar Hukum</h1>
      <img src="assets/img/Lambang_Bareskrim_Polri.png" class="mx-auto d-block" alt="Responsive image">
    </div>
  </header>

  <section id="about">
    <div class="container">
      <div class="row">
        <div class="col-lg-8 mx-auto">
          <h2>Tentang Sitem Pakar </h2>
          <p class="lead">Sitem pakar ini di buat untuk membantu kepolisian yang bertugas dalam melakukan BAP kepada pelaku kejahatan pencurian. Sistem ini mempunyai beberapa fitur, diantaranya :</p>
          <ul>
            <li>Clickable nav links that smooth scroll to page sections</li>
            <li>Responsive behavior when clicking nav links perfect for a one page website</li>
            <li>Bootstrap's scrollspy feature which highlights which section of the page you're on in the navbar</li>
            <li>Minimal custom CSS so you are free to explore your own unique design options</li>
          </ul>
        </div>
      </div>
    </div>
  </section>

  <section id="services" class="bg-info text-white">
    <div class="container">
      <?php include("templates/kuhp.php"); ?>
    </div>
  </section>

  <!-- Footer -->
  <footer class="py-5 bg-dark">
    <div class="container">
      <p class="m-0 text-center text-white">Copyright &copy; Pakar Hukum 2019</p>
    </div>
    <!-- /.container -->
  </footer>

  <!-- Bootstrap core JavaScript -->
  <script src="assets/js/jquery.min.js"></script>
  <script src="assets/js/bootstrap.bundle.min.js"></script>

  <!-- Plugin JavaScript -->
  <script src="assets/js/jquery.easing.min.js"></script>

  <!-- Custom JavaScript for this theme -->
  <script src="assets/js/scrolling-nav.js"></script>

</body>

</html>

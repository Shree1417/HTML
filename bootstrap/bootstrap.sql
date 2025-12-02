<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Bootstrap Webpage</title>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container">
      <a class="navbar-brand" href="#">MyWebsite</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ms-auto">
          <li class="nav-item"><a class="nav-link active" href="#">Home</a></li>
          <li class="nav-item"><a class="nav-link" href="#">About</a></li>
          <li class="nav-item"><a class="nav-link" href="#">Services</a></li>
          <li class="nav-item"><a class="nav-link" href="#">Contact</a></li>
        </ul>
      </div>
    </div>
  </nav>

  <section class="bg-light text-center py-5">
    <div class="container">
      <h1 class="display-4 fw-bold">Welcome to My Webpage</h1>
      <p class="lead">Hello!</p>
      <a href="#" class="btn btn-primary btn-lg mt-3">Learn More</a>
    </div>
  </section>

 
  <section class="py-5">
    <div class="container">
      <h2 class="mb-4 text-center">Our Services</h2>
      <div class="row g-4">
        
        <div class="col-md-4">
          <div class="card shadow-sm">
            <div class="card-body text-center">
              <h5 class="card-title">Service One</h5>
              <p class="card-text">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ducimus est, asperiores incidunt quod qui error enim commodi, itaque eligendi, et tenetur illo suscipit ad odio dolor ratione laborum. Ea, natus?.</p>
              <a href="#" class="btn btn-outline-primary">Read More</a>
            </div>
          </div>
        </div>

        <div class="col-md-4">
          <div class="card shadow-sm">
            <div class="card-body text-center">
              <h5 class="card-title">Service Two</h5>
              <p class="card-text">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Expedita vero, neque sequi voluptatem cumque unde ipsam quidem accusamus illo natus maxime tenetur! Nihil in voluptas praesentium molestias nulla consequatur alias!.</p>
              <a href="#" class="btn btn-outline-primary">Read More</a>
            </div>
          </div>
        </div>

        <div class="col-md-4">
          <div class="card shadow-sm">
            <div class="card-body text-center">
              <h5 class="card-title">Service Three</h5>
              <p class="card-text">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Esse omnis, beatae amet in sapiente tempore porro quasi dolor id quam error autem sequi debitis pariatur, veritatis ratione suscipit atque deleniti?.</p>
              <a href="#" class="btn btn-outline-primary">Read More</a>
            </div>
          </div>
        </div>

      </div>
    </div>
  </section>


  <footer class="bg-dark text-white text-center py-3">
    <p class="mb-0">© 2025 MyWebsite. All Rights Reserved.</p>
  </footer>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
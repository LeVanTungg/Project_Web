<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<nav class="navbar navbar-expand-lg navbar-light" id="mainNav">
		<div class="container px-4 px-lg-5">
			<a class="navbar-brand" href="index.html">Nông hải sản Việt Nam</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				Menu <i class="fas fa-bars"></i>
			</button>

			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ms-auto py-4 py-lg-0">
					<li class="nav-item"><a class="nav-link px-lg-3 py-3 py-lg-4"
						href="aCate">Home</a></li>
					<li class="nav-item"><a class="nav-link px-lg-3 py-3 py-lg-4"
						href="aCate?cid=1">Nông sản</a></li>
					<!-- 			 <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Dropdown
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">Action</a>
          <a class="dropdown-item" href="#">Another action</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Something else here</a>
        </div>
      </li> -->
					<li class="nav-item"><a class="nav-link px-lg-3 py-3 py-lg-4"
						href="aCate?cid=2">Hải sản</a></li>
					<li class="nav-item"><a class="nav-link px-lg-3 py-3 py-lg-4"
						href="login">Đăng nhập</a></li>
						<li class="nav-item"><a class="nav-link px-lg-3 py-3 py-lg-4"
						href="signup">Đăng ký</a></li>
					<!-- <li class="nav_item">
						<form action="search" method="post">
							<div class="form-outline">
								<input type="search" id="txtSearch" class="form-control" />
								 <label class="form-label" for="form1">Search</label>
							</div>
							<button type="button" class="btn btn-primary add_button">
								<i class="fas fa-search"></i>
							</button>
						</form>


					</li> -->
				</ul>
				<form class="add_form" action="search" method="post">

					<input value="${txt}" type="search" id="txtSearch" name="txtSearch"
						class="form-control" />
					<!--  <label class="form-label" for="form1">Search</label> -->

					<button type="submit" type="button"
						class="btn btn-primary add_button">
						<i class="fas fa-search"></i>
					</button>
				</form>
			</div>

		</div>


	</nav>
</body>
</html>
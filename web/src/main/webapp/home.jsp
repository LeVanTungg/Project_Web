<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

  <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Clean Blog - Start Bootstrap Theme</title>
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800" rel="stylesheet" type="text/css" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
          <link href="css/add.css" rel="stylesheet" />
        <%@  taglib  prefix="c"   uri="http://java.sun.com/jsp/jstl/core"  %>
        <jsp:useBean id = "d" scope = "request" class="dao.CateDAO"/>
         <jsp:useBean id = "a" scope = "request" class="dao.ArticleDAO"/>
         
        
</head>

<body>
        <!-- Navigation-->
       <%@include file="header.jsp" %>
       
        <!-- Page Header-->
        <header class="masthead" style="background-image: url('assets/img/home-bg.jpg')">
            <div class="container position-relative px-4 px-lg-5">
                <div class="row gx-4 gx-lg-5 justify-content-center">
                    <div class="col-md-10 col-lg-8 col-xl-7">
                        <div class="site-heading">
                            <h1>Nông hải sản Việt Nam</h1>
                            <span class="subheading">Xanh sạch đẹp</span>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <!-- Main Content-->
        <div class="container px-4 px-lg-5">
            <div class="row gx-4 gx-lg-5 justify-content-center">
                <div class="col-md-10 col-lg-8 col-xl-7">
                    <!-- Post preview-->
                    <div class="post-preview">
                        <a href="post.html">
                            <h2 class="post-title">${resultSearch}</h2>
                            <h3 class="post-subtitle">Hãy trải nghiệm sản phẩm của chúng tôi</h3>
                        </a>
                        <p class="post-meta">
                            Posted by
                            <a href="#!">Hsvn</a>
                            Public September 24, 2022
                        </p>
                    </div>
                    <!-- Divider-->
                    
                    <!-- Post preview-->
                   
                    <!-- Divider-->
                    <c:forEach items="${list}" var="i">
                     <hr class="my-4" />
                    <!-- Post preview-->
                    <div class="post-preview">
                        <a href="PostControl?aid=${i.id}">
                            <img class="fix-image" src="${i.imageLink}">
                            <h2 class="post-title">${i.title}</h2>
                            <h3 class="post-subtitle"> ${i.title} </h3>
                        </a>
                        <p class="post-meta">
                            Posted by
                            <a href="#!">Start Bootstrap</a>
                            on ${i.publicDate}
                        </p>
                    </div>
                    </c:forEach>
                   
                   
                   
                   
                    <!-- Divider-->
                    <hr class="my-4" />
                    <!-- Pager-->
                    <div class="d-flex justify-content-end mb-4"><a class="btn btn-primary text-uppercase" href="#!">Older Posts →</a></div>
                </div>
                <div class="col-md-2 col-lg-4 col-xl-5">
             		
                    <!-- Post preview-->
                    <div class="post-preview">
                     	<h2 class="post-title">Được nhiều người quan tâm</h2>
                     	<c:forEach items="${listView}" var="o">
	                     	<a href="PostControl?aid=${o.id}">
	                            <p>${o.title}</p>
	                        </a>
                     	</c:forEach>
                        <h2 class="post-title">Bài viết mới nhất</h2>
                     	<c:forEach items="${listNew}" var="o">
	                     	<a href="PostControl?aid=${o.id}">
	                            <p>${o.title}</p>
	                        </a>
                     	</c:forEach>
                     	<h2 class="post-title">Bài viết tuần trước</h2>
                     	<c:forEach items="${listWeek}" var="o">
	                     	<a href="PostControl?aid=${o.id}">
	                            <p>${o.title}</p>
	                        </a>
                     	</c:forEach>
                        <p class="post-meta">
                            Posted by
                            <a href="#!">Start Bootstrap</a>
                            on July 8, 2022
                        </p>
                    </div>
                    <hr class="my-4" />
            </div>
            </div>
        </div>
        <!-- Footer-->
        <footer class="border-top">
            <div class="container px-4 px-lg-5">
                <div class="row gx-4 gx-lg-5 justify-content-center">
                    <div class="col-md-10 col-lg-8 col-xl-7">
                        <ul class="list-inline text-center">
                            <li class="list-inline-item">
                                <a href="#!">
                                    <span class="fa-stack fa-lg">
                                        <i class="fas fa-circle fa-stack-2x"></i>
                                        <i class="fab fa-twitter fa-stack-1x fa-inverse"></i>
                                    </span>
                                </a>
                            </li>
                            <li class="list-inline-item">
                                <a href="#!">
                                    <span class="fa-stack fa-lg">
                                        <i class="fas fa-circle fa-stack-2x"></i>
                                        <i class="fab fa-facebook-f fa-stack-1x fa-inverse"></i>
                                    </span>
                                </a>
                            </li>
                            <li class="list-inline-item">
                                <a href="#!">
                                    <span class="fa-stack fa-lg">
                                        <i class="fas fa-circle fa-stack-2x"></i>
                                        <i class="fab fa-github fa-stack-1x fa-inverse"></i>
                                    </span>
                                </a>
                            </li>
                        </ul>
                        <div class="small text-center text-muted fst-italic">Copyright &copy; Your Website 2022</div>
                    </div>
                </div>
            </div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>

</html>
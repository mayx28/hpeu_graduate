<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en" class="h-100">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="resource/plugins/bootstrap/css/bootstrap.css">
    <title>学生信息筛选系统</title>
    <style type="text/css">
    nav {
        z-index: 1000;
    }

    textarea {
        resize: none;
    }

    .navbar .nav-item .nav-link.active {
        color: #16a2b8;
    }

    .btn {
        cursor: pointer;
    }

    #portalSection {
        background-image: url(images/background.jpg);
    }
    #portalSection a{
        float: right;
        margin-right: 25px;
        color: #2D2B2B;

    }
    #portalSection a:hover{
        color: #833844;
        text-decoration: none;
    }
    #skillSection .progress {
        height: 30px;
    }
    #portalSection .btn-group{
        float: right;
        margin-top: 20px;
        margin-right: 100px;
    }
</style>
</head>

<body class="h-100 navbar-ex">
    <section id="portalSection" class="h-100 pt-5">
        <h5><a href="InfoList" >进入>></a></h5>
        <div class="container h-100 pt-2 d-flex justify-content-center align-items-center">
            <div class="row h-25 w-100">
                <div class="col-md-6 d-flex justify-content-center align-items-center">
                    <img class="w-50 rounded-circle bg-white p-2" src="images/avatar.jpg">
                </div>
                <div class="col-md-6 d-flex flex-column justify-content-center text-center">
                    <h1>May</h1>
                    <div class="border border-info my-3"></div>
                    <h1>学生信息筛选系统</h1>
                </div>
            </div>
        </div>
    </section>
    <footer class="py-3">
        <div class="container text-center">
            <p>Copyright © 2018. may版权所有.</p>
        </div>
    </footer>
    <script src="resource/plugins/jQuery/jquery.min.js"></script>
    <script src="resource/plugins/popper/popper.min.js"></script>
    <script src="resource/plugins/bootstrap/js/bootstrap.min.js"></script>
</body>

</html>
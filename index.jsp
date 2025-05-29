<%-- 
    Document   : index
    Created on : 14 may. 2025, 09:32:13
    Author     : xj109
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="recursos/css/bootstrap.min.css"/>
    </head>
    <body class="vh-100 d-flex bg-body-secondary align-items-center justify-content-center">
        <div class="card p-5" style="width: 100%; max-width: 400px;">
            <div class="user d-flex justify-content-center">
                <img src="recursos/img/anonymous-hidden-incognito-icon-blue-color-design-anonymous-hidden-incognito-icon-vector-eps-file-perfect-use-print-media-web-250842657.jpg" width="200" height="200" alt="alt"/>
            </div>
            <form action="login" method="post">
                <div class="mb-3">
                    <label for="email" class="form-label">Email:</label>
                    <input type="email" class="form-control" id="email" name="email" placeholder="name@example.com">
                </div>
                <div class="mb-3">
                    <label for="password" class="form-label">Password</label>
                    <input type="password" class="form-control" id="password" name="password" placeholder="name@example.com">
                </div>
                <div class="d-grid gap-2">
                    <input class="btn btn-primary" type="submit" value="Enviar">
                </div>

            </form>
        </div>

        <script src="recursos/js/bootstrap.bundle.min.js"></script>
    </body>
</html>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%@ taglib prefix="sitemesh" uri="http://www.opensymphony.com/sitemesh/decorator" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="utf-8" />
            <meta name="viewport" content="width=device-width, initial-scale=1" />
            <title>
                <sitemesh:write property="title" default="BT05 App" />
            </title>
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
        </head>

        <body>
            <jsp:include page="/WEB-INF/views/header.jspf" />

            <div class="container mt-4">
                <sitemesh:write property="body" />
            </div>

            <jsp:include page="/WEB-INF/views/footer.jspf" />
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
        </body>

        </html>
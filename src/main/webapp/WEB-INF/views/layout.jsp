<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <title>BT05 App</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
    </head>

    <body>
        <jsp:include page="/WEB-INF/views/header.jspf" />

        <div style="background: #fff3cd; padding:6px; text-align:center; font-weight:bold;">DEBUG: layout.jsp rendered
        </div>

        <div class="container mt-4">
            <%-- Try EL include first; if not available, fall back to request parameter --%>
                <jsp:include page="${param.body}" />
                <% if (request.getParameter("body") !=null) { %>
                    <jsp:include page='<%= request.getParameter("body") %>' />
                    <% } %>
        </div>

        <jsp:include page="/WEB-INF/views/footer.jspf" />
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    </body>

    </html>
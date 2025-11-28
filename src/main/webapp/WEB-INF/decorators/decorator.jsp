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
            <style>
                :root {
                    --primary-color: #2c3e50;
                    --secondary-color: #3498db;
                    --accent-color: #e74c3c;
                    --success-color: #27ae60;
                }

                body {
                    background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
                    min-height: 100vh;
                    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                }

                .header-bar {
                    background: linear-gradient(90deg, var(--primary-color) 0%, var(--secondary-color) 100%);
                    color: white;
                    padding: 1.5rem;
                    box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
                }

                .header-bar strong {
                    font-size: 1.1rem;
                    font-weight: 700;
                    letter-spacing: 0.5px;
                }

                .header-bar nav a {
                    background: rgba(255, 255, 255, 0.15) !important;
                    border: 1px solid rgba(255, 255, 255, 0.3) !important;
                    color: white !important;
                    margin-right: 0.5rem;
                    transition: all 0.3s ease;
                }

                .header-bar nav a:hover {
                    background: var(--secondary-color) !important;
                    transform: translateY(-2px);
                    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
                }

                .footer-bar {
                    background: linear-gradient(90deg, var(--primary-color) 0%, #1a252f 100%);
                    color: white;
                    padding: 2rem;
                    box-shadow: 0 -4px 15px rgba(0, 0, 0, 0.2);
                    margin-top: 2rem;
                }

                .footer-bar a {
                    color: var(--secondary-color);
                    text-decoration: none;
                    font-weight: 600;
                    transition: all 0.3s ease;
                }

                .footer-bar a:hover {
                    color: var(--accent-color);
                    text-decoration: underline;
                }

                .container {
                    background: white;
                    padding: 2rem;
                    border-radius: 12px;
                    box-shadow: 0 8px 24px rgba(0, 0, 0, 0.1);
                    margin-bottom: 2rem;
                }

                h1,
                h2,
                h3,
                h4,
                h5,
                h6 {
                    color: var(--primary-color);
                    font-weight: 700;
                    margin-bottom: 1.5rem;
                }

                .table {
                    border-radius: 8px;
                    overflow: hidden;
                    box-shadow: 0 2px 8px rgba(0, 0, 0, 0.05);
                }

                .table thead {
                    background: linear-gradient(90deg, var(--primary-color) 0%, var(--secondary-color) 100%);
                    color: white;
                }

                .table tbody tr {
                    transition: all 0.2s ease;
                }

                .table tbody tr:hover {
                    background-color: #f0f8ff;
                    box-shadow: inset 0 0 10px rgba(52, 152, 219, 0.1);
                }

                .table tbody tr:nth-child(even) {
                    background-color: #f9f9f9;
                }

                .btn-primary {
                    background: linear-gradient(90deg, var(--secondary-color) 0%, #2980b9 100%);
                    border: none;
                    font-weight: 600;
                    transition: all 0.3s ease;
                    box-shadow: 0 4px 8px rgba(52, 152, 219, 0.3);
                }

                .btn-primary:hover {
                    transform: translateY(-2px);
                    box-shadow: 0 8px 16px rgba(52, 152, 219, 0.4);
                    background: linear-gradient(90deg, #2980b9 0%, #1f618d 100%);
                }

                .btn-outline-secondary {
                    color: var(--primary-color);
                    border-color: var(--primary-color);
                    font-weight: 600;
                    transition: all 0.3s ease;
                }

                .btn-outline-secondary:hover {
                    background: var(--primary-color);
                    border-color: var(--primary-color);
                    color: white;
                }

                .btn-outline-danger {
                    color: var(--accent-color);
                    border-color: var(--accent-color);
                    font-weight: 600;
                    transition: all 0.3s ease;
                }

                .btn-outline-danger:hover {
                    background: var(--accent-color);
                    border-color: var(--accent-color);
                    color: white;
                }

                .btn-outline-success {
                    color: var(--success-color);
                    border-color: var(--success-color);
                    font-weight: 600;
                    transition: all 0.3s ease;
                }

                .btn-outline-success:hover {
                    background: var(--success-color);
                    border-color: var(--success-color);
                    color: white;
                }

                .form-control,
                .form-select {
                    border: 2px solid #e0e0e0;
                    border-radius: 8px;
                    padding: 0.75rem;
                    transition: all 0.3s ease;
                    font-weight: 500;
                }

                .form-control:focus,
                .form-select:focus {
                    border-color: var(--secondary-color);
                    box-shadow: 0 0 0 0.2rem rgba(52, 152, 219, 0.25);
                }

                .card {
                    border: none;
                    border-radius: 12px;
                    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
                    overflow: hidden;
                }

                .card-body {
                    padding: 2rem;
                }

                .card-title {
                    color: var(--primary-color);
                    font-weight: 700;
                    border-bottom: 3px solid var(--secondary-color);
                    padding-bottom: 1rem;
                }

                .alert-danger {
                    background: linear-gradient(90deg, #fadbd8 0%, #f5b7b1 100%);
                    border: 2px solid var(--accent-color);
                    color: var(--primary-color);
                    border-radius: 8px;
                }

                .form-signin {
                    max-width: 330px;
                    padding: 15px;
                    margin: 0 auto;
                }

                .form-signin .form-control {
                    position: relative;
                    height: auto;
                    padding: 10px;
                    margin-bottom: 10px;
                    border-radius: 8px;
                    border: 2px solid #e0e0e0;
                }

                .form-signin .form-control:focus {
                    z-index: 2;
                    border-color: var(--secondary-color);
                    box-shadow: 0 0 0 0.2rem rgba(52, 152, 219, 0.25);
                }

                .form-signin .btn {
                    margin-top: 10px;
                    font-weight: 600;
                }

                .badge {
                    background: linear-gradient(90deg, var(--secondary-color) 0%, #2980b9 100%);
                    padding: 0.5rem 0.75rem;
                    font-weight: 600;
                }

                .d-flex {
                    align-items: center;
                }
            </style>
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
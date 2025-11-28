<%@ page contentType="text/html;charset=UTF-8" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <!DOCTYPE html>
        <html>

        <head>
            <title>Login - BT05</title>
        </head>

        <body>

            <div class="container mt-4">
                <div class="row justify-content-center mt-4">
                    <div class="col-md-6">
                        <div class="card">
                            <div class="card-body">
                                <h3 class="card-title mb-3">Please sign in</h3>
                                <form method="post" action="/login">
                                    <div class="mb-3">
                                        <label class="form-label">Username</label>
                                        <input class="form-control" name="username" />
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label">Password</label>
                                        <input class="form-control" type="password" name="password" />
                                    </div>
                                    <button class="btn btn-primary" type="submit">Login</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </body>

        </html>
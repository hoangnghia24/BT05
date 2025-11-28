<%@ page contentType="text/html;charset=UTF-8" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <!DOCTYPE html>
        <html>

        <head>
            <title>User Form - BT05</title>
        </head>

        <body>

            <div class="container mt-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">User Form</h5>
                        <form method="post" action="/admin/users/save">
                            <div class="mb-3">
                                <label class="form-label">Username</label>
                                <input class="form-control" name="username" value="${user.username}" />
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Fullname</label>
                                <input class="form-control" name="fullname" value="${user.fullname}" />
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Email</label>
                                <input class="form-control" name="email" value="${user.email}" />
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Password</label>
                                <input class="form-control" type="password" name="password" />
                            </div>
                            <div class="mb-3 form-check">
                                <input type="checkbox" class="form-check-input" name="admin" ${user.admin ? 'checked'
                                    : '' } />
                                <label class="form-check-label">Admin</label>
                            </div>
                            <button class="btn btn-primary">Save</button>
                            <a class="btn btn-secondary" href="/admin/users">Cancel</a>
                        </form>
                    </div>
                </div>
            </div>
        </body>

        </html>
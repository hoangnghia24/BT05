<%@ page contentType="text/html;charset=UTF-8" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <title>User Form - BT05</title>
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
                    <div class="form-check mb-3">
                        <input type="checkbox" class="form-check-input" id="adminCheck" name="admin" ${user.admin
                            ? 'checked' : '' } />
                        <label class="form-check-label" for="adminCheck">Admin</label>
                    </div>
                    <div class="d-flex gap-2">
                        <button class="btn btn-primary">Save</button>
                        <a class="btn btn-secondary" href="/admin/users">Cancel</a>
                    </div>
                </form>
            </div>
        </div>
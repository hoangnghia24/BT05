<%@ page contentType="text/html;charset=UTF-8" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <title>Users - BT05</title>
        <div class="card">
            <div class="card-body">
                <div class="d-flex justify-content-between align-items-center mb-3">
                    <div>
                        <h3 class="mb-0">Users <span class="badge ms-2">${users != null ? users.size() : 0}</span></h3>
                        <small class="text-muted">Registered users</small>
                    </div>
                    <a class="btn btn-primary" href="/admin/users/new">New User</a>
                </div>

                <div class="table-responsive">
                    <table class="table table-hover align-middle mb-0">
                        <thead>
                            <tr>
                                <th>Username</th>
                                <th>Fullname</th>
                                <th>Email</th>
                                <th>Admin</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="u" items="${users}">
                                <tr>
                                    <td>${u.username}</td>
                                    <td>${u.fullname}</td>
                                    <td>${u.email}</td>
                                    <td>${u.admin}</td>
                                    <td>
                                        <a class="btn btn-sm btn-outline-secondary"
                                            href="/admin/users/edit/${u.username}">Edit</a>
                                        <a class="btn btn-sm btn-outline-danger ms-1"
                                            href="/admin/users/delete/${u.username}">Delete</a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
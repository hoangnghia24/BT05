<%@ page contentType="text/html;charset=UTF-8" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <div class="d-flex justify-content-between align-items-center mb-3">
            <h3>Users</h3>
            <a class="btn btn-primary" href="/admin/users/new">New User</a>
        </div>
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>Username</th>
                    <th>Fullname</th>
                    <th>Email</th>
                    <th>Admin</th>
                </tr>
            </thead>
            </tbody>
            <tbody>
                <c:forEach var="u" items="${users}">
                    <tr>
                        <td>${u.username}</td>
                        <td>${u.fullname}</td>
                        <td>${u.email}</td>
                        <td>${u.admin}</td>
                        <td>
                            <a class="btn btn-sm btn-outline-secondary" href="/admin/users/edit/${u.username}">Edit</a>
                            <a class="btn btn-sm btn-outline-danger" href="/admin/users/delete/${u.username}">Delete</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
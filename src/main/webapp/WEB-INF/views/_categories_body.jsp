<%@ page contentType="text/html;charset=UTF-8" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <div class="d-flex justify-content-between align-items-center mb-3">
            <h3>Categories</h3>
            <a class="btn btn-primary" href="/admin/categories/new">New Category</a>
        </div>
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Code</th>
                    <th>User</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="c" items="${categories}">
                    <tr>
                        <td>${c.id}</td>
                        <td>${c.categoryname}</td>
                        <td>${c.categorycode}</td>
                        <td>${c.user != null ? c.user.fullname : ''}</td>
                        <td>
                            <a class="btn btn-sm btn-outline-secondary" href="/admin/categories/edit/${c.id}">Edit</a>
                            <a class="btn btn-sm btn-outline-danger" href="/admin/categories/delete/${c.id}">Delete</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
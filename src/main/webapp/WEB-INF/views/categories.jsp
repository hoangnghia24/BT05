<%@ page contentType="text/html;charset=UTF-8" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <title>Categories - BT05</title>
        <div class="card">
            <div class="card-body">
                <div class="d-flex justify-content-between align-items-center mb-3">
                    <div>
                        <h3 class="mb-0">Categories <span class="badge ms-2">${categories != null ? categories.size() :
                                0}</span></h3>
                        <small class="text-muted">Content categories</small>
                    </div>
                    <a class="btn btn-primary" href="/admin/categories/new">New Category</a>
                </div>

                <div class="table-responsive">
                    <table class="table table-hover align-middle mb-0">
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
                                        <a class="btn btn-sm btn-outline-secondary"
                                            href="/admin/categories/edit/${c.id}">Edit</a>
                                        <a class="btn btn-sm btn-outline-danger ms-1"
                                            href="/admin/categories/delete/${c.id}">Delete</a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
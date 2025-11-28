<%@ page contentType="text/html;charset=UTF-8" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <title>Videos - BT05</title>
        <div class="card">
            <div class="card-body">
                <div class="d-flex justify-content-between align-items-center mb-3">
                    <div>
                        <h3 class="mb-0">Videos <span class="badge ms-2">${videos != null ? videos.size() : 0}</span>
                        </h3>
                        <small class="text-muted">Manage video entries</small>
                    </div>
                    <div class="d-flex align-items-center">
                        <form class="me-2" method="get" action="/admin/videos">
                            <div class="input-group">
                                <input class="form-control" name="q" value="${q}" placeholder="Search title..." />
                                <button class="btn btn-outline-secondary">Search</button>
                            </div>
                        </form>
                        <a class="btn btn-primary ms-2" href="/admin/videos/new">New Video</a>
                    </div>
                </div>

                <div class="table-responsive">
                    <table class="table table-hover align-middle mb-0">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Title</th>
                                <th>Category</th>
                                <th>Views</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="v" items="${videos}">
                                <tr>
                                    <td>${v.id}</td>
                                    <td>${v.title}</td>
                                    <td>${v.category != null ? v.category.categoryname : ''}</td>
                                    <td><span class="badge bg-light text-dark">${v.views}</span></td>
                                    <td>
                                        <a class="btn btn-sm btn-outline-secondary"
                                            href="/admin/videos/edit/${v.id}">Edit</a>
                                        <a class="btn btn-sm btn-outline-danger ms-1"
                                            href="/admin/videos/delete/${v.id}">Delete</a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
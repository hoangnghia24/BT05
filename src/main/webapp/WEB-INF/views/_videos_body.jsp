<%@ page contentType="text/html;charset=UTF-8" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <div class="d-flex justify-content-between align-items-center mb-3">
            <h3>Videos</h3>
            <!-- DEBUG: render marker -->
            <h4 style="color:red; margin-left:20px;">DEBUG: videos body rendered @ <%= new java.util.Date() %>
            </h4>
            <div>
                <form class="d-inline" method="get" action="/admin/videos">
                    <input class="form-control d-inline-block" style="width:250px;" name="q" value="${q}"
                        placeholder="Search title..." />
                    <button class="btn btn-sm btn-outline-secondary">Search</button>
                </form>
                <a class="btn btn-primary ms-2" href="/admin/videos/new">New Video</a>
            </div>
        </div>
        <table class="table table-striped">
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
                        <td>${v.views}</td>
                        <td>
                            <a class="btn btn-sm btn-outline-secondary" href="/admin/videos/edit/${v.id}">Edit</a>
                            <a class="btn btn-sm btn-outline-danger" href="/admin/videos/delete/${v.id}">Delete</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
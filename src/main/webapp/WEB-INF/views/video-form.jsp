<%@ page contentType="text/html;charset=UTF-8" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <!DOCTYPE html>
        <html>

        <head>
            <title>Video Form - BT05</title>
        </head>

        <body>

            <div class="container mt-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Video Form</h5>
                        <form method="post" action="/admin/videos/save">
                            <input type="hidden" name="id" value="${video.id}" />
                            <div class="mb-3">
                                <label class="form-label">Title</label>
                                <input class="form-control" name="title" value="${video.title}" />
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Poster</label>
                                <input class="form-control" name="poster" value="${video.poster}" />
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Views</label>
                                <input class="form-control" name="views" value="${video.views}" />
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Category</label>
                                <select name="categoryId" class="form-select">
                                    <option value="">-- none --</option>
                                    <c:forEach var="c" items="${categories}">
                                        <option value="${c.id}" ${video.category !=null && video.category.id==c.id
                                            ? 'selected' : '' }>${c.categoryname}</option>
                                    </c:forEach>
                                </select>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Description</label>
                                <textarea class="form-control" name="description">${video.description}</textarea>
                            </div>
                            <div class="mb-3 form-check">
                                <input type="checkbox" class="form-check-input" name="active" ${video.active ? 'checked'
                                    : '' } />
                                <label class="form-check-label">Active</label>
                            </div>
                            <button class="btn btn-primary">Save</button>
                            <a class="btn btn-secondary" href="/admin/videos">Cancel</a>
                        </form>
                    </div>
                </div>
            </div>
        </body>

        </html>
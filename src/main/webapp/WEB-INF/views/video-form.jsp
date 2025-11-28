<%@ page contentType="text/html;charset=UTF-8" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <title>Video Form - BT05</title>
        <div class="card">
            <div class="card-body">
                <h5 class="card-title">Video Form</h5>
                <form method="post" action="/admin/videos/save">
                    <input type="hidden" name="id" value="${video.id}" />

                    <div class="row">
                        <div class="col-md-8">
                            <div class="mb-3">
                                <label class="form-label">Title</label>
                                <input class="form-control" name="title" value="${video.title}" />
                            </div>

                            <div class="mb-3">
                                <label class="form-label">Description</label>
                                <textarea class="form-control" name="description"
                                    rows="4">${video.description}</textarea>
                            </div>

                            <div class="mb-3">
                                <label class="form-label">URL</label>
                                <input class="form-control" name="url" value="${video.url}" />
                            </div>
                        </div>

                        <div class="col-md-4">
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

                            <div class="form-check mb-3">
                                <input type="checkbox" class="form-check-input" id="activeCheck" name="active"
                                    ${video.active ? 'checked' : '' } />
                                <label class="form-check-label" for="activeCheck">Active</label>
                            </div>
                        </div>
                    </div>

                    <div class="d-flex gap-2">
                        <button class="btn btn-primary">Save</button>
                        <a class="btn btn-secondary" href="/admin/videos">Cancel</a>
                    </div>
                </form>
            </div>
        </div>
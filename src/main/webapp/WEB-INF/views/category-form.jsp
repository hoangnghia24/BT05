<%@ page contentType="text/html;charset=UTF-8" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <!DOCTYPE html>
        <html>

        <head>
            <title>Category Form - BT05</title>
        </head>

        <body>

            <div class="container mt-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Category Form</h5>
                        <form method="post" action="/admin/categories/save">
                            <input type="hidden" name="id" value="${category.id}" />
                            <div class="mb-3">
                                <label class="form-label">Name</label>
                                <input class="form-control" name="categoryname" value="${category.categoryname}" />
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Code</label>
                                <input class="form-control" name="categorycode" value="${category.categorycode}" />
                            </div>
                            <div class="mb-3">
                                <label class="form-label">User</label>
                                <select name="username" class="form-select">
                                    <option value="">-- none --</option>
                                    <c:forEach var="u" items="${users}">
                                        <option value="${u.username}" ${category.user !=null &&
                                            category.user.username==u.username ? 'selected' : '' }>${u.fullname}
                                        </option>
                                    </c:forEach>
                                </select>
                            </div>
                            <button class="btn btn-primary">Save</button>
                            <a class="btn btn-secondary" href="/admin/categories">Cancel</a>
                        </form>
                    </div>
                </div>
            </div>
        </body>

        </html>
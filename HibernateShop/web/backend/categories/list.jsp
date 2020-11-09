<%@include file="../../common/templates/backend/header.jsp" %>
<%@include file="../../common/templates/backend/navbar.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<section class="row">
    <article class="col">
        <div class="card">
            <div class="card-header">
                List All Categories
            </div>
            <div class="card-body">
                <table class="table">
                    <thead>
                        <tr>
                            <th scope="col">Category ID</th>
                            <th scope="col">Name</th>
                            <th scope="col">&nbsp;</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="entity" items="${categories}">
                            <tr>
                                <th scope="row">${entity.categoryId}</th>
                                <td>${entity.name}</td>
                                <td>
                                    <a href="DetailCategoryController?id=${entity.categoryId}">Detail</a> |
                                    <a href="EditCategoryController?id=${entity.categoryId}">Edit</a> |
                                    <a href="DeleteCategoryController?id=${entity.categoryId}">Delete</a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </article>
</section>
<%@include file="../../common/templates/backend/footer.jsp" %>
<!--http://localhost:8080/HibernateShop/backend/categories/list.jsp-->
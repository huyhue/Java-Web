<%@include file="../../common/templates/backend/header.jsp" %>
<%@include file="../../common/templates/backend/navbar.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<section class="row">
    <article class="col">
        <div class="card">
            <div class="card-header">
                List All Products
            </div>
            <div class="card-body">
                <table class="table">
                    <thead>
                        <tr>
                            <th scope="col">Product ID</th>
                            <th scope="col">Name</th>
                            <th scope="col">Price</th>
                            <th scope="col">Quantity</th>
                            <th scope="col">Status</th>
                            <th scope="col">Image</th>
                            <th scope="col">&nbsp;</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="entity" items="${products}">
                            <tr>
                                <th scope="row">${entity.productId}</th>
                                <td>${entity.name}</td>
                                <td>${entity.price}</td>
                                <td>${entity.quantity}</td>
                                <td>${entity.status}</td>
                                <td><img src="uploads/${entity.image}" alt="${entity.image}"></td>
                                <td>
                                    <a href="DetailProductController?id=${entity.productId}">Detail</a> |
                                    <a href="EditProductController?id=${entity.productId}">Edit</a> |
                                    <a href="DeleteProductController?id=${entity.productId}">Delete</a>
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
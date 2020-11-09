<%@include file="../../common/templates/backend/header.jsp" %>
<%@include file="../../common/templates/backend/navbar.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<section class="row">
    <article class="col">
        <div class="card">
            <div class="card-header">
                ${product != null?"Edit Product":"Add New Product"}
            </div>
            <div class="card-body">
                <form action="${product != null?"EditProductController":"InsertProductController"}" method="post" enctype="multipart/form-data">
                    <div class="form-group">
                        <label for="e1">Category:</label>
                        <select class="form-control" id="e1" name="categoryId" >
                            <c:forEach var="category" items="${categories}">
                                <option value="${category.categoryId}">${category.name}</option>
                            </c:forEach>
                        </select>
                    </div>
                    <c:if test="${product == null}">
                    <div class="form-group">
                        <label for="e2">Product ID: </label>
                        <input type="text" class="form-control" id="e2" name="productId" ${product != null?"readonly":""} value="${product.productId}">
                    </div>
                    </c:if>
                    <div class="form-group">
                        <label for="e2">Name: </label>
                        <input type="text" class="form-control" id="e2" name="name" value="${product.name}">
                    </div>
                    <div class="form-group">
                        <label for="e2">Quantity: </label>
                        <input type="text" class="form-control" id="e2" name="quantity" value="${product.quantity}">
                    </div>
                    <div class="form-group">
                        <label for="e2">Price: </label>
                        <input type="text" class="form-control" id="e2" name="price" value="${product.price}">
                    </div>
                    <div class="form-group">
                        <label for="e2">Status: </label>
                        <select class="form-control" id="e3" name="status" value="${product.status}">
                            <option value="InStock">In-stock</option>
                            <option value="OutStock">Out-stock</option>
                        </select>
                    </div>
                    <c:if test="${product != null}">
                        <div class="form-group">
                            <img src="uploads/${product.image}" alt="${product.image}">
                        </div>
                    </c:if>
                    <div class="form-group">
                        <label for="e3">Image: </label>
                        <input type="file" class="form-control" id="e3" name="image" >
                    </div>
                    <div class="form-group">
                        <label for="e2">Description: </label>
                        <textarea type="text" class="form-control" id="e2" name="description">${product.description}</textarea>
                    </div>
                    <div class="form-group">
                        <input type="submit" value="${product != null?"Update":"Add New"}" class="btn btn-primary"></input>
                    </div>
                </form>
            </div>
        </div>
    </article>
</section>
<%@include file="../../common/templates/backend/footer.jsp" %>
<!--http://localhost:8080/HibernateShop/backend/products/addOrEdit.jsp-->
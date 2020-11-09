<%@include file="../../common/templates/backend/header.jsp" %>
<%@include file="../../common/templates/backend/navbar.jsp" %>
<section class="row">
    <article class="col">
        <div class="card">
            <div class="card-header">
                Add Category
            </div>
            <div class="card-body">
                <form action="InsertCategoryController" method="post">
                    <div class="form-group">
                        <label for="e1">Category ID:</label>
                        <input type="text" class="form-control" id="e1" name="categoryId">
                    </div>
                    <div class="form-group">
                        <label for="e2">Name: </label>
                        <input type="text" class="form-control" id="e2" name="name">
                    </div>
                    <div class="form-group">
                        <input type="submit" value="Add New" class="btn btn-primary"></input>
                    </div>
                </form>
            </div>
        </div>
    </article>
</section>
<%@include file="../../common/templates/backend/footer.jsp" %>
<!--http://localhost:8080/HibernateShop/backend/categories/addOrEdit.jsp-->
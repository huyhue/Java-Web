<%@include file="../../common/templates/backend/header.jsp" %>
<%@include file="../../common/templates/backend/navbar.jsp" %>
<section class="row">
    <article class="col">
        <div class="card">
            <div class="card-header">
                Featured
            </div>
            <div class="card-body">
                <form>
                    <div class="form-group">
                        <label for="e1">Category ID:</label>
                        <input type="text" class="form-control" id="e1" name="categoryId">
                    </div>
                    <div class="form-group">
                        <label for="e2">Name: </label>
                        <input type="text" class="form-control" id="e2" name="name">
                    </div>
                    <button type="submit" class="btn btn-primary">Add New</button>
                </form>
            </div>
        </div>
    </article>
</section>
<%@include file="../../common/templates/backend/footer.jsp" %>
<!--http://localhost:8080/HibernateShop/backend/categories/list.jsp-->
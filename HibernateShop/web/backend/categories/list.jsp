<%@include file="../../common/templates/backend/header.jsp" %>
<%@include file="../../common/templates/backend/navbar.jsp" %>
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
                        <tr>
                            <th scope="row">1</th>
                            <td>Mark</td>
                            <td>Detail | Edit | Delete</td>
                        </tr>
                        <tr>
                            <th scope="row">2</th>
                            <td>Jacob</td>
                            <td>Thornton</td>
                        </tr>
                        <tr>
                            <th scope="row">3</th>
                            <td>Larry</td>
                            <td>the Bird</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </article>
</section>
<%@include file="../../common/templates/backend/footer.jsp" %>
<!--http://localhost:8080/HibernateShop/backend/categories/list.jsp-->
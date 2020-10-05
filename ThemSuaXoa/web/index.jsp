<%@page import="java.sql.ResultSet"%>
<%@page import="model.MyConnectDB"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Demo Connect DTB</title>
        <style type="text/css">
            .row {  
                margin-top:40px;    
                padding: 0 10px;
            }
            .clickable {    
                cursor: pointer;
            }
            .panel-heading div {    
                margin-top: -18px;  
                font-size: 15px;
            }
            .panel-heading div span {   
                margin-left:5px;
            }
            .panel-body {   
                display: none;
            }
        </style>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>


    </head>
    <body>
        <div class="container"> 
            <h2 align="center">Tạo table để kết nối cơ sở dữ liệu</h2> 
            <div class="row"> 
                <div class="col-md-12"> 
                    <a href="ThemTaiKhoan.jsp"><button class="btn btn-success">Thêm tài khoản</button></a>
                    <div class="panel panel-primary"> 
                        <div class="panel-heading"> 
                            <h3 class="panel-title">Danh sách thành viên</h3> 

                        </div> 
                        <div class="panel-body"> <input class="form-control" id="dev-table-filter" data-action="filter" data-filters="#dev-table" placeholder="Từ khóa" type="text"> 
                        </div> 

                        <%
                            MyConnectDB con = new MyConnectDB();
                            ResultSet rs = con.chonDuLieuTuDTB("select * from ThanhVien");
                        %>
                        <table class="table table-hover" id="dev-table"> 
                            <thead> 
                                <tr> 
                                    <th>STT</th> 
                                    <th>Họ</th> 
                                    <th>Tên</th> 
                                    <th>Tài khoản</th> 
                                    <th>Xóa</th>
                                    <th>Sửa</th>
                                </tr> 
                            </thead> 
                            <tbody>
                                <%int count = 0;
                                    while (rs.next()) {
                                        count++;
                                %>
                                <tr> 
                                    <td><%=count%></td> 
                                    <td><%=rs.getString(2)%></td> 
                                    <td><%=rs.getString(3)%></td> 
                                    <td><%=rs.getString(4)%></td> 
                                    <td><a href="XuLyThemSuaXoaController?id=<%=rs.getString(1)%>&chucNang=Xoa"><button class="btn btn-warning">Xóa</button></a></td>
                                    <td><a href="SuaTaiKhoan.jsp?id=<%=rs.getString(1)%>"><button class="btn btn-primary">Sửa</button></a></td>
                                </tr> 
                                <%   } %>

                            </tbody></table> 
                    </div> 
                </div> 
            </div>



        </div>

    </body>
</html>
<%@page import="dao.KhachHangDAO"%>
<%@page import="model.KhachHang"%>
<%@page import=" java.util.HashMap"%>
<%@page import=" java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<% Map<String, KhachHang> mapListCustomer = KhachHangDAO.mapKhachHang; %>
<% KhachHang kh = (KhachHang) session.getAttribute("userlogin");
    String disable = "";
    if (kh != null) {
        ServletContext contextDisable = getServletContext();
        disable = (String) contextDisable.getAttribute("disabledButton");
        if (disable == null) {
            disable = "";
        }
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <script src="http://cdnjs.cloudflare.com/ajax/libs/modernizr/2.7.1/modernizr.min.js"></script>
        <script>
            yepnope({
                test: (!Modernizr.input.list || (parseInt($.browser.version) > 400)),
                yep: [
                    'https://raw2.github.com/CSS-Tricks/Relevant-Dropdowns/master/js/jquery.relevant-dropdown.js',
                    'https://raw2.github.com/CSS-Tricks/Relevant-Dropdowns/master/js/load-fallbacks.js'
                ]
            });
        </script>
    </head>
    <body>
        <form action="Search?chucNang=searchCustomer" method="post">
            <input type="text" list="listcustomer" <%=disable %>  name="name" />
            <button class="btn btn-primary" type="submit"><span class="glyphicon glyphicon-ok"></span>  Chọn</button>
        </form>
        <datalist id="listcustomer">
            <%	for (KhachHang kha : mapListCustomer.values()) {%>
                <option value="<%=kha.getTaiKhoan()%>"><%=kha.getTen()%></option>
            <%}%>
        </datalist>
    </body>
</html>
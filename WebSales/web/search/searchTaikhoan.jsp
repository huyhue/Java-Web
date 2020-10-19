<%@page import="dao.KhachHangDAO"%>
<%@page import="model.KhachHang"%>
<%@page import=" java.util.HashMap"%>
<%@page import=" java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%Map<String, KhachHang> mapList = KhachHangDAO.mapKhachHang ;%>
<!DOCTYPE html>
<html>
<head>
<script src="http://cdnjs.cloudflare.com/ajax/libs/modernizr/2.7.1/modernizr.min.js"></script>
<script>
yepnope({
  test : (!Modernizr.input.list || (parseInt($.browser.version) > 400)),
  yep : [
      'https://raw2.github.com/CSS-Tricks/Relevant-Dropdowns/master/js/jquery.relevant-dropdown.js',
      'https://raw2.github.com/CSS-Tricks/Relevant-Dropdowns/master/js/load-fallbacks.js'
  ]
});
</script>
</head>
<body>
<form action="Search?chucNang=Account" method="post">
	<input type="text" list="listProduct" name="account" />
	<button class="btn btn-primary" type="submit">Search account</button>
</form>
	<datalist id="listProduct">
            <%	for (KhachHang kh : mapList.values()) { %>
			<option value="<%=kh.getTaiKhoan()%>"><%=kh.getTaiKhoan() %></option>
		<%} %>
	</datalist>
</body>
</html>
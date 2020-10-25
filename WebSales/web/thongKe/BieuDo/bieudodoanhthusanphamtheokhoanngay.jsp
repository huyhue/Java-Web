<%@page import="java.util.HashMap"%>
<%@page import="dao.TraSuaDAO"%>
<%@page import="dao.ThongKeDAO"%>
<%@page import="model.TraSua"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
  <head>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    
    		<%Map<String,TraSua> mapTS =new HashMap<>();
        		String ok = (String) session.getAttribute("okkn");
        		String ngayBatDau= (String) session.getAttribute("ngayBatDau");
        		String ngayKetThuc= (String) session.getAttribute("ngayKetThuc");
        		if(ok!=null){
        			if(ok.equals("ok")){
        				mapTS=new ThongKeDAO().thongKeTheoKhoanNgay(ngayBatDau, ngayKetThuc);
        			}
        		}
        %>
    <script type="text/javascript">
      google.charts.load("current", {packages:["corechart"]});
      google.charts.setOnLoadCallback(drawChart);
      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['Task', 'Hours per Day'],
		<% if(mapTS.size()!=0){
			for(TraSua ts:mapTS.values()){
		%>	          
          ['<%=ts.getTen()%>',     <%out.print(new TraSuaDAO().layTongDoanhThuTheoKhoangNgay(ngayBatDau, ngayKetThuc));%>],
          <%}
		}%>
          
        ]);

        var options = {
          title: 'Biểu đồ thống kê doanh thu theo tháng',
          is3D: true,
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart_3d'));
        chart.draw(data, options);
      }
    </script>
  </head>
  <body>
    <div id="piechart_3d" style="width: 900px; height: 500px;"></div>
  </body>
</html>
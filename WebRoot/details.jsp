<%@page import="net.vicp.zyl_me.model.GoodsBean"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
	GoodsBean goodsBean = (GoodsBean) request.getAttribute("goodsBean");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<link rel="stylesheet" href="css/header.css">
<link rel="stylesheet" href="css/content.css">
<link rel="stylesheet" href="css/footer.css">
<link rel="stylesheet" href="css/details.css">
</head>
<body>
	<jsp:include page="head.jsp"></jsp:include>
	<div id="content">
		<div id="content-left">
			<div id="detailsdetails">
				<div class="title">
					<a href="index.jsp">主页</a> >> 所有书籍
				</div>
				<div class="gray">
					<img src="images/bullet1.gif">
					<%=goodsBean.getGoodsname()%>
				</div>
				<div class="item">
					<div class="item-left">
						<img
							src=<%="images/banner/" + goodsBean.getPhoto()%>>
					</div>
					<div class="item-right">
						<div class="box_top"></div>
						<div class="box_center">
							<div class="orange">简介:</div>
							<p class="details">
								<span class="special_icon"><img src="images/chaozhi.png"
									alt="" title=""> </span>
								<%=goodsBean.getBreifintroduction()%>
							</p>
						</div>
						<div class="box_bottom"></div>
					</div>
				</div>
				<fieldset>
					<legend>详细介绍</legend>
					<div class="ttt">
						<span>名称:</span>
						<marquee direction="right"><%=goodsBean.getGoodsname() %></marquee>
						<br> <span>价格:￥<%=goodsBean.getGoodsprice() %></span>
					</div>
					<hr>
					<p><%=goodsBean.getDetailintroduction() %>
					</p>
				</fieldset>
				<a href="CartServlet?id=<%=goodsBean.getGoodsid()%>" class="addtocart">
                    <img src="images/addtocart.png">
                </a>
			</div>
		</div>
		<jsp:include page="content-right.jsp"></jsp:include>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>

</html>

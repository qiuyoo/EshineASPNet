﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="viewshopitem.aspx.cs" Inherits="viewshopitem" %>

<%@ Register TagPrefix="MPuc" TagName="headcontent" Src="UserControl/headcontent.ascx"%>
<%@ Register TagPrefix="MPuc" TagName="mobilenav" Src="UserControl/mobilenav.ascx"%>
<%@ Register TagPrefix="MPuc" TagName="desktopnav" Src="UserControl/desktopnav.ascx"%>
<%@ Register TagPrefix="MPuc" TagName="footer" Src="UserControl/footer1.ascx"%>
<!DOCTYPE html>
<html>
<head>
<title>EshineAspNet - 微软专家</title>
<MPuc:headcontent runat="server" ID="Unnamed1"/>
<SCRIPT src="JS/mp.js" type="text/javascript"></SCRIPT>

        <link rel="stylesheet" href="CSS/gb.css" type="text/css" media="screen">
<link rel="stylesheet" href="CSS/detail.css" type="text/css" media="screen">

</head>
<body class='blogs ic_mini'>

<div class='wrapper' data-behavior='Navigation'>
<nav class='mobile_hidden' id='desktop'>
<SCRIPT>
    function sendemail(email) {
        window.location.href = "mailto:" + escape(email);
    }
		</SCRIPT>
<div class='container'>
<a class='logo' href='index.aspx'>
<img alt='' src='Images/logo2.png'>
</a>
<asp:HyperLink class='button gray_button' ID="HyperLink4" runat="server" href='<%$ Resources:GResource,languagecode %>' Text='<%$ Resources:GResource,language %>'></asp:HyperLink>

<asp:Panel ID="Panel2" runat="server" style="padding-top:8px;">
<ul class='desktop_navigation' >
<li style="color:#6c98cf; font-size:18px;">
021-88888888
</li>
<li>
<A href="javascript:sendemail('service@eshinelee.com');" style="padding-top:0; font-size:14px">service@eshinelee.com</A>
</li>
</ul>
</asp:Panel>
</div>
</nav>



<form id="Form1" runat="server">
<div class='container' data-behavior='Blog'>
<div class='row'>

        <div class="fx_fix fx_fix_nowprice" >
									<div class="fx_fix_top">
												现价：<p class="fx_fix_price"><span>&yen;</span><asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></p>
											</div>
         

					<a  class="fx_fix_bottom" href='healthshop.aspx?tocart=true&productID=<% =itemid%>'>
						<span>
						 立即购买 						</span>
						<i></i>
					</a>
             <a class="fx_fix_belowbotton">
              购物车<p><span>&yen;</span>7654.67</p>

          </a>
								</div>

<div class='twocol'></div>
<div class='eightcol'>
<div class='blog'>
<div class='tile'>


<div class='date'>
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></div>
<hr>
<h2>
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="">商品名称</asp:HyperLink>
</h2>
<article>
<%=content %>

<div class='continue'>
<asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="" Target="_blank"></asp:HyperLink>
</div>
</article>
<asp:HyperLink ID="HyperLink3" runat="server" class='button blue_button' href='healthshop.aspx'  style="float:right; margin-top:-40px;" >返回商城</asp:HyperLink>
<div class='bottom mobile_hidden hidden'>
<div class='tags '>
<div class='tag'>标签:</div>
<div class='tag'>
<a href=''></a>
</div>
<div class='tag'>
<a href=''>体检</a>
</div>
<div class='tag'>
<a href=''>健康</a>
</div>

</div>
</div>
</div>



</div>
</div>
<div class='twocol last'></div>
</div>
</div>
</form>
</div>
<MPuc:footer ID="ucfooter" runat="server"/>
</body>
</html>



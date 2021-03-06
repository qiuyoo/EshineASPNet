﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addressmanaging.aspx.cs" Inherits="addressmanaging" %>

<%@ Register TagPrefix="MPuc" TagName="headcontent" Src="UserControl/headcontent.ascx"%>
<%@ Register TagPrefix="MPuc" TagName="mobilenav" Src="UserControl/mobilenav.ascx"%>
<%@ Register TagPrefix="MPuc" TagName="desktopnav" Src="UserControl/desktopnav.ascx"%>
<%@ Register TagPrefix="MPuc" TagName="footer" Src="UserControl/footer1.ascx"%>
<!DOCTYPE html>
<html>
<head>
<title>EshineAspNet - <asp:Localize runat="server" Text='<%$ Resources:GResource,titletext %>'></asp:Localize></title>
<MPuc:headcontent runat="server" ID="Unnamed1"/>
<SCRIPT src="JS/mp.js" type="text/javascript"></SCRIPT>
</head>
<body class='member_profiles'>
<MPuc:mobilenav runat="server" ID="Unnamed2"/>

    <form runat="server">
<div class='wrapper' data-behavior='Navigation'>
<MPuc:desktopnav runat="server" ID="Unnamed3"/>


<div class='container'>
<h2><asp:Localize ID="Localize1" runat="server" Text='<%$ Resources:GResource,addressmanagement %>'></asp:Localize></h2>
<div class='edit_profile row' data-behavior='Tabs'>
<div class='twocol'>
<div id='errors'></div>
<div id='tabs'>
<ul class='tabs'>
<li class=''>
<a href="PersonalDetails.aspx"><asp:Localize runat="server" Text='<%$ Resources:GResource,personaldetail %>'></asp:Localize></a>
</li>
<li class=''>
<a href="RelativesDetails.aspx"><asp:Localize runat="server" Text='<%$ Resources:GResource,relativedetail %>'></asp:Localize></a>
</li>
<li class='active'>
<a href="addressmanaging.aspx"><asp:Localize  runat="server" Text='<%$ Resources:GResource,addressmanagement %>'></asp:Localize></a>
</li>
</ul>

</div>
</div>
<div class='tencol last tile' id='forms'>

<div class='tab' id='addresses'>
<div class='row'>
<div class='left sixcol' id='add_new_address'>
<h3><asp:Localize ID="Localize3" runat="server" Text='<%$ Resources:GResource,contactAddress %>'></asp:Localize></h3>
<div class="simple_form new_address_context">
<DIV class="input string required">
<LABEL class="string required" for="TextBox4"><asp:Localize ID="Localize5" runat="server" Text='<%$ Resources:GResource,recipient %>'></asp:Localize></LABEL>
    <asp:TextBox class="string required" ID="TextBox4" runat="server"></asp:TextBox>
</DIV>
<DIV class="three_input_grouping">
<DIV class="input month_select required">
<LABEL class="string required" ><asp:Localize runat="server" Text='<%$ Resources:GResource,detailAddress %>'></asp:Localize></LABEL>
    <asp:DropDownList ID="com_Province" runat="server" AutoPostBack="True" onselectedindexchanged="com_Province_SelectedIndexChanged" 
                class="month_select required customSelect">
            <asp:ListItem Text='<%$ Resources:GResource,selectProvince %>'></asp:ListItem>
        </asp:DropDownList>
</DIV>
<DIV class="input select required">
<LABEL class="string required" >&nbsp;</LABEL>
<asp:DropDownList ID="com_City" runat="server" AutoPostBack="True" onselectedindexchanged="com_City_SelectedIndexChanged" 
                class="month_select required customSelect">
            <asp:ListItem Text='<%$ Resources:GResource,selectCity %>'></asp:ListItem>
        </asp:DropDownList>
</DIV>
<DIV class="input select required">
<LABEL class="string required" >&nbsp;</LABEL>
<asp:DropDownList ID="com_Area" runat="server"  class="select required customSelect">
            <asp:ListItem Text='<%$ Resources:GResource,selectZone %>'></asp:ListItem>
        </asp:DropDownList>
</DIV></DIV>
<DIV class="input string required">
    <asp:TextBox class="string" ID="TextBox7" runat="server"  placeholder="<%$ Resources:GResource,detailAddress %>"></asp:TextBox>
    </DIV>
<DIV class="input string required">
<label class="string optional"><asp:Localize ID="Localize6" runat="server" Text='<%$ Resources:GResource,mobilenumber %>'></asp:Localize></label>
    <asp:TextBox class="string tel required numeric" ID="TextBox9" runat="server" type="tel" maxlength="11" minlength="11" placeholder="<%$ Resources:GResource,mobilenumber %>"></asp:TextBox>
</DIV>


<div class='buttons'>
<div class='spinner'></div>
<asp:Button id="Button1"  Text="<%$ Resources:GResource,addthisaddress %>" runat="server" class='button blue_button' onclick="save_address_Click"/>
</div>
</div>

</div>
<div class='right sixcol last' id='stored_addresses'>
<H3><asp:Localize ID="Localize7" runat="server" Text='<%$ Resources:GResource,savedaddress %>'></asp:Localize></H3><br />
<DIV id="no_addresses" class="no_addresses" runat="server"></DIV>
<UL id="all_addresses" runat="server">

</UL></div>
</div>

</div>

</div>
</div>
</div>
    </div>
</form>

<MPuc:footer ID="ucfooter" runat="server"/>
</body>
</html>
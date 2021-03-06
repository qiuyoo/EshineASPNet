﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="viewshoporder.aspx.cs" Inherits="viewshoporder" %>
<%@ Register TagPrefix="MPuc" TagName="headcontent" Src="UserControl/headcontent.ascx"%>
<%@ Register TagPrefix="MPuc" TagName="mobilenav" Src="UserControl/mobilenav.ascx"%>
<%@ Register TagPrefix="MPuc" TagName="desktopnav" Src="UserControl/desktopnav.ascx"%>
<%@ Register TagPrefix="MPuc" TagName="footer" Src="UserControl/footer1.ascx"%>
<!DOCTYPE html>
<html>
<head>
<title>EshineAspNet - <asp:Localize ID="Localize1" runat="server" Text='<%$ Resources:GResource,titletext %>'></asp:Localize></title>
<MPuc:headcontent runat="server" ID="Unnamed1"/>
<SCRIPT src="JS/mp.js" type="text/javascript"></SCRIPT>



</head>
<body class='member_orders'>
<MPuc:mobilenav runat="server" ID="Unnamed2"/>
<form runat="server">
<div class='wrapper' data-behavior='Navigation'>
<MPuc:desktopnav runat="server" ID="Unnamed3"/>

<div class='container'>
<div class='row'>
<div class='twelvecol'>
<h3><asp:Label ID="Label1" runat="server" Text='<%$ Resources:GResource,myorder %>'></asp:Label></h3>
<div class='tile'  id='your_trunks1' >
    <asp:Panel ID="Panel1" runat="server" Visible="False">
        <asp:Label ID="Label3" runat="server" Text='<%$ Resources:GResource,noorder %>'></asp:Label>
        <asp:HyperLink ID="HyperLink2" runat="server" class="button blue_button" NavigateUrl="~/healthshop.aspx" Text='<%$ Resources:GResource,goshopping %>'></asp:HyperLink>
    </asp:Panel>
   
<div id="PrintArea">
    <asp:GridView ID="GridView12" runat="server" AutoGenerateColumns="False"  OnRowDataBound="GridView12_RowDataBound" 
        DataKeyNames="orderID" DataSourceID="SqlDataSource1" >
        <Columns>
            <asp:BoundField DataField="orderID" HeaderText='<%$ Resources:GResource,ordernum %>' InsertVisible="False" 
                ReadOnly="True" SortExpression="orderID"  HeaderStyle-CssClass="mobile_hidden" ItemStyle-CssClass="mobile_hidden"
                meta:resourcekey="BoundFieldResource1" />
            
               
            <asp:BoundField DataField="ReportContent" HeaderText='<%$ Resources:GResource,orderproduct %>' HeaderStyle-CssClass="mobile_hidden" ItemStyle-CssClass="mobile_hidden" ItemStyle-Width="500px"
                SortExpression="ReportContent" />
                <asp:BoundField DataField="examBill" HeaderText='<%$ Resources:GResource,selfpay %>' HeaderStyle-Wrap="false" 
                SortExpression="examBill" />
                <asp:BoundField DataField="orderStatus" HeaderText='<%$ Resources:GResource,orderstatus %>'  HeaderStyle-Wrap="false" 
                SortExpression="orderStatus" />
             <asp:BoundField DataField="orderDate" HeaderText='<%$ Resources:GResource,orderdate %>'  DataFormatString="{0:d}" HeaderStyle-Wrap="false" 
                SortExpression="orderDate" />
                <asp:TemplateField HeaderText="  " ItemStyle-Wrap="false">
                                <ItemTemplate>
								<asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" Text="打印"  Visible="false"
                                        OnClientClick="return PrintGridView();" meta:resourcekey="LinkButton1Resource1"></asp:LinkButton>
                            <asp:LinkButton ID="BtnDelete" runat="server" CausesValidation="False" Text='<%$ Resources:GResource,cancel %>' 
                                        CommandArgument='<%# Eval("orderID") %>' OnClick="BtnDelete_Click" 
                                Visible ='<%   # Eval("orderStatus").ToString()=="待付款"? true : false  %>'
                                        OnClientClick='<%$ Resources:GResource,alertsurecancel %>' ></asp:LinkButton>
                                    <asp:LinkButton ID="BtnPay" runat="server" CausesValidation="False" Text='<%$ Resources:GResource,payment %>' class="button blue_button" 
                                     Visible ='<%   # Eval("orderStatus").ToString()=="待付款"? true : false  %>'   CommandArgument='<%# Eval("orderID") %>'  OnClick="BtnPay_Click" ForeColor="White"></asp:LinkButton>
                                </ItemTemplate>

<ItemStyle Wrap="False"></ItemStyle>
                            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    </div>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:db_ConnectionString %>" 
        SelectCommand="SELECT * FROM [tab_orders] WHERE ReportType=N'商城' and orderStatus<>'已取消' AND customerID = @customerID ORDER BY orderID DESC">
        <SelectParameters>
            <asp:SessionParameter Name="customerID" SessionField="id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</div>
</div>
</div>
<br />


</div>

</div>
</form>
<MPuc:footer ID="ucfooter" runat="server"/>


<script language="Javascript">

    function PrintGridView() {
        // 打开一个新网页
        var newwindow = window.open('');

        // 将指定DIV中的内容写入该网页
        newwindow.document.write(document.getElementById('PrintArea').innerHTML);
        newwindow.document.close();

        // 打印该网页
        newwindow.focus();
        newwindow.print();

        // 打印完毕后关闭该窗口
        newwindow.close();
        return false;
    }
    function PrintGridView1() {
        // 打开一个新网页
        var newwindow = window.open('');

        // 将指定DIV中的内容写入该网页
        newwindow.document.write(document.getElementById('PrintArea1').innerHTML);
        newwindow.document.close();

        // 打印该网页
        newwindow.focus();
        newwindow.print();

        // 打印完毕后关闭该窗口
        newwindow.close();
        return false;
    }
</script>
</body>
</html>


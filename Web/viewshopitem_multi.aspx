﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="viewshopitem_multi.aspx.cs" Inherits="viewshopitem_multi" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register TagPrefix="MPuc" TagName="headcontent" Src="UserControl/headcontent.ascx"%>
<%@ Register TagPrefix="MPuc" TagName="mobilenav" Src="UserControl/mobilenav.ascx"%>
<%@ Register TagPrefix="MPuc" TagName="desktopnav" Src="UserControl/desktopnav.ascx"%>
<%@ Register TagPrefix="MPuc" TagName="footer" Src="UserControl/footer1.ascx"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>EshineAspNet - <asp:Localize ID="Localize1" runat="server" Text='<%$ Resources:GResource,titletext %>'></asp:Localize></title>
<MPuc:headcontent runat="server" ID="Unnamed1"/>
    <LINK rel=stylesheet type=text/css href="CSS/safecenter.css">
<SCRIPT src="JS/mp.js" type="text/javascript"></SCRIPT>

  <link rel="stylesheet" href="CSS/gb.css" type="text/css" media="screen" />
<link rel="stylesheet" href="CSS/style_yixun.css" type="text/css" media="screen" />
<link rel="stylesheet" href="CSS/detail.css" type="text/css" media="screen" />
</head>
<body class='blogs ic_rwd' style="font-family:Arial" runat="server">
<MPuc:mobilenav ID="Mobilenav1" runat="server"/>
<div class='wrapper' data-behavior='Navigation' style="line-height:22px">
    <form id="Form1" runat="server">
<MPuc:desktopnav ID="Desktopnav1" runat="server"/>





    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>
<div class='container' data-behavior='Blog' >
<div class='row' >
    
         <div class="fx_fix fx_fix_nowprice" style="font-family:Arial" >
									<div class="fx_fix_top">
												<asp:Localize ID="Localize12" runat="server" Text='<%$ Resources:GResource,nowprice %>'></asp:Localize>：<p class="fx_fix_price"><span style="font-size:Medium">&yen;</span><asp:Label ID="Label4" runat="server" Text="Label" Font-Size="Medium"></asp:Label></p>
											</div>
         

					<a  class="fx_fix_bottom" runat="server" id="buyme" onserverclick="buyme_ServerClick">
						<span>
						 <asp:Localize ID="Localize13" runat="server" Text='<%$ Resources:GResource,buynow %>'></asp:Localize>
                            <img src="img/cart.png"/>
                            </span>
						<i></i>
					</a>
             
                 <asp:HyperLink class="fx_fix_belowbotton" ID="HyperLink2" runat="server"><asp:Localize ID="Localize14" runat="server" Text='<%$ Resources:GResource,shopcar %>'></asp:Localize><p><span>&yen;</span><asp:Label ID="Label5" runat="server" Text="0"></asp:Label></p></asp:HyperLink>
              
          
								</div>
    
    

  <div class="ic_content xcontent"  style="background-color:white;">    

    <!--S xcontent_row2 -->
    <div class="grid_c1 xcontent_row2" style="margin-top:20px;" >
      <div class="grid_s">
          <!--S 产品图集 -->
          <div class="xgallery">
                        
            <!--S 展示图 -->
            <div id="xgalleryShow" class="xgallery_show oxzoom_standard">
              <a href="javascript:" ytag="21001">
                <img class="xgallery_img" itemprop="image" id="xgalleryImg" src='<%=displayimg %>' idx="1">
                <i class="xico xico_zoom"></i>
                <span class="oxzoom_lens" style="left: 20.5px; top: 170px;"></span>
              </a>
            </div>
            <!--S 展示图 -->

            <!--S 放大图 -->
            <div class="xgallery_zoom oxzoom_box" id="xgalleryZoom">
              <div class="oxzoom_box_inner">
                              <img class="oxzoom_img" width="800" height="800" style="margin-left: -55.66343042071197px; margin-top: -427.5px;">
                              <div class="oxzoom_loader"></div>
                          </div>
            </div>
            <!--E 放大图 -->


            <!--S 缩略图 -->
            <div class="xgallery_thumb" id="pic_small_wrapper">
              <div class="xgallery_thumb_wrapper" id="list_smallpic">
                <!-- xgallery_thumb_list li 加类名 current 表示选中-->
                <ul class="xgallery_thumb_list clearfix" style="width: 213px;">
                    <li idx="0" class="current"><a href="javascript:" hidefocus="true">
                        <img src="<%=displayimg %>" ></a></li>

                    <%=allpics %>

                   </ul>
              </div>
              <a ytag="21002" class="xgallery_prev xgallery_prev_disabled" href="javascript:"><i></i></a>
              <a ytag="21003" class="xgallery_next xgallery_next_disabled" href="javascript:"><i></i></a>
            </div>
            <!--E 缩略图 -->
          </div>
          <!--E 产品图集 -->

      
        
      </div>
      <div class="grid_m">
          <!--S 商品主要信息 -->
          <div class="xbase">
            <div class="xbase_row1">
              <h1 class="xname" itemprop="name">
                  <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></h1>
              
              
			  
              
            </div>

            <div class="xbase_row2" >
            
            	
        		<dl class="xbase_item xprice">
                <dt class="xbase_col1"><asp:Localize ID="Localize2" runat="server" Text='<%$ Resources:GResource,promoteprice %>'></asp:Localize></dt>
                <dd class="xbase_col2">
                  <span class="mod_price xprice_val" itemprop="price"><i itemprop="priceCurrency" content="CNY">¥</i>
                      <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                  </span>
	            </dd>
              </dl>
                <dl class="xbase_item xprice">
                    <dt class="xbase_col1"><asp:Localize ID="Localize3" runat="server" Text='<%$ Resources:GResource,pricetype %>'></asp:Localize></dt>
                    <dd class="xbase_col2">
                        <span class="mod_price xprice_val" itemprop="price" style="text-decoration:line-through;font-size:15px"><i itemprop="priceCurrency" content="CNY">¥</i>
                      <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                  </span></dd>
                </dl>
            
            
            
            
          
        </div>
                        
            <div class="xbase_row3">
              
              
              
			  
              <!-- 商品SKU S-->
              <!--  规则没选提示加 xsku_attention 类名-->
              <div id="sea_sale_attr_wrap" class="hide" style="display: block;"><div class="xsku"><dl class="xbase_item xcolor">
                  <dt class="xbase_col1"><asp:Localize ID="Localize4" runat="server" Text='<%$ Resources:GResource,producttype %>'></asp:Localize></dt><dd class="xbase_col2">
                  <ul class="xoption_list clearfix" rel="49">
                      
                      <%=sameproduct %>
                  </ul></dd></dl></div></div>              
              <!-- 商品SKU E-->
              
              
              
              	  
              
              <dl class="xbase_item xnumber">
                <dt class="xbase_col1"><asp:Localize ID="Localize5" runat="server" Text='<%$ Resources:GResource,num %>'></asp:Localize></dt>
                  <dd>

<asp:ImageButton ID="ImageButton1" runat="server" AlternateText="-" ImageUrl="~/Images/minus.jpg" ImageAlign="Middle" />
                <asp:TextBox ID="num" runat="server" Width="25px" Text="1" class="uniprice" BackColor="White"></asp:TextBox>
                <asp:ImageButton ID="ImageButton2" runat="server" AlternateText="+" ImageUrl="~/Images/plus.jpg" ImageAlign="Middle" />
                <asp:NumericUpDownExtender ID="NumericUpDownExtender1" runat="server" Maximum="10" Minimum="0" TargetButtonUpID="ImageButton2" TargetButtonDownID="ImageButton1" TargetControlID="num"></asp:NumericUpDownExtender>
         

                  </dd>
                <dd class="xbase_col2 hidden">
                    <span class="x_mod_number">

 <a href="javascript:" hidefocus="true" class="x_mod_number_minus sea_order_minus x_mod_number_minus_disabled" ytag="22701"></a>
                      <input type="text" id="order_num" maxlength="2" maxnumlimit="99" minnumlimit="1" value="1" class="x_mod_number_input">
                      <a href="javascript:" hidefocus="true" class="x_mod_number_plus sea_order_add" ytag="22702"></a>
                    </span>
                    
                    
                </dd>
              </dl>
            </div>

            <div class="xbase_row4">
              <dl class="xbase_item xselected" id="attr_selected_wrap"><dt class="xbase_col1"><asp:Localize ID="Localize6" runat="server" Text='<%$ Resources:GResource,choose %>'></asp:Localize></dt><dd class="xbase_col2"><p class="xselected_prop">“<asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>”</p></dd></dl>
              <!--S 购物按钮 -->
                            
              <div class="xaction xaction_scan clearfix" id="sea_buy_wrap">
              

              	<a runat='server' onserverclick='buyme_ServerClick' class='button blue_button' id="paybutton" style="font-size:16px; width:180px; height:30px;line-height:30px;" ><i class='xico xico_cart'></i><asp:Localize ID="Localize7" runat="server" Text='<%$ Resources:GResource,addcart %>'></asp:Localize></a>
                 

                  
              </div>
              <!--E 购物按钮 -->

      
			  

            </div>
            
          </div>
          <!--E 商品主要信息 -->      
      </div>
          
    </div>

    <!--E xcontent_row2-->

      <asp:Panel ID="Panel1"  runat="server" >
          <div class="grid_c1 xcontent_row4" style="border-width:1px; border-style:solid; border-color:#cccccc; margin-bottom:15px;">
          <DIV class="row stores" style="text-align:center">
<DIV class="eightcol" style="padding:5px 0 0 5px;">
<DIV class="two_input_grouping">
<DIV class="input month_select required">
    <asp:DropDownList ID="com_Province" runat="server" AutoPostBack="True"  class="select required customSelect"  style="background-color:white"
             onselectedindexchanged="com_Province_SelectedIndexChanged"
                   meta:resourcekey="com_ProvinceResource1">
            <asp:ListItem Text='<%$ Resources:GResource,selectProvince %>'></asp:ListItem>
        </asp:DropDownList>
    
</DIV>
<DIV class="input select required">
<asp:DropDownList ID="com_City" runat="server" AutoPostBack="True" 
         onselectedindexchanged="com_City_SelectedIndexChanged"   class="select required customSelect" style="background-color:white"
                   meta:resourcekey="com_CityResource1">
            <asp:ListItem Text='<%$ Resources:GResource,selectCity %>'></asp:ListItem>
        </asp:DropDownList>
</DIV>
<DIV class="input select hidden">
<asp:DropDownList ID="com_Area" runat="server"  class="select required customSelect"
                   meta:resourcekey="com_AreaResource1">
            <asp:ListItem Text='<%$ Resources:GResource,selectZone %>'></asp:ListItem>
        </asp:DropDownList>
</DIV>

</DIV>

</DIV>
</DIV>
          <DIV class="row stores">
 <DIV class="fourcol">
<asp:Panel ID="Panel14" runat="server" Width="100%"  ScrollBars="auto">
<DIV class=" password_management">
<DIV class="pm_index" style="width:288px;">
<UL style="filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(src='', sizingMethod='scale')" >


 
    <%=contentlist1 %>
</UL>

</DIV>
</DIV>
    </asp:Panel>
 </DIV>
<DIV class="fourcol">
 <asp:Panel ID="Panel16" runat="server" Width="100%" ScrollBars="auto">
<DIV class=" password_management">
<DIV class="pm_index" style="width:288px;">
<UL style="filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(src='', sizingMethod='scale')" >

      <%=contentlist2 %>

 </UL>
</DIV>
</DIV>
    </asp:Panel>
 </DIV>
 <DIV class="fourcol last">
 <asp:Panel ID="Panel15" runat="server" Width="100%"  ScrollBars="auto">
<DIV class=" password_management">
<DIV class="pm_index" style="width:288px;">
<UL style="filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(src='', sizingMethod='scale')" >

      <%=contentlist3 %>

 </UL>
</DIV>
</DIV>
    </asp:Panel>
 </DIV>
 
 </DIV>
              </div>
      </asp:Panel>
    

      <div class="grid_c1 xcontent_row4">
          <DIV class="grid_m">
<DIV class="grid_m_inner"><!-- S 产品介绍-->       
<DIV class="x_mod_tab xoverview" id="introduction">

    <DIV class="x_mod_tab_hd" id="info_tit">
<UL class="x_mod_tab_nav">
  <LI id="t_introduce"><A hidefocus="hidefocus" href="javascript:" ><I class="xico xico_intro"></I><asp:Localize ID="Localize8" runat="server" Text='<%$ Resources:GResource,chanpinjieshao %>'></asp:Localize></A></LI>    
             
  <LI id="t_comment" class='<%=shuomingclass %>'><A hidefocus="hidefocus" href="javascript:" ><I 
  class="xico xico_comment"></I><asp:Localize ID="Localize9" runat="server" Text='<%$ Resources:GResource,shiyongshuoming %>'></asp:Localize></A></LI>               
  <LI id="t_parameters" class='<%=parameterclass %>'><A hidefocus="hidefocus" href="javascript:"><I class="xico xico_spec"></I><asp:Localize ID="Localize10" runat="server" Text='<%$ Resources:GResource,jibencanshu %>'></asp:Localize></A></LI>    
             
  <LI class="x_mod_tab_nav_last <%=brandintroclass %>"  id="t_warranty" style="width:246px;"><A hidefocus="hidefocus" href="javascript:" ><I 
  class="xico xico_aftersale"></I><asp:Localize ID="Localize11" runat="server" Text='<%$ Resources:GResource,pinpaijieshao %>'></asp:Localize></A></LI>               
</UL>
<DIV class="x_mod_tab_extra">
<DIV class="xqcart"><A class="xbtn xbtn_s" id="sea_float_buy" href="javascript:" 
ytag="23005">加入购物车</A>                 </DIV></DIV></DIV>

          <div class="x_mod_tab_bd" id="intro-main_tab">
              <DIV class="x_mod_tab_con intro-main" id="c_introduce"><%=content %></DIV>
<DIV class="x_mod_tab_con hide" id="c_comment"><% =shuoming %></DIV>
<DIV class="x_mod_tab_con hide" id="c_parameters"><%=parameter %></DIV>
<DIV class="x_mod_tab_con hide" id="c_warranty"> <%=brandintro %> </DIV>
          
              </div>

    </DIV></DIV></div>
          </div>
    
  </div>
  <div class="xzoom" id="sea_zoom_wrap" style="top: -102px; display:none">
      <div class="xzoom_tit">大图预览</div>
      <div class="xzoom_img">
        <img src="Images/UploadFile/shop1.jpg" alt="" id="sea_zoom_pic" width="600" heigt="600" idx="1">
        <a href="javascript:" class="xzoom_prev" ytag="21004"></a>
        <a href="javascript:" class="xzoom_next" ytag="21005"></a>
      </div>      
      <ul class="xzoom_thumb_list clearfix">
          <li idx="0" class="current"><a href="javascript:" hidefocus="true">
              <img src="<%=displayimg %>"></a></li>
          <%=allpics %>
       </ul>
      <a href="javascript:" class="xzoom_close" id="sea_zoom_close"></a>
  </div>
  <div id="sea_window" class="xmask"></div> 
<script type="text/javascript" src="JS/sea-combo.js" charset="utf-8"></script><!--[if !IE]>|xGv00|c970cb4125a1363e85d1b0024204fa4d<![endif]-->
  <script type="text/javascript" src="JS/global.js" charset="gb2312"></script>

<script type="text/javascript">
    



</script>
     <!--script type="text/javascript" src="JS/yixun_order_input_lyx.js" charset="gb2312"></script-->
    <script type="text/javascript" src="JS/yixun_image_lyx.js" charset="gb2312"></script>
    <script type="text/javascript" src="JS/yixun_pagedetail_lyx.js" charset="gb2312"></script>

   <script type="text/javascript">

       var itemInfo = { "pic_num": <%=picnum%> };
       newInit("", itemInfo);
       pagedetailinit();

</script>
<!--[if !IE]>|xGv00|a2c08e7b0b24ccdf227d225b9c3c982e<![endif]-->
<div class="mod_backtop hide" id="j_backtop"><a href="javascript:" title="回顶部" ytag="72300">回顶部</a></div>



    </div>
</div>
</form>


</div>
<MPuc:footer ID="ucfooter" runat="server"/>
</body>
</html>

<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SystemCredit.ascx.cs"
    Inherits="IntelArcade.WebApp.InfoBoxes.SystemCredit" %>

   
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
<div id="lessdetailsvv">
<div id="app3" class="bluebar_radious" style="background-color:#336699; height:22px;color: White;font: bold 0.9em Arial; margin: 0 0 5px 0;padding: 4px 0 4px 10px;">

<table id="appspan4" align="left">
<tr>
<td>
<asp:Label ID="tdtilte" runat="server"></asp:Label>
</td>
</tr>
</table>

<table id="appspan5" align="right">
<tr>
<td align="right" style="vertical-align:top;padding-top:2px;">
<span class="rightHeaderInfo3"><asp:Literal runat="server" ID="ProviderBalance2" Visible="false" /></span>
</td>
<td align="right">
   <table>
   <tr>
   <td style="vertical-align:top;"><span class="rightHeaderInfo3">
   <asp:Literal runat="server" ID="AvailableBalance2" />
   </td>
   </tr>
   </table>
</td>
</tr>
</table>


<span class="rightHeaderInfo4" id="appspan3" style="width:100%;display:none;border-top: 1px solid #4275a7;">
<asp:Literal  runat="server" id="DefaultContainers" visible="false" />
<asp:PlaceHolder runat="server">
<span class="rightHeaderInfo3" style="line-height:36px;float:left;margin-top:0px;" >
<img class="imms" id="ImgProvider" visible="false" src="~/images/ProviderCredit-50x.png" 
style="width:30px;height:30px;margin-top:8px; padding-left:7px;" alt="Provider" title="My Income as a Provider" runat="server"/>

<span style="font-size:11px;" class="rightHeaderInfo3">
<asp:Literal runat="server" ID="ProviderBalance" Visible="false" /></span>
</span>


<span  style="color: #fff;line-height:36px;float:right;margin-top:0px;margin-right:27px">
<table>
<tr>
<td>
<img class="imms"  id="Img5ccc" src="~/images/seekerCredit-50x.png" style="width:30px;height:30px;margin-top:6px; padding-left:6px;" alt="Seeker" title="My total db-Credit as a Seeker & my available credits" runat="server"/>

</td>
<td style="vertical-align:top;padding-top:5px;">

  <span style="text-align:left;vertical-align:middle;line-height:22px;font-size:11px" >
  <table style="width:60px;height:22px;">
  <tr style="height:11px;"><td height="11px" style="line-height:11px;">  <asp:Literal runat="server" ID="TotalBalance" /></td></tr>
  <tr style="height:11px;"><td height="11px" style="line-height:11px;"> <asp:Literal runat="server" ID="AvailableBalance" /></td></tr>
  </table>

<%--   <span class="rightHeaderInfo3" style="font-size:11px;line-height: 10px;color: #bfbfbf;">--%>
  
   </span>
</td>
</tr></table>



   </span>
  </asp:PlaceHolder>

</span>




</div>

</div>


<table>
    <tr>
        <td>
            <div class="rightArticle">
                <span class="tooltip1">
                <a href="../MemberPages/BuyCredit.aspx">
                    <img id="Img3" style="width: 50px; height: 50px;" src="/images/RightNav/systemCredit-50x.png"
                        onmouseover="this.src='/images/RightNav/systemCredit-ro.png'" onmouseout="this.src='/images/RightNav/systemCredit-50x.png'"
                        alt="Image" title="" class="leftImage" runat="server" /></a>
                <asp:HyperLink ID="HyperLink2"
                            NavigateUrl="~/MemberPages/BuyCredit.aspx" runat="server">    <p style="margin-top:12px;font-size:12px;width:230px;font-weight:bold"> Load <b>d<label class="highlight">b</label></b>-<i>Credit</i></p></asp:HyperLink><br />
                    <span class="custom info"><b>d<label class="highlight2">b</label></b>-<i>Credit</i> needs to be loaded before appointments can be booked.</span>
                </span>
            </div>
        </td>
    </tr>
    <tr>
        <td>
            <div class="rightArticle">
                <span class="tooltip1">
                <a  href="../MemberPages/TransactionHistory.aspx">
                    <img id="Img4" style="width: 50px; height: 50px;" src="~/images/transactionHistory-50x.png"
                        onmouseover="this.src='/images/RightNav/Payment-History-ro.png'" onmouseout="this.src='/images/transactionHistory-50x.png'"
                        alt="Image" title="Bala" class="leftImage" runat="server" /></a><asp:HyperLink
                            ID="HyperLink1" NavigateUrl="~/MemberPages/TransactionHistory.aspx" runat="server"><p style="margin-top:12px;font-size:12px;width:230px;font-weight:bold"> Transaction History</p></asp:HyperLink><br />
                    <span class="custom info">Balance your books easily. View all the activity and balances on your account.</span>
                    </span>
            </div>
        </td>
    </tr>
</table>
 </ContentTemplate>
</asp:UpdatePanel>
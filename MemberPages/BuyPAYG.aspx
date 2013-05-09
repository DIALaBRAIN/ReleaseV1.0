<%@ Page Title="" Language="C#" MasterPageFile="~/StandardMaster.master" AutoEventWireup="true" CodeBehind="BuyPAYG.aspx.cs" Inherits="IntelArcade.WebApp.MemberPages.BuyPAYG" %>
<%@ Register src="~/UserControls/SimplePrepaySelector.ascx" tagname="SimplePrepaySelector" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
    <h2 style="font-size:1.2em">Buy d<span class="highlight">b</span>-<i>Time</i></h2>
    <div runat="server" id="ContentContainer">
        <p style="padding-left:10px; padding-right:10px">PayAsYouGo: is a way of buying <b>d<label class="highlight2">b</label></b>-<i>Time</i> as and when you need it.</p>
        <p style="padding-left:10px; padding-right:10px">The cost of PayAsYouGo is $0.17/min or &#8364;0.125/min or £0.10/min</p>
        <br />
        <p style="padding-left:10px; padding-right:10px">d<span class="highlight2">b</span>-<i>Time</i> is the time spent on a web conference call.<br/></p>
         <br />
         <div style= " margin:0px 0px 0px 0px; padding: 0px 0px 0px 0px; text-align:center;">
         <table style = "width:600px; margin:auto;-moz-box-shadow: 0px 0px 2px #000000;-webkit-box-shadow: 0px 0px 2px #000000;box-shadow: 0px 0px 2px #000000;">
         <tr>
         <td style="padding:0px 0px 0px 0px;">
         <p style="padding-left:10px; padding-right:10px;"><span class="tooltip3"><img src="../images/equation.png"/>
         <span class="custom info"><b>d<label class="highlight2">b</label></b>-<i>Time</i> is the web conferencing call cost & provider-time is the charge for the service provider's time.</span>
         </span>
         </p>
         </td>
         <td>
         <p style="padding-left:10px; padding-right:10px;"><span class="tooltip2"><img src="../images/equation_02.png"/>
         <span class="custom info"><b>d<label class="highlight2">b</label></b>-<i>Time</i> is the web conferencing call cost.</span>
         </span>
         </p>
         </td>
         <td>
         <p style="padding-left:10px; padding-right:10px;"><img src="../images/equation_03.png"/>
         </p>
         </td>
         <td>
         <p style="padding-left:10px; padding-right:10px;"><span class="tooltip2"><img src="../images/equation_04_75.png"/>
         <span class="custom info">Provider-time is the charge for the service provider's time.</span>
         </span></p>
         </td>
         </tr>
         </table>
         </div>
         <br />
        <h2>
        <p>PrePay</p>
        </h2>
        <p style="padding-left:10px; padding-right:10px">Prepay is a way of saving money by loading <b>d<label class="highlight2">b</label></b>-<i>Time</i> ahead of time.</p>
        <br />
        <uc1:SimplePrepaySelector runat="server" ID="SimplePrepaySelector" />
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentRightAbove" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentRightBelow" runat="server">
</asp:Content>

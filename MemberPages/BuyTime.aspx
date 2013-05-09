<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/StandardMaster.master" CodeBehind="BuyTime.aspx.cs" Inherits="IntelArcade.WebApp.MemberPages.BuyTime" %>
<%@ Register src="~/UserControls/SimplePrepaySelector.ascx" tagname="SimplePrepaySelector" tagprefix="uc1" %>
<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentBody">
    <h2 style="font-size:1.2em">Buy PrePay d<span class="highlight">b</span>-<i>Time</i></h2>
    <div runat="server" id="ContentContainer">
        <p style="padding-left:10px; padding-right:10px"><b>d<span class="highlight2">b</span></b>-<i>Time</i> is the time spent on a web conference call.<br/></p>
         <br />
         <div style= " margin:0px 0px 0px 0px; padding: 0px 0px 0px 0px; text-align:center;">
         <table style = " width:580px; margin:auto;-moz-box-shadow: 0px 0px 2px #000000;-webkit-box-shadow: 0px 0px 2px #000000;box-shadow: 0px 0px 2px #000000; padding-top:5px;">
         <tr>
         <td style="padding:0px 0px 0px 25px; text-align:right;">
         <p style="padding-left:-20px;padding-right:-18px;"><span class="tooltip2"><img src="../images/earnings.png"/>
         <span class="custom info"><b>d<label class="highlight">b</label></b>-<i>Time</i> is the cost of web-conferencing call & provider-time is the charge for the service provider's time.</span>
         </span>
         </p>
         </td>
         <td style="text-align:left;">
         <p style="padding-left:25px; padding-right:5px;"><span class="tooltip2"><img src="../images/equation_04_75.png"/>
         <span class="custom info">Provider-time is the charge for the service provider's time.</span>
         </span></p>
         </td>
         <td>
         <p style="padding-left:0px; padding-right:10px;"><img src="../images/equationMinus.png">
         </p>
         </td>
            <td>
         <p style="padding-left:10px; padding-right:20px;"><span class="tooltip2"><img src="../images/equation_02.png"/>
         <span class="custom info"><b>d<label class="highlight">b</label></b>-<i>Time</i> is the cost of web-conferencing call.</span>
         </span>
         </p>
         </td>
          <td>
         <p style="padding-left:0px; padding-right:10px;"><img src="../images/equationMinus.png">
         </p>
         </td>
           <td>
         <p style="padding-left:10px; padding-right:25px;"><span class="tooltip2"><img src="../images/commission.png"/>
         <span class="custom info"><b>DIALa<label class="highlight">BRAIN</label></b>'s commission on the transaction.</span>
         </span>
         </p>
         </td>
         </tr>
         </table>
         </div>
         <br />
        <p style="margin-left:80px; padding-right:10px; text-align:justify;">Prepay is a way of buying <b>d<label class="highlight2">b</label></b>-<i>time</i> credit, so that your meeting costs are payed in advance.<br />
        Essentially the service seeker sees only your cost per hour. The call cost is borne by you.<br />If you have earnings "Pay Now" will debit  you earnings balance.</p>
        <br />
        <div style="margin-left:80px;">
        <uc1:SimplePrepaySelector runat="server" ID="SimplePrepaySelector" />
        </div>
    </div>
</asp:Content>


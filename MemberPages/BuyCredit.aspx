<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/StandardMaster.master"
    CodeBehind="BuyCredit.aspx.cs" Inherits="IntelArcade.WebApp.MemberPages.BuyCredit" %>

<%@ Register Src="../UserControls/SimplePaymentSelector.ascx" TagName="PaymentSelector"
    TagPrefix="uc1" %>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="ContentBody">
    <style>
        .rptItem .itemBody
        {
            border-bottom: 0px;
        }
        
        .Meetingbox
        { clear:both;
            padding-bottom:-5px;
           
        }
    </style>
    <h2 style="font-size: 1.2em">
        Load d<span class="highlight">b</span>-<i>Credit</i></h2>
    <div runat="server" id="ContentContainer">
        <p style="padding-left: 10px; padding-right: 10px">
            <b>d<span class="highlight2">b</span></b>-<i>Credit</i> is used to pay for your
            meeting costs.</p>
        <br />
        <div style="margin: 0px 0px 0px 0px; padding: 0px 0px 0px 0px; text-align: center;">
            <table style="width: 580px; margin: auto; -moz-box-shadow: 0px 0px 2px #000000; -webkit-box-shadow: 0px 0px 2px #000000;
                box-shadow: 0px 0px 2px #000000; padding-top:5px;">
                <tr class="Meetingbox">
                    <td style="padding: 0px 0px 0px 85px; width:60%">
                        <p style="padding-left: -20px; padding-right: 0px;">
                            <span class="tooltip3">
                                <img src="../images/equation.png" />
                                <span class="custom2 info2"><b>d<label class="highlight">b</label></b>-<i>Time</i> is
                                    the cost of web-conferencing call & provider-time is the charge for the service
                                    provider's time.</span> </span>
                        </p>
                    </td>
                    <td>
                        <p style="padding-left: 0px; padding-right:0px; width:40%">
                            <span class="tooltip2">
                                <img src="../images/equation_04_75.png" />
                                <span class="custom2 info2">Provider-time is the charge for the service provider's time.</span>
                            </span>
                        </p>
                    </td>
                    
                </tr>
            </table>
            <br />
        </div>
        <div style="float: left; margin-left:52px;">
            <table style="width: 500px;  margin: auto; -moz-box-shadow: 0px 0px 0px #000000;">
                <tr align="center">
                    <td style="text-align: right">
                        <label>
                            If
                        </label>
                    </td>
                    <td>
                        <img src="../images/Free-1st-Session.png" />
                    </td>
                    <td style="text-align: left">
                        <label>
                            provider is offering 1st meeting for free.</label>
                    </td>
                </tr>
            </table>
        </div>
        <div style="float:left; margin-left:67px;">
            <uc1:PaymentSelector ImageUrl="~/images/systemCredit-50x.png" runat="server" ID="PaymentSelector" />
        </div>
    </div>
</asp:Content>

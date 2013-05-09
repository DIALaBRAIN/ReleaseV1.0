<%@ Page Title="" Language="C#" MasterPageFile="~/SimpleMaster.Master" AutoEventWireup="true"
    CodeBehind="ExampleInvioce.aspx.cs" Inherits="IntelArcade.WebApp.MemberPages.ExampleInvioce" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
    <div>
        <label  style="color: Red;">
            <asp:Label ID="Name" runat="server"></asp:Label></label><br />
            <span style="color: Red;">
        <asp:Label runat="server" ID="InvoiceAddress"></asp:Label></span>
        <table width="100%">
            <tr>
                <td>
                    <label>
                        Invoice</label>
                    <span style="color: Red;">PAID</span>
                </td>
                <td>
                    <label>
                        Invoice Number:
                    </label>
                    <span style="color: Red;">
                    100000</span>
                </td>
                <td>
                    <label>
                        <span style="color: Red;"><asp:Label runat="server" ID="taxName"></asp:Label></span>
                        Number:
                    </label>
                    <span style="color: Red;">
                    <asp:Label ID="taxNumber" runat="server"></asp:Label></span>
                </td>
                <td>
                    <label>
                        Invoice Date:</label>
                        <span style="color: Red;">
                    <asp:Label runat="server" ID="InvoceDate"></asp:Label></span>
                </td>
            </tr>
            <tr>
                <td style="border-bottom: 1px solid #3f3f3f;" colspan="4">
                </td>
            </tr>
            <tr>
                <td>
                    <label>
                        INVOICE TO:</label>
                    <span style="color: Red;">Your client (the seeker's) name</span>
                </td>
            </tr>
            <tr>
                <td>
                    <span style="color: Red;">Your client (the seeker's) address</span>
                </td>
            </tr>
            <tr>
                <td>
                    <label>
                        TAX Number:</label>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                </td>
            </tr>
        </table>
        <table width="100%">
            <tr style="vertical-align: text-top;">
                <td>
                    <label>
                        Description</label>
                </td>
                <td><label>Invoice Reference</label></td>
                <td style="text-align:right; width:100px;"><label>Hrs:Mins</label></td>
                <td style="text-align:right; width:100px;"><label>Unit Rate<br />(Ex <span style="color: Red;"><asp:Label runat="server" ID="taxName5"></asp:Label></span>)</label></td>
                <td style="text-align:right; width:100px;"><label>Total Payable<sup>2</sup><br />(Ex <span style="color: Red;"><asp:Label runat="server" ID="taxName4"></asp:Label></span>)</label></td>
                <td style="text-align:right; width:100px;"><label><span style="color: Red;"><asp:Label runat="server" ID="taxName2"></asp:Label></span> Rate<sup>3</sup></label></td>
                <td style="text-align:right; width:100px;"><label style="color: Red;"><asp:Label runat="server" ID="taxName3"></asp:Label></label></td>
                <td style="text-align:right; width:100px;"><label>Total Payable</label></td>
            </tr>
            <tr>
                <td>Consultancy Fee <span style="color: Red;">X</span> minutes</td>
                <td></td>
                <td style="text-align:right"><span style="color: Red;">??:??</span></td>
                <td style="text-align:right"><span style="color: Red;">???</span></td>
                <td style="text-align:right"><span style="color: Red;">???</span></td>
                <td style="text-align:right"><span style="color: Red;">???</span></td>
                <td style="text-align:right"><span style="color: Red;">???</span></td>
                <td style="text-align:right"><span style="color: Red;">???</span></td>
            </tr>
            <td><br /></td>
             <tr>
                <td colspan="3">
                <td style="border-top:1px solid #3f3f3f;" colspan="5"></td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td style="text-align:right"><span style="color: Red;">???</span></td>
                <td></td>
                <td></td>
                <td style="text-align:right"><span style="color: Red;">???</span></td>
            </tr>
            <tr>
                <td colspan="7">
                <td style="border-top:1px solid #3f3f3f;" colspan="1"></td>
            </tr>
                        <tr>
                <td colspan="7">
                <td style="border-top:1px solid #3f3f3f;" colspan="1"></td>
            </tr>
        </table>
        <div style="float:right">
        Amount received with thanks
        <span style="color: Red; text-align:right"><asp:Label runat="server" Width="80px" ID="Ammunt"></asp:Label>  ???</span>
        </div>
        <div style="padding-top:80px;">
            1 Prepay <b>d<label class="highlight2">b</label></b>-<i>Time</i> used is not a billable item <br />
            2 The commission is caluculated on your earnings excluding VAT or TAX <br />
            3 If RC (Reverse Charge Supply) – customer accounts for VAT to their own relevant VAT authority
        </div>
    </div>
</asp:Content>

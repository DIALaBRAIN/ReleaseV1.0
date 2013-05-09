<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/StandardMaster.master"
    CodeBehind="ConfirmPayment.aspx.cs" Inherits="IntelArcade.WebApp.MemberPages.ConfirmPayment" %>


<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="ContentBody">
<script type="text/jscript">

    function PayNowClick() {
        $('.payNow').hide();
    }
    
</script>

    <h2 style="font-size: 1.2em">
        <%=PageTitle %></h2>
    <div id="PayPalPanel">
        <iac:InvoiceRenderer runat="server" ID="InvoiceViewerSummary" ShowHeader="false"
            View="Simple" Width="100%" />
        <div runat="server" id="PaymentPanel">
            <table style="width: 100%">
                <tr>
                    <td style="text-align: right;">
                    <span class="payNow">
                        <img id="PayPalImage" src="../images/paypalsecurepayment.jpg" alt="" runat="server" />
                        <br />
                        <span
                            class="confirmBtn" style="float: right;"><asp:LinkButton ID="PayNow" runat="server"
                                OnClick="PayNow_Click" Text="" OnClientClick="PayNowClick();"></asp:LinkButton></span>
                                <span
                            class="cancelButton" style="float: right;margin-left:50px;margin-right:-150px"><asp:LinkButton ID="LinkButton1" runat="server"
                                OnClick="cancel_Click" Text=""></asp:LinkButton></span>
                                </span>
                    </td>
                </tr>
            </table>
        </div>
        <div style="width: 100%; text-align: right; padding-top: 10px;">
            <span class="largeButton" style="float: right">
                <asp:HyperLink Font-Size="7.5px" Font-Bold="true" CssClass="paypalhref" runat="server" ID="PayPalLink"
                    Target="_blank" Visible="false">Click here to pay using PayPal</asp:HyperLink></span>
        </div>
    </div>
    <div id="PaymentConfirmation" style="display:none;">
        <iac:InputContainer runat="server" ID="InputContainer1" Columns="1">
            <table>
                <tr style="vertical-align:top">
                <td><img id="Img2" src="~/images/systemCredit-50x.png" alt="Image" title="Image" class="leftImage" style="height:50px;width:50px" runat="server" /></td>
                <td> Your payment will take a little while to be processed and display on your balance. However, your <asp:HyperLink ID="HyperLink2" NavigateUrl="~/MemberPages/TransactionHistory.aspx" runat="server"> Transaction History</asp:HyperLink> .  should reflect the payment very soon after your payment is made.</td>
                </tr>
            </table>
            
        </iac:InputContainer>
    </div>
</asp:Content>

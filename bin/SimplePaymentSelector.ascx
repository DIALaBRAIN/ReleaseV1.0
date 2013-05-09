<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SimplePaymentSelector.ascx.cs"
    Inherits="IntelArcade.WebApp.UserControls.SimplePaymentSelector" %>
<script language="javascript" type="text/javascript">
    function __iac_PrepayAmount_Changed(sender, prev) {
        if ((prev == "X" && sender.value != "X") || prev != "X" && sender.value == "X") {
            __iac_PrepayAmountPostback();
        }
    }    
</script>
<tel:RadAjaxManager ID="RadAjaxManager1" runat="server" DefaultLoadingPanelID="RadAjaxLoadingPanel1">
    <AjaxSettings>
        <tel:AjaxSetting AjaxControlID="UpdatePanel">
            <UpdatedControls>
                <tel:AjaxUpdatedControl ControlID="TargetPanel" LoadingPanelID="RadAjaxLoadingPanel1" />
            </UpdatedControls>
        </tel:AjaxSetting>
    </AjaxSettings>
</tel:RadAjaxManager>
<tel:RadAjaxLoadingPanel runat="server" ID="RadAjaxLoadingPanel1" Skin="WebBlue"
    MinDisplayTime="500">
</tel:RadAjaxLoadingPanel>
<asp:UpdatePanel ID="UpdatePanel" UpdateMode="Conditional" ChildrenAsTriggers="false"
    runat="server">
    <ContentTemplate>
        <div class="rptItem" style="padding-left: 6px;">
            <div runat="server" id="TargetPanel" class="itemBody">
                <div class="inner">
                    <table border="0" cellpadding="0" cellspacing="0">
                        <tr>
                            <td style="vertical-align:top;">
                                <img id="Img2" src="/images/systemCredit-50x.png" alt="Image" title="Image" class="leftImage"
                                    style="height: 50px; width: 50px;" />
                            </td>
                            <td style="vertical-align: top;">
                                <div style="margin-left: 5px;" class="AmountBox">
                                    <asp:DropDownList ID="PrepayAmount" runat="server" Height="23px" Width="120px" ValidationGroup="PrepayAmount" />
                                    &nbsp;<iac:IARequiredFieldValidator runat="server" ID="rfvalPrepayAmount" ControlToValidate="PrepayAmount"
                                        ValidationGroup="PrepayAmount" />
                                    <iac:CurrencyBox ID="OtherAmount" runat="server" Width="70px" Height="20px" ValidationGroup="PrepayAmount" />
                                    &nbsp;<iac:IARequiredFieldValidator runat="server" ID="rfvalOtherAmount" ControlToValidate="OtherAmount"
                                        ValidationGroup="PrepayAmount" />
                                </div>
                                <div style="padding: 5px;" class="paynowButton">
                                    <span class="updateRow">
                                        <asp:LinkButton ID="ConfirmAndPay" OnClick="ConfirmAndPay_Click" runat="server" ValidationGroup="PrepayAmount"
                                            Text=""></asp:LinkButton>
                                    </span>
                                </div>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </ContentTemplate>
    <Triggers>
        <asp:PostBackTrigger ControlID="ConfirmAndPay" />
    </Triggers>
</asp:UpdatePanel>

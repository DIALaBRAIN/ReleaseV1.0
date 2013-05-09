<%@ Page Language="C#" AutoEventWireup="True" EnableEventValidation="false" CodeBehind="TaxRateEdit.aspx.cs"
    MasterPageFile="~/StandardMaster.master" Inherits="IntelArcade.WebApp.ProviderSetup.TaxRateEdit" %>

<%@ Register Src="../UserControls/ProviderSetupNextPreviousNavigator.ascx" TagName="ProviderSetupNextPreviousNavigator"
    TagPrefix="uc2" %>
<%@ Register Src="../UserControls/ProviderSetupNextPreviousNavigator.ascx" TagName="ProviderSetupNextPreviousNavigator"
    TagPrefix="uc3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentBody" runat="server">
    <script type="text/javascript">

        function OnClientClick() {
            var win = $find('<%=RadWindowCustomRate.ClientID %>');
            win.Close();
        }
    </script>
    <style type="text/css">
        .TelerikModalOverlay
        {
            filter: progid:DXImageTransform.Microsoft.Alpha(style=0,opacity=0) !important;
            background: red !important;
            opacity: 0.0 !important;
            -moz-opacity: 0.0 !important;
        }
    </style>
    <h2 style="font-size: 1.2em">
        <%=PageTitle %></h2>
    <div>
        <table style="width: 100%; align: left;">
            <tr>
                <td style="width: 190Px; position: absolute;">
                    <iac:FieldSet runat="server" ID="FieldSet10" Title="Tax Rates" class="formData">
                    </iac:FieldSet>
                   
                </td>
               
            </tr>
          
        </table><br />
               <div style="margin-left: 190px;">    
        <table style="width:100%; align: left; margin-top:-30px"><tr>
                             <td>

                                                 <uc2:ProviderSetupNextPreviousNavigator ID="psnTop" runat="server" ShowToolTip="true" OnOnNext="psn_OnNext" OnOnPrevious="psn_OnPrevious" />
                                    </td></tr></table>
         </div>
          <div style="margin-top: 10px;width:100%;border-bottom: 1px solid #cfcfcf;">    </div>
        <div style="padding-top: 5px; padding-left: 202px;">
            <div style=" padding: 10px 0px 5px 0;">
                <div title="Add Custom Rate" class="addButton" style="float: right; margin-top: -6px">
                    <asp:LinkButton ID="lnkAddCustomRate" runat="server" Text=""></asp:LinkButton>
                </div>
                <br />
                <tel:RadWindowManager EnableViewState="false"  ID="RadWindowManager1" runat="server" Skin="Sitefinity">
                    <Windows>
                        <tel:RadWindow  ID="RadWindowCustomRate" Behaviors="Close,Move,Minimize" VisibleStatusbar="false" 
                            Width="545px" Height="340px" Modal="true" Overlay="false" EnableShadow="true"
                            VisibleTitlebar="true" OnClientBeforeShow="__ia_ResetPopup" runat="server" AutoSize="true">
                            <ContentTemplate>
                                <div runat="server" id="ContainerHeader" style="width: 502px; height: 20px" class="dialogHeader">
                                   <span runat="server" id="pageWarn" visible="false" style="font-size:14px;color:#fc9900; margin-left: 20px;font-weight: bold;">Please update your tax rates prior to update services.</span>
                                </div>
                                <div runat="server" id="ContainerPreFooter" style="width: 485px; border-top: 0px; padding-bottom:15px;"
                                    class="dialogPreFooter">
                                    <div style="padding: 10px;">
                                        <div style="padding-bottom:5px;font-size: 12px">Please give a name to tax rate eg : Standard or Education ect.</div>
                                        <label id="lblRateName" runat="server">
                                            Tax Rate Name:</label>&nbsp;<asp:TextBox ID="txtNewRateName" runat="server" ValidationGroup="NewRateName" />&nbsp;<asp:RequiredFieldValidator
                                                ID="RequiredFieldValidator1" runat="server" ValidationGroup="NewRateName" Enabled="true"
                                                ControlToValidate="txtNewRateName" ErrorMessage="Required" Display="Dynamic" />
                                    </div>
                                </div>
                                <div runat="server" id="ContainerFooter" style="width: 510px; height: 50px;" class="dialogFooter">
                                    <asp:LinkButton ID="BtnAddNewRate" ValidationGroup="NewRateName" Style="float: right;
                                        margin-right: 15px; margin-top: 20px" runat="server">Create</asp:LinkButton>
                                    <a runat="server" style="float: left; margin-left: 15px; margin-top: 20px" id="CloseWindowLink"
                                        href="javascript:OnClientClick();">Cancel</a>
                                </div>
                            </ContentTemplate>
                        </tel:RadWindow>
                    </Windows>
                </tel:RadWindowManager>
                <iac:TaxRates runat="server" ID="taxRates" />
            </div>
            <div>
                <table>
                    <tr>
                        <td class="updateButton">
                            <asp:LinkButton ID="SubmitButton" runat="server" Text=""></asp:LinkButton>
                        </td>
                        <td title="Cancel" class="cancelButton" style="padding-left: 10px;">
                            <asp:LinkButton ID="CancelButton" runat="server" Text=""></asp:LinkButton>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div><br />
    <div style="padding-left: 194px; padding-right: 2px;">
        <div class="EditPageFooterLine">
        </div>
        <uc3:ProviderSetupNextPreviousNavigator ID="psnBottom" runat="server" ShowToolTip="true" OnOnNext="psn_OnNext" OnOnPrevious="psn_OnPrevious" />
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentRightAbove" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentRightBelow" runat="server">
</asp:Content>

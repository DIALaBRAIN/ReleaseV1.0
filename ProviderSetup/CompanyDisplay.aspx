<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="CompanyDisplay.aspx.cs"
    MasterPageFile="~/StandardMaster.master" Inherits="IntelArcade.WebApp.ProviderSetup.CompanyDisplay" %>

<%@ Register Src="~/UserControls/AddressView.ascx" TagName="AddressView" TagPrefix="iac" %>
<%@ Register Src="~/UserControls/ProviderSetupNavigator.ascx" TagName="ProviderSetupNavigator"
    TagPrefix="uc1" %>
<%@ Register Src="../UserControls/ProviderSetupHeader.ascx" TagName="ProviderSetupHeader"
    TagPrefix="uc2" %>
<%@ Register Src="../UserControls/ProviderSetupNextPreviousNavigator.ascx" TagName="ProviderSetupNextPreviousNavigator"
    TagPrefix="uc3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentBody" runat="server">
    <h2 style="font-size: 1.2em">
        Become a Professional Service Provider</h2>
    <table style="height: 142px">
        <tr>
            <td>
                <uc2:ProviderSetupHeader ID="ProviderSetupHeader1" runat="server" />
            </td>
        </tr>
    </table>
    <h2 style="font-size: 1.2em">
        <%=PageTitle %></h2>
    <div class="providerSetup">
        <table style="width: 100%">
            <tr>
                <td style="vertical-align: top; width: 15%">
                    <uc1:ProviderSetupNavigator ID="ProviderSetupNavigator1" runat="server" CurrentStep="CompanyDetails" />
                </td>
                <td class="verticalRuler">
                    <div style="padding-right: 5px; padding-bottom: 10px; width: 100%">
                        <uc3:ProviderSetupNextPreviousNavigator ID="psnTop" OnOnNext="psn_OnNext" NavigatorShowType="NextOnly"
                            runat="server" />
                    </div>
                    <table style="width: 100%">
                        <tr>
                            <td style="border-top: 1px solid #cfcfcf; padding: 5px 0px 5px 0;">
                                <span title="Edit" class="editButton" style="float: right; margin-right: -3px;">
                                    <asp:LinkButton ID="Edit_Company" Text="" runat="server" OnCommand="EditLink_Command"
                                        CommandName="Edit" ICommandArgument='<%# Eval("CompanyID") %>'></asp:LinkButton>
                                </span>
                                <h3 style="color: #FF9148;">
                                    Business</h3>
                                <div style="width: 100%; text-align: center; padding-bottom: 10px;">
                                    <h1 style="font-size: large">
                                        <asp:Label ID="CompanyName" runat="server" /></h1>
                                </div>
                                <div style="padding-left: 20px;">
                                    <iac:InputContainer runat="server" ID="InputContainer2" Columns="1">
            <Item Text="<%$ Resources:Labels,IncorporationNumber%>"><asp:Literal runat="server" ID="IncorporationNumber" /></Item>
            <Item Text="Trading Currency"><asp:Literal ID="Currency" runat="server" /></Item>

                                    </iac:InputContainer>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td style="border-top: 1px solid #cfcfcf; padding: 5px 0px 5px 0;">
                                <span title="Edit" class="editButton" style="float: right; padding-right: 0px;">
                                    <asp:LinkButton ID="EditRegisteredAddress" Text="" runat="server"></asp:LinkButton>
                                </span>
                                <h3 style="color: #FF9148;">
                                    Business Address</h3>
                                <asp:Panel ID="RegisteredAddressContainer" runat="server">
                                    <div class="companyDisplayPadding">
                                        <iac:AddressView runat="server" ID="RegisteredAddress" />
                                    </div>
                                </asp:Panel>
                            </td>
                        </tr>
                        <tr>
                            <td style="border-top: 1px solid #cfcfcf; border-bottom: 1px solid #cfcfcf; padding: 5px 0px 10px 0;">
                                <span title="Edit" class="editButton" style="float: right; padding-right: 0px;">
                                    <asp:LinkButton ID="EditInvoiceAddress" runat="server" Text=""></asp:LinkButton>
                                </span>
                                <asp:Panel runat="server" ID="InvoiceAddressContainer">
                                    <h3 style="color: #FF9148; font-weight: bold">
                                        Invoice Address<sup>1</sup></h3>
                                    <div class="companyDisplayPadding">
                                        <iac:AddressView runat="server" ID="InvoiceAddress" />
                                    </div>
                                </asp:Panel>
                                <div style="float: right; text-align: right;">
                                    <i><sup>1</sup>&nbsp;The Invoice Address is required only if different to the Business
                                        Address.</i>
                                </div>
                            </td>
                        </tr>
                    </table>
                    <div style="float: right; padding-top: 10px;">
                        <uc3:ProviderSetupNextPreviousNavigator ID="psnBottom1" OnOnNext="psn_OnNext" NavigatorShowType="NextOnly"
                            runat="server" />
                    </div>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentRightAbove" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentRightBelow" runat="server">
</asp:Content>

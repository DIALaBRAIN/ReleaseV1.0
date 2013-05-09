<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="PersonalDetails.aspx.cs"
    MasterPageFile="~/StandardMaster.master" Inherits="IntelArcade.WebApp.ProviderSetup.PersonalDetails" %>

<%@ Register Src="~/UserControls/AddressView.ascx" TagName="AddressView" TagPrefix="iac" %>
<%@ Register Src="~/UserControls/ProviderSetupNavigator.ascx" TagName="ProviderSetupNavigator"
    TagPrefix="uc1" %>
<%@ Register Src="~/UserControls/ProviderSetupHeader.ascx" TagName="ProviderSetupHeader"
    TagPrefix="uc2" %>
<%@ Register Src="../UserControls/ProviderSetupNextPreviousNavigator.ascx" TagName="ProviderSetupNextPreviousNavigator"
    TagPrefix="uc3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentBody" runat="server">
    <h2 style="font-size: 1.2em">
        <%=PageTitle %></h2>
    <div class="providerSetup">
        <table>
            <tr style="vertical-align: top">
                <td style="vertical-align: top; width: 15%">
                    <uc1:ProviderSetupNavigator ID="ProviderSetupNavigator1" CurrentStep="ContactDetails"
                        runat="server" />
                </td>
                <td class="verticalRuler">
                    <div style=" padding-right: 5px; padding-bottom: 10px; width: 100%">
                        <uc3:ProviderSetupNextPreviousNavigator ID="psnTop" runat="server" />
                    </div>
                    <table style="width: 100%">
                        <tr>
                            <td style="border-top: 1px solid #cfcfcf; padding: 5px 0px 5px 0px;">
                                <h3 style="color: #FF9148;">
                                    Full Name</h3>
                                <div style="padding: 5px 0 5px 27px;">
                                    <iac:InputContainer runat="server" ID="InputContainer1" Columns="1">
            <Item Text="Title">  <asp:Label ID="PersonTitle" runat="server" ></asp:Label></Item><Item Text="FirstName">  <asp:Label ID="FirstName" runat="server" ></asp:Label></Item><Item Text="Surname">  <asp:Label ID="Surname" runat="server" ></asp:Label></Item>
                                </div>
                                </iac:InputContainer>
                            </td>
                        </tr>
                        <tr>
                            <td style="border-top: 1px solid #cfcfcf; border-bottom: 1px solid #cfcfcf; padding: 5px 0px 10px 0px;">
                                <span title="Edit" class="editButton" style="float:right;margin-right:-3px;">
                                    <asp:LinkButton ID="EditAddress" runat="server" Text=""></asp:LinkButton>
                                </span>
                                <h3 style="color: #FF9148;">
                                    Personal Address</h3>
                                <iac:AddressView runat="server" ID="Address" />
                            </td>
                        </tr>
                    </table>
                    <div style=" padding-top: 10px; width:100%">
                        <uc3:ProviderSetupNextPreviousNavigator ID="psnBottom" runat="server" />
                    </div>
                </td>
            </tr>
        </table>
        <div style="float: right; padding-top: 10px; padding-right: 5px;">
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentRightAbove" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentRightBelow" runat="server">
</asp:Content>

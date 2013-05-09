<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="TaxDetailsDisplay.aspx.cs"
    MasterPageFile="~/StandardMaster.master" Inherits="IntelArcade.WebApp.ProviderSetup.TaxDetailsDisplay" %>

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
                    <uc1:ProviderSetupNavigator ID="ProviderSetupNavigator1" CurrentStep="VatTax" runat="server" />
                </td>
                <td class="verticalRuler">
                   <div style="padding-right: 5px; padding-bottom: 10px; width: 100%">
                        <uc3:ProviderSetupNextPreviousNavigator ID="psnTop" runat="server"  />
                    </div> 
                    <table style="width: 100%">
                        <tr>
                            <td style="border-top: 1px solid #cfcfcf; padding: 5px 0px 5px 0;">
                                <span title="Edit" class="editButton" style="float: right; padding-right: 0px;">
                                    <asp:LinkButton ID="Edit_Link" Text="" runat="server" OnCommand="EditLink_Command"
                                        CommandName="Edit" CommandArgument='<%# Eval("TaxDetailsID") %>'></asp:LinkButton>
                                </span>
                                <h3 style="color: #FF9148;">
                                    Sales Tax / VAT Details</h3>
                                <div style="padding: 5px 0 5px 65px;">
                                    <iac:InputContainer runat="server" ID="InputContainer1" Columns="1">
        <Item Text="<%$ Resources:Labels,Country%>">  <asp:Label ID="Country" runat="server" ></asp:Label></Item>
        <Item Text="Tax" ><asp:Label runat="server" ID="taxName"></asp:Label> </Item>
        <Item Text="<%$ Resources:Labels,TaxNumber%>">  <asp:Label ID="TaxNumber" runat="server" ></asp:Label></Item>
                                    </iac:InputContainer>
                                </div>
                                <table>
                                    <tr>
                                        <td valign="top" style="padding-left:81px" class="labelCell"><span style="font-weight: bold;">Important:</span></td>
                                        <td valign="top" >Please contact a tax professional to determine whether you need to charge sales
                                    tax on your <span style="color: #414141; font-weight: bold">DIALa<span class="highlight2">BRAIN</span></span> sales. <span style="color: #414141; font-weight: bold">DIALa<span class="highlight2">BRAIN</span></span>
                                    can't provide tax advice. Also, we can't guarantee that our sales tax features will
                                    meet all tax requirements.</td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <asp:PlaceHolder ID="phRates" Visible="false" runat="server">
                            <tr>
                                <td style="border-top: 1px solid #cfcfcf; border-bottom: 1px solid #cfcfcf; padding: 5px 0px 10px 0;">
                                    <span title="Edit" class="editButton" style="float: right; margin-right: -3px;">
                                        <asp:LinkButton ID="Edit_RatesLink" OnCommand="EditLink_Command" runat="server" CommandName="EditRates"
                                            Text=""></asp:LinkButton>
                                    </span>
                                    <h3 style="color: #FF9148;">
                                        Rates</h3>
                                    <div style="padding: 5px 0 5px 50px;">
                                        <div>
                                            <asp:Repeater ID="reTaxRates" runat="server">
                                                <ItemTemplate>
                                                    <table>
                                                        <tr>
                                                            <td style="width: 83px; text-align: right; padding-left: 15px; font-weight: bold;">
                                                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Name") %>'></asp:Label>:
                                                            </td>
                                                            <td style="padding-left: 8px;">
                                                                <asp:Label ID="Label2" runat="server" Text='<%# String.Format(" {0:P2}.",Eval("Rate")) %>'></asp:Label>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </ItemTemplate>
                                            </asp:Repeater>
                                        </div>
                                        <div style="margin-left: 111px;">
                                            <asp:HyperLink runat="server" Target="_blank" ID="ExampleInvioceLink">Example Invoice </asp:HyperLink>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                        </asp:PlaceHolder>
                    </table>
                    <div style="padding-top: 10px; width: 100%">
                        <uc3:ProviderSetupNextPreviousNavigator ID="psnBottom" runat="server" CurrentStep="4" />
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

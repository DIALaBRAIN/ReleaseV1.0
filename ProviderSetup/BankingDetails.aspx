<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/StandardMaster.master"
    CodeBehind="BankingDetails.aspx.cs" Inherits="IntelArcade.WebApp.MemberPages.ProviderSetup.BankingDetails" %>

<%@ Register Src="~/UserControls/ProviderSetupNavigator.ascx" TagName="ProviderSetupNavigator"
    TagPrefix="uc1" %>
<%@ Register Src="~/UserControls/ProviderSetupHeader.ascx" TagName="ProviderSetupHeader"
    TagPrefix="uc2" %>
<%@ Register Src="../UserControls/ProviderSetupNextPreviousNavigator.ascx" TagName="ProviderSetupNextPreviousNavigator"
    TagPrefix="uc3" %>
<asp:Content ID="Content4" runat="server" ContentPlaceHolderID="ContentHead">
    <script type="text/javascript">
        function _passwordOnClientClose(oWnd, args) {
            if (args == null) return;
            var arg = args.get_argument();
            if (arg.DoPostback) {
                $("#<%=Edit_Link.ClientID %>").click();
            }
        }

    </script>
</asp:Content>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="ContentBody">
    <h2 style="font-size: 1.2em">
        <%=PageTitle %></h2>
    <div class="providerSetup">
        <table style="width: 100%">
            <tr style="vertical-align: top">
                <td style="vertical-align: top; width: 15%">
                    <uc1:ProviderSetupNavigator ID="ProviderSetupNavigator1" CurrentStep="BankAccount"
                        runat="server" />
                </td>
                <td class="verticalRuler">
                    <div style="padding-right: 5px; padding-bottom: 10px; width: 100%">
                        <uc3:ProviderSetupNextPreviousNavigator ID="psnTop" runat="server" CurrentStep="3" />
                    </div>
                    <table style="width: 100%">
                        <tr>
                            <td style="border-top: 1px solid #cfcfcf; border-bottom: 1px solid #cfcfcf; padding: 5px 0px 10px 0;">

                                <asp:Button ID="Edit_Link" Text="Edit" OnCommand="EditLink_Command" CommandName="Edit"
                                    runat="server" CommandArgument='<%#Eval("AddressID") %>' Style="display: none;">
                                </asp:Button>
                                <span title="Edit" class="editButton" style="float: right; margin-right: -4px;">
                                        <asp:LinkButton ID="LinkButton1" runat="server" OnCommand="EditLink_Command" CommandName="Edit"
                                            Text=""></asp:LinkButton></span>
                                  <%-- <span title="Edit" class="editButton" style="float: right; margin-right: -4px;width:20px;height:20px">
                                 <iac:DialogCommand ID="DialogCommand1" runat="server" Type="Password" OnClientClose="_passwordOnClientClose">
                                    </iac:DialogCommand> 
                                </span>--%>
                                <h3 style="color: #FF9148;">
                                    PayPal Details</h3>
                                <iac:InputContainer runat="server" ID="InputContainer1" Columns="1">
<Item Text="PayPal Email">  <asp:Label ID="lblEmail" runat="server" ></asp:Label></Item>
<Item Text="Seeker PayPal Email" visible="false">  <asp:Label ID="lblSeekerEmail" runat="server" Visible="false" ></asp:Label></Item>
                                </iac:InputContainer>
                                <iac:InputContainer runat="server" ID="SeekerContainer" Columns="1">
<Item Text="PayPal Email">  <asp:Label ID="SeekerEmail" runat="server" ></asp:Label></Item>
                                </iac:InputContainer><br />
                          <p style="color:Red;">Please enter the email address that you have registered with PayPal.</p>
          <p>If you enter anyone else's PayPal email address, payments will be sent to them and this is NOT something that can be reversed by the site.  </p>
         
                            </td>
                        </tr>

                    </table>

                    <div style="padding-top: 10px; width: 100%">
                        <uc3:ProviderSetupNextPreviousNavigator ID="psnBottom" runat="server" CurrentStep="3" />
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

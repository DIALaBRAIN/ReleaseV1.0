<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/StandardMaster.master"
    CodeBehind="BankingDetails.aspx.cs" Inherits="IntelArcade.WebApp.MemberPages.BankingDetails" %>

<asp:Content runat="server" ContentPlaceHolderID="ContentHead">
    <script type="text/javascript">
        function _passwordOnClientClose(oWnd, args) {
            if (args == null) return;
            var arg = args.get_argument();
            if (arg.DoPostback) {
                $("#<%=EditLink.ClientID %>").click();
            }
        }
        function validateform() {



        }
    </script>
</asp:Content>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="ContentBody">
    <h2 style="font-size: 1.2em">
        <%=PageTitle %></h2>
    <div style="float: right; padding-right: 5px;">
        <iac:ReturnContext ID="ReturnContext1" runat="server" /></div>
    <iac:FieldSet runat="server" ID="FieldSet1" Title="Paypal Details" class="formData">
        <div style="border-top: 1px solid #cfcfcf; padding: 5px 0px 5px 0;">
        <p style="color:Red;">Please enter the email address that you have registered with PayPal.</p>
          <p>If you enter anyone else's PayPal email address, payments will be sent to them and this is NOT something that can be reversed by the site.  </p>
            <asp:Button runat="server" ID="EditLink" Text="" OnCommand="EditLink_Command"
                CommandName="Edit" CommandArgument='<%# Eval("AddressID") %>' Style="display: none;"></asp:Button>
            <span title="Edit" class="editButton" style="float: right;margin-top:18px">
                <iac:DialogCommand ID="DialogCommand1" runat="server" Type="Password"
                    OnClientClose="_passwordOnClientClose">
                </iac:DialogCommand>
            </span>
            <br />
            <iac:InputContainer runat="server" ID="InputContainer1" Columns="1">
<Item Text="PayPal Email">  <asp:Label ID="lblEmail" runat="server" ></asp:Label></Item>
<Item Text="Seeker PayPal Email" visible= "false">  <asp:Label ID="lblSeekerEmail" runat="server" ></asp:Label></Item>
            </iac:InputContainer>
            <iac:InputContainer runat="server" ID="SeekerContainer" Columns="1">
<Item Text="PayPal Email">  <asp:Label ID="SeekerEmail" runat="server" ></asp:Label></Item>
            </iac:InputContainer>
            <table class="withdrowmoney">
                <tr>
                    <td class="editButton">
                    </td>
                    &nbsp;<td style="padding-left: 10px">
                        <asp:LinkButton ID="btnMoneyDownload" Visible="false" runat="server" Text=""></asp:LinkButton>
                    </td>
                </tr>
            </table>
            <br />
          
        </div>
    </iac:FieldSet>
    <div style="float: right; padding-top: 10px; padding-right: 5px;">
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentRightAbove" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentRightBelow" runat="server">
</asp:Content>

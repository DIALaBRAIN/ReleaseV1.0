<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AuthStatus.ascx.cs"
    Inherits="IntelArcade.WebApp.UserControls.AuthStatus" %>
    <style>
    .RadMenu_SearchTypeMenu a.rmSelected {
    background-color: #f8f8f8 !important;
    height: 20px;
}
/*   .authStatusMenu:hover {
    background-color: #336699 !important;
    height: 20px;text-decoration:none;
}--%>*/
.authStatusMenu {
    background-color: #F8F8F8 !important;
    }
    </style>
<asp:Panel ID="pLoggedIn" runat="server">
    <table>
        <tr>
            <td>
                <%=CurrentLoginName %>
            </td>
            <td style="padding-left:10px; ">
                <tel:RadMenu ID="RadMenu1" runat="server"  EnableRoundedCorners="false" EnableShadows="false" Skin="" >     
                    <Items>
                        <tel:RadMenuItem runat="server" ImageUrl="/images/ico/Dropdown.png" HoveredImageUrl="~/images/ico/Dropdown-ro.png">
                        <GroupSettings ExpandDirection="Left"/>
                            <Items>
                                <tel:RadMenuItem runat="server" CssClass="authStatusMenu">
                                    <ItemTemplate>
                                        <asp:LoginStatus ID="LoginStatus2" CssClass="loginStatus" Font-Bold="false" ForeColor="Black" Font-Size="11px" Font-Names=".8em Arial, Trebuchet MS, Tahoma, sans-serif" LogoutText="<%$Resources:Buttons,SignOut %>" runat="server"
                                            LogoutAction="Redirect" LogoutPageUrl="~/Default.aspx" />
                                    </ItemTemplate>
                                </tel:RadMenuItem>
                            </Items>
                        </tel:RadMenuItem>
                    </Items>
                </tel:RadMenu>
            </td>
        </tr>
    </table>
</asp:Panel>
<asp:Panel ID="pAnonymous" runat="server">
    <asp:LoginStatus ID="LoginStatus1" LoginText="<%$Resources:Buttons,SignIn %>" LogoutText="<%$Resources:Buttons,SignOut %>"
        runat="server" />
    or <a href="/Register.aspx">Register</a>
</asp:Panel>

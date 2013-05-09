<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ProviderSetup.ascx.cs"
    Inherits="IntelArcade.WebApp.UserControls.ProviderSetup1" %>
<table>
    <tr>
        <td valign="top">
            <table style="padding-right: 10px" width="18%">
                <tr>
                    <td>
                        <h4>
                            Account</h4>
                    </td>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:LinkButton runat="server" ID="CompanyDetails" OnCommand="EditLink_Command" CommandName="Company"
                            Text="Business Details" />
                    </td>
                    <td>
                        <asp:Image ID="imgCompanyDetails" Width="16px" Height="16px" ImageUrl="~/images/blank_tick.png"
                            runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:LinkButton runat="server" ID="ContactDetails" OnCommand="EditLink_Command" CommandName="ContactDetails"
                            Text="Contact Details" />
                    </td>
                    <td>
                        <asp:Image ID="imgContactDetails" Width="16px" Height="16px" ImageUrl="~/images/blank_tick.png"
                            runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:LinkButton runat="server" ID="BankAccount" OnCommand="EditLink_Command" CommandName="BankAccount"
                            Text="Bank Account" />
                    </td>
                    <td>
                        <asp:Image ID="imgBankAccount" Width="16px" Height="16px" ImageUrl="~/images/blank_tick.png"
                            runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:LinkButton runat="server" ID="VatTax" OnCommand="EditLink_Command" CommandName="VatTax"
                            Text="Sales Tax/VAT Details" />
                    </td>
                    <td>
                        <asp:Image ID="imgVatTax" Width="16px" Height="16px" ImageUrl="~/images/blank_tick.png"
                            runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <h4>
                            Profile</h4>
                    </td>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:LinkButton runat="server" ID="ProviderProfile" OnCommand="EditLink_Command"
                            CommandName="ProviderProfile" Text="Personal Profile" />
                    </td>
                    <td>
                        <asp:Image ID="imgProviderProfile" Width="16px" Height="16px" ImageUrl="~/images/blank_tick.png"
                            runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:LinkButton runat="server" ID="WorkHistoryLink" OnCommand="EditLink_Command"
                            CommandName="WorkHistory" Text="Work History" />
                    </td>
                    <td>
                        <asp:Image ID="imgWorkHistory" Width="16px" Height="16px" ImageUrl="~/images/blank_tick.png"
                            runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:LinkButton runat="server" ID="ProfessionalQualifications" OnCommand="EditLink_Command"
                            CommandName="Qualifications" Text="Qualifications" />
                    </td>
                    <td>
                        <asp:Image ID="imgQualifications" Width="16px" Height="16px" ImageUrl="~/images/blank_tick.png"
                            runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:LinkButton runat="server" ID="Services" OnCommand="EditLink_Command" CommandName="Services"
                            Text="Services" />
                    </td>
                    <td>
                        <asp:Image ID="imgServices" Width="16px" Height="16px" ImageUrl="~/images/blank_tick.png"
                            runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:LinkButton runat="server" ID="Languages" OnCommand="EditLink_Command" CommandName="Languages"
                            Text="Languages" />
                    </td>
                    <td>
                        <asp:Image ID="imgLanguages" Width="16px" Height="16px" ImageUrl="~/images/blank_tick.png"
                            runat="server" />
                    </td>
                </tr>
            </table>
        </td>
        <td valign="top">

        <div>

        </div>

        </td>
    </tr>
</table>

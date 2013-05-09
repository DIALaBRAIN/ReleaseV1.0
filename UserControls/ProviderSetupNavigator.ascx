<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ProviderSetupNavigator.ascx.cs"
    Inherits="IntelArcade.WebApp.UserControls.ProviderSetup" %>
<%--       <div class="leftNavigator">
        <table style="padding-right:10px" width="18%">
            <tr><td><h4>Account</h4></td><td>&nbsp;</td> </tr>
            <tr><td><asp:LinkButton runat="server" ID="CompanyDetails"  OnCommand="EditLink_Command" CommandName="Company" Text="Company Details" /></td><td><asp:Image ID="imgCompanyDetails" Width="16px" Height="16px" ImageUrl="~/images/grey_tick.png" runat="server" /> </td> </tr>
            <tr><td><asp:LinkButton runat="server" ID="ContactDetails" OnCommand="EditLink_Command" CommandName="ContactDetails" Text="Contact Details" /></td><td><asp:Image ID="imgContactDetails" Width="16px" Height="16px" ImageUrl="~/images/grey_tick.png" runat="server" /> </td> </tr>
            <tr><td><asp:LinkButton runat="server" ID="BankAccount" OnCommand="EditLink_Command" CommandName="BankAccount" Text="Bank Account" /></td><td><asp:Image ID="imgBankAccount" Width="16px" Height="16px" ImageUrl="~/images/grey_tick.png" runat="server" /> </td> </tr>
            <tr><td><asp:LinkButton runat="server" ID="VatTax" OnCommand="EditLink_Command" CommandName="VatTax" Text="Sales Tax/VAT Details" /></td><td><asp:Image ID="imgVatTax" Width="16px" Height="16px" ImageUrl="~/images/grey_tick.png" runat="server" /> </td> </tr>
            <tr><td><h4>Profile</h4></td><td>&nbsp;</td> </tr>
            <tr><td><asp:LinkButton runat="server" ID="ProviderProfile" OnCommand="EditLink_Command" CommandName="ProviderProfile" Text="Personal Profile" /></td><td><asp:Image ID="imgProviderProfile" Width="16px" Height="16px" ImageUrl="~/images/grey_tick.png" runat="server" /> </td> </tr>
            <tr><td><asp:LinkButton runat="server" ID="WorkHistoryLink" OnCommand="EditLink_Command" CommandName="WorkHistory" Text="Work History" /></td><td><asp:Image ID="imgWorkHistory" Width="16px" Height="16px" ImageUrl="~/images/grey_tick.png" runat="server" /> </td> </tr>
            <tr><td><asp:LinkButton runat="server" ID="ProfessionalQualifications" OnCommand="EditLink_Command" CommandName="Qualifications" Text="Qualifications" /></td><td><asp:Image ID="imgQualifications" Width="16px" Height="16px" ImageUrl="~/images/grey_tick.png" runat="server" /></td> </tr>
            <tr><td><asp:LinkButton runat="server" ID="Services" OnCommand="EditLink_Command" CommandName="Services" Text="Services" /></td><td><asp:Image ID="imgServices" Width="16px" Height="16px" ImageUrl="~/images/grey_tick.png" runat="server" /></td> </tr>
            <tr><td><asp:LinkButton runat="server" ID="Languages" OnCommand="EditLink_Command" CommandName="Languages" Text="Languages" /></td><td><asp:Image ID="imgLanguages" Width="16px" Height="16px" ImageUrl="~/images/grey_tick.png" runat="server" /></td> </tr>
        </table>
        </div>--%>
<div class="ProviderSetupLeftNavigator">
    <table style="width: 146px">
        <tr>
            <td style="padding-left:10px;">
                <h4>
                    Account</h4>
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                <asp:PlaceHolder runat="server">
                <table>
                    <tr> <td class="tick"><asp:Image ID="imgCompanyDetails" Width="16px" Height="16px" ImageUrl="~/images/blank_tick.png" runat="server" /></td><td><asp:Panel ID="pCompanyDetails" runat="server">  <asp:LinkButton runat="server" ID="CompanyDetails" OnCommand="EditLink_Command" CommandName="Company" Text="Business" /></asp:Panel></td></tr>
                </table>
                </asp:PlaceHolder>
            </td>
        </tr>
        <tr>
            <td>
                <asp:PlaceHolder runat="server">
                <table>
                    <tr><td class="tick"><asp:Image ID="imgContactDetails" Width="16px" Height="16px" ImageUrl="~/images/blank_tick.png" runat="server" /> </td><td><asp:Panel ID="pContactDetails" runat="server"> <asp:LinkButton runat="server" ID="ContactDetails" OnCommand="EditLink_Command" CommandName="ContactDetails" Text="Contact" /></asp:Panel></td></tr>
                    
                </table>
                </asp:PlaceHolder>
            </td>
        </tr>
        <tr>
            <td>
                <asp:PlaceHolder ID="PlaceHolder1" runat="server">
                <table>
                    <tr><td class="tick"><asp:Image ID="imgBankAccount" Width="16px" Height="16px" ImageUrl="~/images/blank_tick.png" runat="server" /></td><td><asp:Panel ID="pBankAccount" runat="server"> <asp:LinkButton runat="server" ID="BankAccount" OnCommand="EditLink_Command" CommandName="BankAccount" Text="Bank Account" /></asp:Panel></td></tr>
                </table>
                            
                 </asp:PlaceHolder>
            </td>
        </tr>
        <tr>
            <td>
                <asp:PlaceHolder ID="PlaceHolder2" runat="server">
                <table>
                    <tr><td class="tick"><asp:Image ID="imgVatTax" Width="16px" Height="16px" ImageUrl="~/images/blank_tick.png" runat="server" /></td><td><asp:Panel runat="server" ID="pVatTax"> <asp:LinkButton runat="server" ID="VatTax" OnCommand="EditLink_Command" CommandName="VatTax" Text="Sales Tax" /></asp:Panel></td></tr>
                </table> 
                </asp:PlaceHolder>
            </td>
        </tr>
        <tr><td style="padding-left:10px;"><h4>Profile</h4></td><td>&nbsp;</td> </tr>
        <tr>
            <td>
                <asp:PlaceHolder ID="PlaceHolder3" runat="server">
                <table>
                    <tr><td class="tick"><asp:Image ID="imgProviderProfile" Width="16px" Height="16px" ImageUrl="~/images/blank_tick.png" runat="server" /></td><td><asp:Panel ID="pProviderProfile" runat="server"><asp:LinkButton runat="server" ID="ProviderProfile" OnCommand="EditLink_Command" CommandName="ProviderProfile" Text="Personal" /></asp:Panel></td></tr>
                </table>
                </asp:PlaceHolder>
            </td>
        </tr>
        <tr>
            <td>
                <asp:PlaceHolder ID="PlaceHolder4" runat="server">
                <table><tr><td class="tick"><asp:Image ID="imgWorkHistory" Width="16px" Height="16px" ImageUrl="~/images/blank_tick.png" runat="server" /></td><td><asp:Panel ID="pWorkHistory" runat="server"><asp:LinkButton runat="server" ID="WorkHistoryLink" OnCommand="EditLink_Command" CommandName="WorkHistory" Text="Work History" /></asp:Panel></td></tr></table>
                </asp:PlaceHolder>
            </td>
        </tr>
        <tr>
            <td>
                <asp:PlaceHolder ID="PlaceHolder5" runat="server">
                    <table><tr><td class="tick"><asp:Image ID="imgQualifications" Width="16px" Height="16px" ImageUrl="~/images/blank_tick.png" runat="server" /></td><td><asp:Panel ID="pProfessionalQualifications" runat="server"><asp:LinkButton runat="server" ID="ProfessionalQualifications" OnCommand="EditLink_Command" CommandName="Qualifications" Text="Qualifications" /></asp:Panel></td></tr></table>
                </asp:PlaceHolder>
            </td>
        </tr>
        <tr>
            <td>
                <asp:PlaceHolder ID="PlaceHolder6" runat="server">
                    <table><tr><td class="tick"><asp:Image ID="imgServices" Width="16px" Height="16px" ImageUrl="~/images/blank_tick.png" runat="server" /></td><td><asp:Panel runat="server" ID="pServices"><asp:LinkButton runat="server" ID="Services" OnCommand="EditLink_Command" CommandName="Services" Text="Services" /></asp:Panel> </td></tr></table>
                </asp:PlaceHolder>
            </td>
        </tr>
<%--        <tr>
            <td>
                <asp:PlaceHolder ID="PlaceHolder7" runat="server">
                    <table>
                        <tr><td class="tick"><asp:Image ID="imgLanguages" Width="16px" Height="16px" ImageUrl="~/images/blank_tick.png" runat="server" /></td><td><asp:Panel ID="pLanguages" runat="server"><asp:LinkButton runat="server" ID="Languages" OnCommand="EditLink_Command" CommandName="Languages" Text="Languages" /></asp:Panel></td></tr>
                    </table>
                </asp:PlaceHolder>
            </td>
        </tr>--%>
         <tr>
            <td>
                <asp:PlaceHolder ID="PlaceHolder8" runat="server">
                    <table>
                        <tr><td class="tick"><asp:Image ID="imgNetPresence" Width="16px" Height="16px" ImageUrl="~/images/blank_tick.png" runat="server" /></td><td><asp:Panel ID="pNetPresence" runat="server"><asp:LinkButton runat="server" ID="NetPresence" OnCommand="EditLink_Command" CommandName="NetPresence" Text="Web Presence" /></asp:Panel></td></tr>
                    </table>
                </asp:PlaceHolder>
            </td>
        </tr>
            <tr>
            <td>
                <asp:PlaceHolder ID="PlaceHolder7" runat="server">
                    <table>
                        <tr><td class="tick"><asp:Image ID="ImagePreferences" Width="16px" Height="16px" ImageUrl="~/images/blank_tick.png" runat="server" /></td><td><asp:Panel ID="PanelPreferences" runat="server"><asp:LinkButton runat="server" ID="LinkPreferences" OnCommand="EditLink_Command" CommandName="Preferences" Text="Preferences" /></asp:Panel></td></tr>
                    </table>
                </asp:PlaceHolder>
            </td>
        </tr>
    </table>
</div>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ResetPassword.aspx.cs"
    MasterPageFile="~/SimpleMaster.Master" Inherits="IntelArcade.WebApp.MemberPages.ResetPassword" %>

<%@ Register Src="InfoBoxes/WhyRegister.ascx" TagName="WhyRegister" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
    <div class="contentBody">
        <h2 style="font-size: 1.2em">
            <%=PageTitle %></h2>
        <div runat="server" id="InputPanel">
            <iac:FieldSet runat="server" class="formData" Title="<%$ Resources:FieldsetTitles,PasswordReset %>">
                <table>
                    <tr>
                        <td class="labelCell">
                            <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName"><%=global::Resources.Labels.EmailAddress %>:</asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="UserName" runat="server" Width="200px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName"
                                CssClass="failureNotification" Text="Required" ToolTip="Required" ValidationGroup="ResetPasswordValidationGroup" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td style="padding-top: 10px;">
                            <table class="resetButton"><tr><td><asp:LinkButton ID="SubmitLinkButton" CssClass="form_submit" runat="server" CommandName="Submit"
                                 ValidationGroup="ResetPasswordValidationGroup"
                                OnClick="SubmitButton_Click" /></td></tr></table>
                        </td>
                    </tr>
                </table>
            </iac:FieldSet>
        </div>
        <div runat="server" id="StatusPanel" visible="false" style=" padding-left:16px;">
            Please check your email. You have been sent an email with a link to reset your password.
        </div>
    </div>
    <div class="contentRight">
        <uc1:WhyRegister ID="WhyRegister1" runat="server" />
    </div>
</asp:Content>

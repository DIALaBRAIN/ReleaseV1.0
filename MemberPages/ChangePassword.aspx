<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" MasterPageFile="~/StandardMaster.master" Inherits="IntelArcade.WebApp.MemberPages.ChangePassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
    <h2 style="font-size:1.2em">Change Password</h2>
    <div runat="server" id="InputPanel">
        <iac:FieldSet runat="server" class="formData">
        <div style=" padding: 5px 0px 5px 0;">
            <iac:InputContainer runat="server">
                <Item Text="Current Password">
                    <tel:RadTextBox ID="Password" runat="server" TextMode="Password" Width="200px"></tel:RadTextBox>
                    <span class="validators">
                    <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ValidationGroup="ChangePassword"
                            CssClass="error" Text="<%$ Resources:Validation,RequiredField %>" ToolTip="<%$ Resources:Validation,RequiredField %>" Display="Dynamic" />
                     </span>
                </Item>
                <Item Text="New Password">
                  
                  <tel:RadTextBox ID="NewPassword" runat="server" TextMode="Password" Width="196px" autocomplete="off" EnableSingleInputRendering="false">
             <PasswordStrengthSettings ShowIndicator="true"
                    IndicatorElementBaseStyle="Base" 
                    IndicatorElementID="CustomIndicator"></PasswordStrengthSettings>
                    
                    </tel:RadTextBox>
                    <span class="validators">
                    <asp:RequiredFieldValidator ID="NewPasswordRequired" runat="server" ControlToValidate="NewPassword" ValidationGroup="ChangePassword" 
                            CssClass="error" Text="<%$ Resources:Validation,RequiredField %>" ToolTip="<%$ Resources:Validation,RequiredField %>" Display="Dynamic" />
                     <asp:RegularExpressionValidator style="position:relative;margin-left:0px;" ID="valPassword" runat="server"  ControlToValidate="NewPassword" ValidationGroup="ChangePassword" ErrorMessage="Minimum password length is 8" ValidationExpression=".{8}.*" />
                   
                    
                    </span>
                </Item>
                <Item Text="Confirm Password">
                    <tel:RadTextBox ID="ConfirmPassword" runat="server" TextMode="Password" Width="200px"></tel:RadTextBox>
                    <span class="validators">
                    <asp:RequiredFieldValidator ID="ConfirmPasswordRequired" runat="server" ControlToValidate="ConfirmPassword" ValidationGroup="ChangePassword" 
                            CssClass="error" Text="<%$ Resources:Validation,RequiredField %>" ToolTip="<%$ Resources:Validation,RequiredField %>"  Display="Dynamic" />
                    <asp:CompareValidator runat="server" ID="ComparePasswordValidator" ControlToValidate="ConfirmPassword" ValidationGroup="ChangePassword" 
                    ControlToCompare="NewPassword" Type="String" Display="Dynamic" Text="<%$ Resources:Validation,PasswordsNotMatch %>" ToolTip="<%$ Resources:Validation,PasswordsNotMatch %>" />
                
                    </span>
                    <br />
            <span id="CustomIndicator" >&nbsp;</span> <span id="PasswordRepeatedIndicator" class="Base L0">
                &nbsp;</span>
                </Item>
            </iac:InputContainer></div>
        </iac:FieldSet>
        <div style="float:left;padding-left:147px;padding-top:0">
        <%--<asp:ImageButton runat="server" ID="SubmitButton" ValidationGroup="ChangePassword" ImageUrl="~/images/btn_change_password.png"/>--%><table >
        <tr><td class="updateButton"><asp:LinkButton ID="SubmitButton" runat="server" Text="" ValidationGroup="ChangePassword"></asp:LinkButton></td>
        <td class="cancelButton" style="padding-left:10px;"><asp:LinkButton ID="CancelButton" runat="server" Text="">
        </asp:LinkButton></td></tr>
        </table><%--<asp:ImageButton runat="server" ID="CancelButton" CausesValidation="false" ImageUrl="~/images/btn_cancel.png" />--%>
        </div>    
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentRightAbove" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentRightBelow" runat="server">
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/InteractiveBase.master" AutoEventWireup="true"
    CodeBehind="NewPassword.aspx.cs" Inherits="IntelArcade.WebApp.NewPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
    <div class="contentBody">
        <asp:HiddenField ID="hfUserName" runat="server" />
        <iac:FieldSet ID="FieldSet1" runat="server" class="formData" Title="Change Password">
            <iac:InputContainer ID="InputContainer1" runat="server">

                <Item Text="New Password">
                    <asp:TextBox ID="tbNewPassword" runat="server" TextMode="Password" Width="200px"></asp:TextBox>
                    <span class="validators">
                    <asp:RequiredFieldValidator ID="NewPasswordRequired" runat="server" ControlToValidate="tbNewPassword" ValidationGroup="ChangePassword" 
                            CssClass="error" Text="<%$ Resources:Validation,RequiredField %>" ToolTip="<%$ Resources:Validation,RequiredField %>" Display="Dynamic" />
                    </span>
                </Item>
                <Item Text="Confirm Password">
                    <asp:TextBox ID="ConfirmPassword" runat="server" TextMode="Password" Width="200px"></asp:TextBox>
                    <span class="validators">
                    <asp:RequiredFieldValidator ID="ConfirmPasswordRequired" runat="server" ControlToValidate="ConfirmPassword" ValidationGroup="ChangePassword" 
                            CssClass="error" Text="<%$ Resources:Validation,RequiredField %>" ToolTip="<%$ Resources:Validation,RequiredField %>"  Display="Dynamic" />
                    <asp:CompareValidator runat="server" ID="ComparePasswordValidator" ControlToValidate="ConfirmPassword" ValidationGroup="ChangePassword" 
                    ControlToCompare="tbNewPassword" Type="String" Display="Dynamic" Text="<%$ Resources:Validation,PasswordsNotMatch %>" ToolTip="<%$ Resources:Validation,PasswordsNotMatch %>" />
                
                    </span>
                </Item>
            </iac:InputContainer>
        </iac:FieldSet>
        <div style="float: left; padding-left: 150px; padding-top: 0">
            <%--<asp:ImageButton runat="server" ID="SubmitButton" ValidationGroup="ChangePassword"
                ImageUrl="~/images/btn_change_password.png" OnClick="SubmitButton_Click" />--%>
            <span class="updateButton"><asp:LinkButton runat="server" ID="SubmitButton" ValidationGroup="ChangePassword"
                 Text="" OnClick="SubmitButton_Click" /></span>
        </div>
    </div>
</asp:Content>

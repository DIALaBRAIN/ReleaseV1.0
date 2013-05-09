<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="PersonalDetailsEdit.aspx.cs"
    MasterPageFile="~/StandardMaster.master" Inherits="IntelArcade.WebApp.ProviderSetup.PersonalDetailsEdit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentBody" runat="server">
    <h2 style="font-size: 1.2em">
        <%=PageTitle %></h2>
    <iac:FieldSet runat="server" ID="FieldSet1" Title="Full Name" class="formData">
        <iac:InputContainer runat="server" ID="InputContainer1" Columns="1">
            <Item Text="Title">  <asp:DropDownList ID="PersonTitle" runat="server" >
                <asp:ListItem Text="Miss" />
                <asp:ListItem Text="Mr" />
                <asp:ListItem Text="Mrs" />
                <asp:ListItem Text="Ms" />
                <asp:ListItem Text="Dr" />
                <asp:ListItem Text="Prof" />
                <asp:ListItem Text="Sir" />
                <asp:ListItem Text="Dame" />
                </asp:DropDownList>
            </Item>
            <Item Text="FirstName"><asp:TextBox ID="FirstName" runat="server" />&nbsp;&nbsp;<iac:IARequiredFieldValidator runat="server" ID="rfvalFirstName" ControlToValidate="FirstName" RenderAsBlockElement="false" /></Item>
            <Item Text="Surname"><asp:TextBox ID="Surname" runat="server" />&nbsp;&nbsp;<iac:IARequiredFieldValidator runat="server" ID="rfvalLastName" ControlToValidate="Surname" RenderAsBlockElement="false" /></Item>
        </iac:InputContainer>
    </iac:FieldSet>
    <div style="float: right; padding: 10px;">
        <asp:ImageButton runat="server" ID="SubmitButton" ImageUrl="~/images/btn_create.png" />&nbsp;<asp:ImageButton
            runat="server" ID="CancelButton" CausesValidation="false" ImageUrl="~/images/btn_cancel.png" /></div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentRightAbove" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentRightBelow" runat="server">
</asp:Content>

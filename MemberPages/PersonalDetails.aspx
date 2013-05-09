<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="PersonalDetails.aspx.cs"
    MasterPageFile="~/StandardMaster.master" Inherits="IntelArcade.WebApp.PersonalDetails" %>

<%@ Register Src="../UserControls/AddressView.ascx" TagName="AddressView" TagPrefix="iac" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentBody" runat="server">
    <h2 style="font-size: 1.2em">
        <%=PageTitle %></h2>
    <div style="float: right; padding-right: 5px;">
        <iac:ReturnContext ID="ReturnContext1" runat="server" /></div>
    <iac:FieldSet runat="server" ID="FieldSet1" Title="Full Name" class="formData">
        <div style="border-top: 1px solid #cfcfcf; padding: 15px 0px 5px 0; float: left; padding-left: 28px;width:682px">
            <iac:InputContainer runat="server" ID="InputContainer1" Columns="1">
            <Item Text="Title">  <asp:Label ID="PersonTitle" runat="server" ></asp:Label></Item><Item Text="FirstName">  <asp:Label ID="FirstName" runat="server" ></asp:Label></Item><Item Text="Surname">  <asp:Label ID="Surname" runat="server" ></asp:Label></Item>
            </iac:InputContainer>
            <%--<asp:LinkButton runat="server" ID="EditName" Text="Edit Name" CommandArgument='<%# Eval("PersonalDetailsID") %>'  />--%>
        </div>
    </iac:FieldSet>
    <iac:FieldSet runat="server" ID="FieldSet2" Title="Address" class="formData">
        <div style="border-top: 1px solid #cfcfcf; padding: 15px 0px 5px 0;">
            <span title="Edit" class="editButton" style="float: right;margin-top:-11px;margin-right:0px">
                <asp:LinkButton runat="server" ID="EditAddress" Text=""><%--<asp:Image ImageUrl="~/Images/btn_edit_address.png" runat="server" ID="Edit_bank_details_image" />--%></asp:LinkButton>
            </span>
            <iac:AddressView runat="server" ID="Address" />
        </div>
    </iac:FieldSet>
    <div style="float: right; padding-top: 10px; padding-right: 5px;">
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentRightAbove" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentRightBelow" runat="server">
</asp:Content>

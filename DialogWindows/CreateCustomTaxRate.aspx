<%@ Page Title="" Language="C#" MasterPageFile="~/DialogMaster.Master" AutoEventWireup="true"
    CodeBehind="CreateCustomTaxRate.aspx.cs" Inherits="IntelArcade.WebApp.DialogWindows.CreateCustomTaxRate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentDialogHeader" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
    <div style="padding: 10px;">
        <label id="lblRateName" runat="server">
            Custom Rate Name:</label>&nbsp;<asp:TextBox ID="txtNewRateName" runat="server" ValidationGroup="NewRateName" />&nbsp;<asp:RequiredFieldValidator
                ID="RequiredFieldValidator1" runat="server" ValidationGroup="NewRateName" Enabled="true"
                ControlToValidate="txtNewRateName" ErrorMessage="Required" Display="Dynamic" />
    </div>
    <div style="padding: 10px;">
        Click <b>Create</b> to create the rate type, or <b>Cancel</b> to exit without taking
        any action.</div>
              <div style="padding: 10px;">
                                <div style="text-align: right; width: 100%;">
                                    <span style="padding-right: 5px;">
                                      <asp:LinkButton OnClick="CloseModal();"
                                                Style="cursor: pointer">
                                                <asp:Image ID="cancel_button" runat="server" ImageUrl="~/images/btn_cancel.png" /></asp:LinkButton>  
                                                </span>
                                                <asp:ImageButton ID="BtnAddNewRate" runat="server" ValidationGroup="NewRateName"
                                            ImageUrl="~/images/btn_create.png" />
                                                </div>
                            </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentDialogPreFooter" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentDialogFooter" runat="server">
</asp:Content>

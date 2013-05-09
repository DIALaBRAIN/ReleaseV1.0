<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true"
    CodeBehind="DownloadPayPalFile.aspx.cs" Inherits="IntelArcade.WebApp.Admin.PayPal.DownloadPayPalFile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
    <iac:FieldSet runat="server" ID="FieldSet1" Title="Download PayPal File"
        class="formData">
        <div style="border-top: 1px solid #cfcfcf; padding: 5px 0px 5px 0;">
            <div style="margin-top:20px;">
                <asp:LinkButton runat="server" ID="btnDownloadPayPalFile" Text="Download PayPal File"></asp:LinkButton>
            </div>
        </div>
    </iac:FieldSet>
</asp:Content>

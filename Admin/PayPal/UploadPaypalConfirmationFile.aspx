<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="UploadPaypalConfirmationFile.aspx.cs" Inherits="IntelArcade.WebApp.Admin.PayPal.UploadPaypalConfirmationFile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">

<iac:FieldSet runat="server" ID="FieldSet1" Title="Upload PayPal Confirmation File" class="formData">
<div style="border-top: 1px solid #cfcfcf; padding: 5px 0px 5px 0;">
<div style="margin-top:20px;">
    <tel:RadUpload runat="server" ID="Uploder" AllowedFileExtensions=".csv" ControlObjectsVisibility="None"  ></tel:RadUpload>
    <tel:RadProgressManager id="Radprogressmanager1" runat="server" />
            
     <tel:RadProgressArea id="RadProgressArea1" runat="server" />
</div>
<div class="submitArea">
    <asp:LinkButton runat="server" ID="btnUpload" Text="Upload File"></asp:LinkButton>
</div>
</div>
</iac:FieldSet>
</asp:Content>

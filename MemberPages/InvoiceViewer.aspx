<%@ Page Title="" Language="C#" MasterPageFile="~/SimpleMaster.Master" AutoEventWireup="true" CodeBehind="InvoiceViewer.aspx.cs" Inherits="IntelArcade.WebApp.MemberPages.InvoiceViewer" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
        <iac:InvoiceRenderer runat="server" ID="Renderer" View="Detailed" ShowHeader="true" Width="100%" Font-Size="11px"/>
</asp:Content>

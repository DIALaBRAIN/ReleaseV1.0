<%@ Page Title="" Language="C#" MasterPageFile="~/StandardMaster.master" AutoEventWireup="true"
    CodeBehind="NetPresence.aspx.cs" Inherits="IntelArcade.WebApp.NetPresence" %>
    <%@ Register src="../UserControls/WebPresenceEdit.ascx" tagname="WebPresence" tagprefix="iac" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentBody" runat="server">
    <iac:WebPresence runat="server" ID="WebPresenceEdit" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentRightAbove" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentRightBelow" runat="server">
</asp:Content>

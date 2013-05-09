<%@ Page Title="" Language="C#" MasterPageFile="~/StandardMaster.master" AutoEventWireup="true" CodeBehind="NotifyMe.aspx.cs" Inherits="IntelArcade.WebApp.MemberPages.NotifyMe" %>

<%@ Register Src="~/UserControls/NotifyBoxSubCategoryList.ascx" TagName="NotifyBox" TagPrefix="iac" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
<h2>Notify Me</h2>
<div>
    <iac:NotifyBox runat="server" />
</div>
</asp:Content>


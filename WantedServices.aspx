<%@ Page Title="" Language="C#" MasterPageFile="~/StandardMaster.master" AutoEventWireup="true" CodeBehind="WantedServices.aspx.cs" Inherits="IntelArcade.WebApp.WantedServices" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
    <h2>Wanted</h2>

        <div style="padding: 0px 10px 10px 10px;">
        <label runat="server" id="lblCategoryName">
        </label>
        <br />
        <div runat="server" id="lblNote" style="font-size: 0.875em; font-style: normal; font-variant: normal;
            font-weight: normal; line-height: 1.6em">
        </div>
        <div>
            <asp:LinkButton ID="CreateService" runat="server" OnCommand="CreateService_Command">Create a new service</asp:LinkButton>
            <asp:LinkButton ID="LinkService" runat="server" OnCommand="LinkService_Command">Link Service</asp:LinkButton>
        </div>
    </div>
</asp:Content>

<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="Messages.aspx.cs" MasterPageFile="~/StandardMaster.master"
    Inherits="IntelArcade.WebApp.Messages" %>

<%@ Register Src="../UserControls/MessageStubList.ascx" TagName="MessageList" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentBody" runat="server">
    <h2 style="font-size: 1.2em">
        <%=PageTitle %></h2>
    <tel:RadTabStrip runat="server" ID="TabStrip1" Width="100%" Align="Left" ShowBaseLine="true" EnableEmbeddedSkins="false" Skin="DB">
        <Tabs>
            <tel:RadTab Value="U" Text="<%$Resources:Labels,UnreadMessageFolder %>" />
            <tel:RadTab Value="I" Text="<%$Resources:Labels,InboxMessageFolder%>" />
            <tel:RadTab Value="S" Text="<%$Resources:Labels,SentMessageFolder%>" />
        </Tabs>
    </tel:RadTabStrip>
    <div style="height: 1px; -moz-box-shadow: 0px 2px 2px #336699; -webkit-box-shadow: 0px 2px 2px #336699;
                box-shadow: 0px 2px 2px #336699; margin-bottom: 0px; border-bottom: 1px solid #336699;
                border-top: 1px solid #FFFFFF; background-color: #336699">
            </div>
    <uc1:MessageList runat="server" ID="MessageList" />
    <iac:PageableItemProxy runat="server" ID="PageingProxy" />
    <iac:DataPager ID="Pager" runat="server" PagedControlID="PageingProxy">
    </iac:DataPager>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentRightAbove" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentRightBelow" runat="server">
</asp:Content>

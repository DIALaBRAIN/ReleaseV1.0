<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="FavoritesDisplay.aspx.cs"
    MasterPageFile="~/StandardMaster.master" Inherits="IntelArcade.WebApp.FavoritesDisplay" %>

<%@ Register Src="../UserControls/FavoriteList.ascx" TagName="FavoriteList" TagPrefix="uc1" %>
<%@ Register Src="~/UserControls/RequestedServiceList.ascx" TagName="RequestedServiceList"
    TagPrefix="iac" %>
<%@ Register Src="~/UserControls/NotifyMeList.ascx" TagName="NotifyMeList" TagPrefix="iac" %>
<%@ Register Src="~/UserControls/GivenResponses.ascx" TagName="GivenResponses" TagPrefix="iac" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentBody" runat="server">
    <h2 style="font-size: 1.2em">
        Lists</h2>
    <asp:UpdatePanel runat="server" UpdateMode="Conditional" ChildrenAsTriggers="true">
        <ContentTemplate>
            <tel:RadTabStrip runat="server" ID="TabStrip" AutoPostBack="true" Width="100%" Align="Left"
                ShowBaseLine="true" EnableEmbeddedSkins="false" Skin="DB">
                <Tabs>
                    <tel:RadTab Value="P" Text="<%$Resources:Labels,PinedProviders%>" />
                    <tel:RadTab Value="S" Text="<%$Resources:Labels,PinedServices%>" />
                    <tel:RadTab Value="RS" Text="<%$Resources:Labels,RequestedServices%>">
                    </tel:RadTab>
                    <tel:RadTab Value="N" Text="<%$Resources:Labels,NotifyMe%>"></tel:RadTab>
                    <tel:RadTab Value="G" Text="<%$Resources:Labels,GivenResponses%>"></tel:RadTab>
                </Tabs>
            </tel:RadTabStrip>
            <div style="height: 1px; -moz-box-shadow: 0px 2px 2px #336699; -webkit-box-shadow: 0px 2px 2px #336699;
                box-shadow: 0px 2px 2px #336699; margin-bottom: 0px; border-bottom: 1px solid #336699;
                border-top: 1px solid #FFFFFF; background-color: #336699">
            </div>
            <div runat="server" id="Pins">
                <div class="tabPage" style="overflow: hidden;">
                    <uc1:FavoriteList ID="FavoriteList1" runat="server" />
                </div>
                <iac:PageableItemProxy runat="server" ID="PageingProxy" />
                <tel:RadDataPager ID="Pager" runat="server" PagedControlID="PageingProxy">
                    <Fields>
                        <tel:RadDataPagerButtonField FieldType="FirstPrev" FirstButtonText="<%$Resources:Buttons,First%>"
                            PrevButtonText="<%$Resources:Buttons,Previous%>" />
                        <tel:RadDataPagerButtonField FieldType="Numeric" PageButtonCount="10" />
                        <tel:RadDataPagerButtonField FieldType="NextLast" NextButtonText="<%$Resources:Buttons,Next%>"
                            LastButtonText="<%$Resources:Buttons,Last%>" />
                    </Fields>
                </tel:RadDataPager>
            </div>
            <div runat="server" id="RequestedServices"  class="tabPage" visible="false" >
                <iac:RequestedServiceList runat="server" ID="RequestedServiceList1" />
            </div>
            <iac:NotifyMeList runat="server" ID="NotifyMeList1" CssClass="tabPage" Visible="false" />
            <iac:GivenResponses runat="server" ID="GivenResponses" CssClass="tabPage" Visible="false" />
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentRightAbove" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentRightBelow" runat="server">
</asp:Content>

<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CompanyProfile.ascx.cs"
    Inherits="IntelArcade.WebApp.UserControls.CompanyProfile" %>
<%@ Register Src="~/UserControls/ProviderProfileList.ascx" TagName="ProviderList"
    TagPrefix="iac" %>
<%@ Register Src="~/UserControls/FeedbackList.ascx" TagName="FeedbackList" TagPrefix="iac" %>
<%@ Register Src="FeedbackSummaryList.ascx" TagName="FeedbackSummaryList" TagPrefix="iac" %>
<%@ Register Src="~/UserControls/ResourceList.ascx" TagName="ResourceList" TagPrefix="iac" %>
<%@ Register Src="~/UserControls/ServiceProfileList.ascx" TagName="ServiceProfileList"
    TagPrefix="iac" %>
<div class="<%=CssClass%>">
    <table align="center">
        <tr>
            <td>
                <div style="padding-left: 5px;">
                    <h1>
                        <asp:Label ID="lblCompanyName" runat="server" /></h1>
                </div>
                <div style="clear: both; padding-top: 5px;">
                    <iac:RatingSummary ID="CompanyRating" DisplayBlock="false" ShowTotal="true" runat="server" />
                </div>
            </td>
        </tr>
    </table>
    <div style="clear: both;">
        <p>
            <asp:Label ID="lblDescription" runat="server"></asp:Label></p>
        <br />
    </div>
</div>
<%--<iac:ResultFooter ID="ResultFooter1" runat="server" />
<br />--%>
<div style="display:none;">
        <video id='mediaplayer'">
        </video>
    <tel:RadTabStrip ID="TabStrip" runat="server" MultiPageID="RadMultiPage1" SelectedIndex="0"
        ShowBaseLine="true">
        <Tabs>
            <tel:RadTab Value="S" Text="<%$Resources:Labels,Services%>" />
            <tel:RadTab Value="P" Text="<%$Resources:Labels,Providers%>" />
            <tel:RadTab Value="R" Text="<%$Resources:Labels,Resources%>" Selected="True" Visible="false" />
            <tel:RadTab Value="F" Text="<%$Resources:Labels,Feedback%>" />
            <tel:RadTab Value="FS" Text="<%$Resources:Labels,FeedbackSummary%>" />
        </Tabs>
    </tel:RadTabStrip>
    <div class="<%=CssClass%>">
        <tel:RadMultiPage ID="RadMultiPage1" runat="server" SelectedIndex="0">
            <tel:RadPageView ID="RadPageView1" Selected="true" runat="server">
                <iac:ServiceProfileList ID="ServiceList" runat="server" />
            </tel:RadPageView>
            <tel:RadPageView ID="RadPageView2" runat="server">
                <iac:ProviderList ID="ProviderList" runat="server" />
            </tel:RadPageView>
            <tel:RadPageView ID="RadPageView3" runat="server" Visible="false">
                <iac:ResourceList ID="ResourceList" runat="server" />
            </tel:RadPageView>
            <tel:RadPageView ID="RadPageView4" runat="server">
                <iac:FeedbackList ID="FeedbackList" runat="server" RenderProviderDetails="true" />
            </tel:RadPageView>
            <tel:RadPageView ID="RadPageView5" runat="server">
                <iac:FeedbackSummaryList runat="server" ID="FeedbackSummary" />
            </tel:RadPageView>
        </tel:RadMultiPage>
    </div>
    <%--<iac:PageableItemProxy runat="server" ID="PageingProxy" EnableViewState="false" />
<iac:DataPager ID="Pager" runat="server" PagedControlID="PageingProxy" />--%>
</div>


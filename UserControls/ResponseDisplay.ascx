<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ResponseDisplay.ascx.cs"
    Inherits="IntelArcade.WebApp.UserControls.ResponseDisplay" %>
<%@ Register Src="~/UserControls/FeedbackList.ascx" TagName="FeedbackList" TagPrefix="iac" %>
<%@ Register Src="EmbeddedVideoPlayer.ascx" TagName="VideoPlayer" TagPrefix="iac" %>
<div>
    <table width="100%">
        <tr>
            <td>
                <asp:Image runat="server" ID="ProfileImage" />
            </td>
            <td style="vertical-align: top; padding-left: 5px;">
                <h1>
                    <asp:Label ID="lblProviderName" runat="server"></asp:Label></h1>
                <div style="padding-top: 3px;">
                    <asp:Label runat="server" ID="lblServiceName"></asp:Label></div>
                <div>
                    <label>
                        Fee:</label>&nbsp;<span runat="server" id="Fee"></span> <span style=""></span>
                </div>
                <div style="padding-top:10px;">
                    <iac:ProfileFlagRenderer runat="server" ID="ServiceFlags" OnClientCommand="_iac_OnProfileFlagCommmand"
                        OnClientDialogClosed="_iac_SbjSchOnClientClose" Mode="Icons" ServiceProfileFlags="None"
                        EnableServiceProfileMode="true" />
                </div>
            </td>
            <td>
                <div style="float: right;">
                    <table>
                        <tr>
                            <td>
                                <iac:ProfileFlagRenderer ID="ServiceReqvestFlags" SuppressUserFlags="true" UserFlags="None"
                                    OnClientCommand="_iac_OnProfileFlagCommmand" runat="server" Position="Top" Mode="Text"
                                    ProfileTabType="Service" Direction="Vertical" />
                            </td>
                        </tr>
                    </table>
                </div>
            </td>
        </tr>
    </table>
    <div>
        <div runat="server" id="MessageContainer" style="padding-bottom: 10px;">
            <label>
                Message</label>
            <asp:Label runat="server" ID="Message"></asp:Label>
        </div>
        <div runat="server" id="SummaryContainer" style="padding-bottom: 10px;">
            <label>
                Summary:</label>
            <asp:Label runat="server" ID="Summary"></asp:Label>
        </div>
        <div runat="server" id="DetailContainer" style="padding-bottom: 10px;">
            <label>
                Detail:</label>
            <asp:Label runat="server" ID="Description"></asp:Label>
        </div>
    </div>
</div>
<iac:ResultFooter ID="ResultFooter1" runat="server" />
<br />
<tel:RadTabStrip ID="TabStrip" runat="server" MultiPageID="RadMultiPage1" SelectedIndex="0"
    ShowBaseLine="true" EnableEmbeddedSkins="false" Skin="DB" OnTabClick="TabStrip_TabClick">
    <Tabs>
        <tel:RadTab Value="V" Text="<%$Resources:Labels,ServiceVideo%>" />
        <tel:RadTab Value="F" Text="<%$Resources:Labels,Feedback%>" />
    </Tabs>
</tel:RadTabStrip>
<div style="height: 1px; -moz-box-shadow: 0px 2px 2px #336699; -webkit-box-shadow: 0px 2px 2px #336699;
    box-shadow: 0px 2px 2px #336699; margin-bottom: 0px; border-bottom: 1px solid #336699;
    border-top: 1px solid #FFFFFF; background-color: #336699">
</div>
<div class="<%=CssClass%>">
    <tel:RadMultiPage ID="RadMultiPage1" runat="server" SelectedIndex="0">
        <tel:RadPageView ID="RadPageView1" runat="server">
            <div style="width: 100%;">
                <iac:VideoPlayer runat="server" ID="VideoPlayer" />
            </div>
        </tel:RadPageView>
        <tel:RadPageView ID="RadPageView2" runat="server">
            <iac:FeedbackList ID="FeedbackList" CssClass="tabPage" runat="server" />
        </tel:RadPageView>
    </tel:RadMultiPage>
</div>

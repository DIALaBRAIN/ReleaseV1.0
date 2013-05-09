<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ServiceProfileDisplay.ascx.cs"
    Inherits="IntelArcade.WebApp.UserControls.ServiceProfileDisplay" %>
<%@ Register Src="~/UserControls/FeedbackList.ascx" TagName="FeedbackList" TagPrefix="iac" %>
<%@ Register Src="EmbeddedVideoPlayer.ascx" TagName="VideoPlayer" TagPrefix="iac" %>
<style type="text/css">
    select
    {
        color: #444444;
        font: 1.0em Arial, "Trebuchet MS" ,Tahoma,sans-serif;
    }
</style>
<asp:UpdatePanel runat="server" ChildrenAsTriggers="true" ID="UpdatePanel1" UpdateMode="Conditional">
    <ContentTemplate>
        <div class="<%=CssClass%>">
            <asp:HiddenField ID="lblId" runat="server"></asp:HiddenField>
            <div style="padding-bottom: 10px;">
                <table border="0" cellpadding="0" cellspacing="0" style="width: 100%;">
                    <tr>
                        <td>
                            <iac:ProfileFlagRenderer runat="server" ID="ServiceFlags1" OnClientCommand="_iac_OnProfileFlagCommmand"
                                OnClientDialogClosed="_iac_SbjSchOnClientClose" Mode="Icons" ServiceProfileFlags="None"
                                EnableServiceProfileMode="true" />
                        </td>
                        <td colspan="3" style="text-align: right; white-space: nowrap;">
                            <label>
                                Service Category:</label>&nbsp;<asp:DropDownList ID="Services" runat="server" AutoPostBack="True" />
                        </td>
                    </tr>
                    <tr>
                        <td style="border-bottom: 1px solid #cfcfcf; white-space: nowrap; width: 5px;">
                            <b><span runat="server" id="SubjectPath" /></b>
                        </td>
                        <td style="border-bottom: 1px solid #cfcfcf; white-space: nowrap; width: 5px;">
                            &nbsp;
                        </td>
                    </tr>
                </table>
                <table width="100%">
                    <tr>
                        <td style="vertical-align: top; max-width: 500px;">
                            <div>
                                <table>
                                    <tr>
                                        <td style="padding-top: 5px; padding-bottom: 4px; white-space: nowrap; vertical-align: top;">
                                            <div>
                                                <div style="height: 33px; float: left; max-width: 480px;">
                                                    <span style="font-size: 1.4em; max-width: 480px; display: inline-block; white-space: normal;"
                                                        runat="server" id="ServiceName" />
                                                </div>
                                                <div style="float: left; padding-left: 10px;">
                                                    <table>
                                                        <tr>
                                                            <td>
                                                                <iac:ProfileFlagRenderer runat="server" ID="ServiceFlags" OnClientDialogClosed="_iac_SbjSchOnClientClose"
                                                                    OnClientCommand="_iac_OnProfileFlagCommmand" SuppressUserFlags="false" Mode="Icons"
                                                                    UserFlags="None" ProfileTabType="Service" Position="TopLeft" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="padding-left: 5px; padding-top: 2px; padding-bottom: 0px; vertical-align: top;">
                                            <div style="float: left;">
                                                <label>
                                                    Fee:</label>&nbsp;<span runat="server" id="Fee"></span> <span style=""></span>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="padding-left: 5px; padding-top: 2px; padding-bottom: 0px; vertical-align: top;">
                                            <iac:RatingSummary ID="RatingSummary" DisplayBlock="false" ShowTotal="true" Direction="Vertical"
                                                runat="server" />
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </td>
                        <td style="vertical-align: top;">
                            <div style="float: right;">
                                <table>
                                    <tr>
                                        <td>
                                            <iac:ProfileFlagRenderer runat="server" ID="ServiceFlags2" OnClientCommand="_iac_OnProfileFlagCommmand"
                                                SuppressUserFlags="true" Mode="Text" UserFlags="None" ProfileTabType="Service"
                                                Position="Top" Direction="Vertical" />
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </td>
                    </tr>
                </table>
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
        <asp:Button ID="btnUpdate" runat="server" OnClick="PageRefresh_Click" Style="display: none;" />
    </ContentTemplate>
    <Triggers>
        <asp:AsyncPostBackTrigger ControlID="btnUpdate" EventName="Click" />
    </Triggers>
</asp:UpdatePanel>
<iac:ResultFooter ID="ResultFooter1" runat="server" />
<br />
<tel:RadTabStrip ID="TabStrip" runat="server" MultiPageID="RadMultiPage1" SelectedIndex="0"
    ShowBaseLine="true" EnableEmbeddedSkins="false" Skin="DB">
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

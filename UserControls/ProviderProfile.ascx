<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ProviderProfile.ascx.cs"
    Inherits="IntelArcade.WebApp.UserControls.ProviderProfile" %>
<%@ Register Src="FeedbackSummaryList.ascx" TagName="FeedbackSummaryList" TagPrefix="iac" %>
<%@ Register Src="WorkHistoryList.ascx" TagName="WorkHistoryList" TagPrefix="iac" %>
<%@ Register Src="QualificationList.ascx" TagName="QualificationList" TagPrefix="iac" %>
<%@ Register Src="EmbeddedVideoPlayer.ascx" TagName="VideoPlayer" TagPrefix="iac" %>
<script language="javascript" type="text/javascript">

    //    function _iac_OnProfileFlagCommmandComplete(args) {

    //        alert('test');
    ////        $("#<%=btnUpdate.ClientID %>").click();
    //    }


</script>
<div class="<%=CssClass%>">
    <div style="padding-bottom: 10px;">
        <table border="0" cellpadding="0" cellspacing="0" style="width: 100%;">
            <tr>
                <td style="vertical-align: top;">
                    <asp:Image ID="ProviderImage" runat="server" />
                </td>
                <td style="width: 100%; vertical-align: top;">
                    <div style="padding-left: 5px;">
                        <table>
                            <tr>
                                <td>
                                    <h1>
                                        <asp:Label ID="ProviderName" runat="server" /></h1>
                                </td>
                                <td>
                                    <div style="float: left;">
                                        <table>
                                            <tr>
                                                <td>
                                                    <iac:ProfileFlagRenderer runat="server" ID="ProfileFlagRenderer2" OnClientCommand="_iac_OnProfileFlagCommmand"
                                                        OnClientDialogClosed="_iac_SbjSchOnClientClose" Mode="Icons" ProfileTabType="Provider"
                                                        Position="TopLeft" />
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div style="clear: both; padding-top: 5px; padding-left: 6px; width: 100%;">
                        <iac:RatingSummary ID="ProviderRating" DisplayBlock="false" ShowTotal="true" runat="server"
                            Direction="Vertical" />
                    </div>
                </td>
                <td style="width: 100%; vertical-align: top;">
                    <div style="float: right;">
                        <table>
                            <tr>
                                <td>
                                    <iac:ProfileFlagRenderer runat="server" ID="ProfileFlagRenderer1" OnClientCommand="_iac_OnProfileFlagCommmand"
                                        Mode="Text" ProfileTabType="Provider" Position="Top" Direction="Vertical" />
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
<iac:ResultFooter ID="ResultFooter1" runat="server" />
<br />
<tel:RadTabStrip ID="TabStrip" runat="server" MultiPageID="RadMultiPage1" SelectedIndex="0"
    ShowBaseLine="True" EnableEmbeddedSkins="false" Skin="DB">
    <Tabs>
        <tel:RadTab runat="server" Text="Provider Video" Selected="True" />
        <tel:RadTab runat="server" Value="Q" Text="Provider Credentials" />
        <tel:RadTab runat="server" Value="W" Text="Work History" />
        <tel:RadTab runat="server" Value="F" Text="Feedback Summary" />
    </Tabs>
</tel:RadTabStrip>
<div style="height: 1px; -moz-box-shadow: 0px 2px 2px #336699; -webkit-box-shadow: 0px 2px 2px #336699;
    box-shadow: 0px 2px 2px #336699; margin-bottom: 0px; border-bottom: 1px solid #336699;
    border-top: 1px solid #FFFFFF; background-color: #336699">
</div>
<asp:UpdatePanel runat="server" ChildrenAsTriggers="true" UpdateMode="Conditional">
    <ContentTemplate>
        <div class="<%=CssClass%>">
            <tel:RadMultiPage ID="RadMultiPage1" runat="server" SelectedIndex="0">
                <tel:RadPageView ID="RadPageView1" runat="server">
                    <div style="width: 100%;">
                        <iac:VideoPlayer runat="server" ID="VideoPlayer" />
                    </div>
                </tel:RadPageView>
                <tel:RadPageView ID="RadPageView2" runat="server">
                    <div>
                        <h1>
                            Professional Qualifications</h1>
                        <br />
                        <iac:QualificationList runat="server" ID="ProfessionalQualifications" EnableViewState="false" />
                        <br />
                    </div>
                    <div>
                        <h1>
                            Academic Qualifications</h1>
                        <br />
                        <iac:QualificationList runat="server" ID="AcademicQualificatons" EnableViewState="false" />
                        <br />
                    </div>
                </tel:RadPageView>
                <tel:RadPageView ID="RadPageView3" runat="server">
                    <iac:WorkHistoryList ID="WorkHistoryList" Visible="false" CssClass="tabPage" runat="server"
                        EnableViewState="false" />
                </tel:RadPageView>
                <tel:RadPageView ID="RadPageView4" runat="server">
                    <div>
                        <iac:FeedbackSummaryList runat="server" ID="FeedbackSummary" />
                    </div>
                </tel:RadPageView>
            </tel:RadMultiPage>
        </div>
        <asp:Button ID="btnUpdate" runat="server" OnClick="PageRefresh_Click" Style="display: none;" />
    </ContentTemplate>
    <Triggers>
        <asp:AsyncPostBackTrigger ControlID="btnUpdate" EventName="Click" />
    </Triggers>
</asp:UpdatePanel>

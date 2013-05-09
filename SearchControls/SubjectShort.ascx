<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SubjectShort.ascx.cs"
    Inherits="IntelArcade.WebApp.SearchControls.SubjectShort" %>
<%@ Register TagPrefix="iac" TagName="ServiceCategoryCloud" Src="~/UserControls/ServiceCategoryCloud.ascx" %>
<%@ Import Namespace="IntelArcade.Common" %>
<script language="javascript" type="text/javascript" src="../Client/jquery.tools.min.js"></script>
<iac:ServiceCategoryCloud runat="server" ID="CategoryCloud" />
<asp:Repeater runat="server" ID="SubjectRepeater" EnableViewState="false">
    <HeaderTemplate>
    </HeaderTemplate>
    <SeparatorTemplate>
    </SeparatorTemplate>
    <ItemTemplate>
        <div class="rptItem">
            <div class="itemHeader">
            </div>
            <div class="itemBody">
                <div class="inner">
                
                    <table border="0" cellpadding="0" cellspacing="0" style="width: 100%;">
                        <tr style="vertical-align: top;">
                            <td rowspan="1" style="">
                                <div style="position: relative">
                                    <div style="width: 75; text-align: center;">
                                        <img style="<%# GetProviderImageStyle(Container.DataItem) %>" src="<%# GetProviderImageUrl(Container.DataItem) %>"
                                            alt="" title="<%# GetProviderName(Container.DataItem) %>" class="leftImage" /></div>
                                    <div style="position: absolute; top: 0px; left: 0px;">
                                        <table>
                                            <tr>
                                                <iac:ProfileFlagRenderer runat="server" ID="ProfileFlagRenderer5" EnableViewState="false"
                                                    OnClientDialogClosed="_iac_SbjSchOnClientClose" Mode="Icons" UserFlags="<%# GetUserFlags(Container.DataItem) %>"
                                                    ServiceProfileFlags="<%# GetSubjectFlags(Container.DataItem) %>" ServiceProfileID="<%# ((ServiceProfileResultItem)Container.DataItem).ServiceProfileID %>"
                                                    ProviderID="<%# ((ServiceProfileResultItem)Container.DataItem).ProviderUserID %>"
                                                    SearchResult="true" ProfileTabType="Service" Position="TopLeft" SearchResultImage="true" />
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                            </td>
                            <td style="text-align: left; width: 100%;">
                                <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                                    <tr>
                                        <td style="font-size: larger; vertical-align: top;">
                                            <div style="float: left; line-height: 0.9em;">
                                                <a style="color: #666666; font-weight: bold;" href="<%# GetProviderPostbackRef(Container.DataItem) %>">
                                                    <%# GetProviderName(Container.DataItem) %></a>&nbsp;-&nbsp;<%# GetSubject(Container.DataItem) %><table>
                                                        <tr>
                                                            <td>
                                                                <a style="margin-left:-2px" href="<%# GetSubjectPostbackRef(Container.DataItem) %>">
                                                                    <%# GetTitle(Container.DataItem) %></a>
                                                            </td>
                                                            <td>
                                                                <table>
                                                                    <tr>
                                                                        <iac:ProfileFlagRenderer  runat="server" ID="ProfileFlagRenderer4" EnableViewState="false"
                                                                            OnClientDialogClosed="_iac_SbjSchOnClientClose" OnClientCommand="_iac_OnProfileFlagCommmand"
                                                                            Mode="Icons" UserFlags="<%# GetUserFlags(Container.DataItem) %>" ServiceProfileFlags="<%# GetSubjectFlags(Container.DataItem) %>"
                                                                            ServiceProfileID="<%# ((ServiceProfileResultItem)Container.DataItem).ServiceProfileID %>"
                                                                            ProviderID="<%# ((ServiceProfileResultItem)Container.DataItem).ProviderUserID %>"
                                                                            SearchResult="true" ProfileTabType="Service" Position="TopLeft" />
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                        </tr>
                                                    </table>
                                            </div>
                                            <div style="float: right">
                                                <table>
                                                    <tr>
                                                        <td>
                                                            <table>
                                                                <tr>
                                                                    <iac:ProfileFlagRenderer runat="server" ID="ProfileFlagRenderer3" EnableViewState="false"
                                                                        OnClientDialogClosed="_iac_SbjSchOnClientClose" Mode="Icons" UserFlags="<%# GetUserFlags(Container.DataItem) %>"
                                                                        ServiceProfileFlags="<%# GetSubjectFlags(Container.DataItem) %>" ServiceProfileID="<%# ((ServiceProfileResultItem)Container.DataItem).ServiceProfileID %>"
                                                                        ProviderID="<%# ((ServiceProfileResultItem)Container.DataItem).ProviderUserID %>"
                                                                        SearchResult="true" ProfileTabType="Service" Position="Top" />
                                                                </tr>
                                                            </table>
                                                        </td>
                                                        <td>
                                                            <span style="float: right; font-size: 0.700em;">
                                                                <iac:IAFeedback runat="server" ID="Rating1" DisplayBlock="true" Feedback="<%# GetFeedback(Container.DataItem)%>">
                                                                </iac:IAFeedback>
                                                            </span>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="trigger" style="font-size: 0.9em; line-height: 1.4em; margin-top: 8px;">
                                                <p>
                                                    <%# GetSummary(Container.DataItem) %></p>
                                            </div>
                                            <div class="tooltip" style="width: 400px;">
                                                <table border="0" cellpadding="0" cellspacing="0" style="width: 100%;">
                                                    <tr>
                                                        <td>
                                                            <div class="upper0">
                                                                <img src="/images/triangle1.png" /></div>
                                                            <td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <div class="tooltipinner" style="width: 400px;">
                                                                <table border="0" cellpadding="0" cellspacing="0" style="width: 100%;">
                                                                    <tr>
                                                                        <td valign="middle">
                                                                            <div>
                                                                                <table cellpadding="5">
                                                                                    <iac:ProfileFlagRenderer runat="server" ID="ProfileFlagRenderer2" EnableViewState="false"
                                                                                        OnClientCommand="_iac_OnProfileFlagCommmand" OnClientDialogClosed="_iac_SbjSchOnClientClose"
                                                                                        Mode="Text" UserFlags="<%# GetUserFlags(Container.DataItem) %>" ServiceProfileFlags="<%# GetSubjectFlags(Container.DataItem) %>"
                                                                                        ServiceProfileID="<%# ((ServiceProfileResultItem)Container.DataItem).ServiceProfileID %>"
                                                                                        ProviderID="<%# ((ServiceProfileResultItem)Container.DataItem).ProviderUserID %>"
                                                                                        SuppressUserFlags="true" SearchResult="true" ProfileTabType="Service" Direction="Vertical"
                                                                                        Position="Bottom" />
                                                                                </table>
                                                                            </div>
                                                                        </td>
                                                                        <td align="left">
                                                                            <table >
                                                                                <iac:ProfileFlagRenderer runat="server" ID="ProfileFlagRenderer1" EnableViewState="false"
                                                                                    OnClientDialogClosed="_iac_SbjSchOnClientClose" Mode="Icons" UserFlags="<%# GetUserFlags(Container.DataItem) %>"
                                                                                    ServiceProfileFlags="<%# GetSubjectFlags(Container.DataItem) %>" ServiceProfileID="<%# ((ServiceProfileResultItem)Container.DataItem).ServiceProfileID %>"
                                                                                    ProviderID="<%# ((ServiceProfileResultItem)Container.DataItem).ProviderUserID %>"
                                                                                    SearchResult="true" ProfileTabType="Service" Direction="Vertical" ShowEndText="true"
                                                                                    Position="BottomRight" />
                                                                            </table>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </div>
                                                    </tr>
                                        </td>
                                </table>
                
                </div>
                </td> </tr> </table> </td> </tr> </table>
            </div>
        </div>
        <div class="itemFooter">
            <div class="inner">
                <div style="padding-bottom: 4px;">
                </div>
            </div>
        </div>
        </div>
    </ItemTemplate>
    <FooterTemplate>
    </FooterTemplate>
</asp:Repeater>
<script type='text/javascript'>
    Sys.Application.add_init(app_init);
    function app_init() {
        var prm = Sys.WebForms.PageRequestManager.getInstance();
        prm.add_pageLoaded(function () {
            $('.trigger').tooltip({
                position: 'bottom center',
                relative: true,
                predelay: 300,
                effect: 'slide',
                slideOffset: 20
            });
        });
    };
</script>

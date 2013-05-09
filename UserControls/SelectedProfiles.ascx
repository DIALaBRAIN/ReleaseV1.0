<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SelectedProfiles.ascx.cs"
    Inherits="IntelArcade.WebApp.UserControls.SelectedProfiles" %>
<div class="bluebar_radious1" style="text-align: center;border-bottom:solid #ccc 1px; padding-top:4px; padding-bottom:4px; background:#336699; color:White;">
    <label runat="server" id="lblProfileType">
    </label>
</div>
<asp:Repeater runat="server" ID="reProfiles">
    <ItemTemplate>
        <div class="selectedprofile">
            <table border="0" cellpadding="0" cellspacing="0" style="width: 100%;">
                <tr style="vertical-align: top;">
                    <td rowspan="1" style="">
                        <div style="position: relative">
                            <div style="width: 75; text-align: center;">
                                <img style="<%# GetProviderImageStyle(Container.DataItem) %>" src="<%# GetProviderImageUrl(Container.DataItem) %>"
                                    alt="" title="<%# GetDisplayName(Container.DataItem) %>" class="leftImage" /></div>
                        </div>
                    </td>
                    <td style="text-align: left; width: 100%;">
                        <table border="0" cellpadding="0" cellspacing="0" style="width: 100%;">
                            <tr>
                                <td style="vertical-align: top">
                                    <table width="100%">
                                        <tr>
                                            <td>
                                                <div style="line-height: 0.9em;">
                                                    <a style="font-weight: bold; color: #666666; font-size: 1.2em;" href='<%# GetProviderProfileUrl(Container.DataItem) %>'>
                                                        <%# GetDisplayName(Container.DataItem) %></a>
                                                </div>
                                                <div>
                                                    <a href='<%# GetServiceProfileUrl(Container.DataItem) %>'>
                                                        <%# GetServiceTitle(Container.DataItem) %></a>
                                                </div>
                                            </td>
                                            <td style="vertical-align: top">
                                                <span style="float: right; font-size: 0.900em;">
                                                    <iac:IAFeedback runat="server" ID="Rating1" DisplayBlock="true" Feedback="<%# GetFeedback(Container.DataItem)%>">
                                                    </iac:IAFeedback>
                                                </span>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="trigger" style="font-size: 0.9em; line-height: 1.5em; margin-top: 8px;">
                                        <%# GetSummary(Container.DataItem)%>
                                    </div>
                                    <div class="tooltip">
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
                                                                        <table>
                                                                            <iac:ProfileFlagRenderer runat="server" ID="ProfileFlagRenderer2" EnableViewState="false"
                                                                                OnClientCommand="_iac_OnProfileFlagCommmand" OnClientDialogClosed="_iac_SbjSchOnClientClose"
                                                                                Mode="Text" SuppressUserFlags="true" SearchResult="true" ProfileTabType="Service"
                                                                                Direction="Vertical" Position="Bottom" ProviderID="<%# GetProviderId(Container.DataItem) %>"
                                                                                ServiceProfileID="<%# GetServiceId(Container.DataItem) %>" ServiceProfileFlags="<%# GetServiceProfileFlags(Container.DataItem) %>" />
                                                                        </table>
                                                                    </div>
                                                                </td>
                                                                <td align="left">
                                                                    <table>
                                                                        <iac:ProfileFlagRenderer runat="server" ID="ProfileFlagRenderer1" EnableViewState="false"
                                                                            OnClientDialogClosed="_iac_SbjSchOnClientClose" Mode="Icons" SearchResult="true"
                                                                            ProfileTabType="Service" Direction="Vertical" ShowEndText="true" Position="BottomRight"
                                                                            ProviderID="<%# GetProviderId(Container.DataItem) %>" ServiceProfileID="<%# GetServiceId(Container.DataItem) %>"
                                                                            ServiceProfileFlags="<%# GetServiceProfileFlags(Container.DataItem) %>" />
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </div>
                                            </tr>
                                </td>
                        </table>
                </tr>
                </td>
            </table>
            </td> </tr> </table>
        </div>
    </ItemTemplate>
</asp:Repeater>

<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ResponseServiceRotator.ascx.cs"
    Inherits="IntelArcade.WebApp.UserControls.ResponseServiceRotator" %>
<%@ Register Src="~/UserControls/ResponseDisplay.ascx" TagName="ResponseDisplay"
    TagPrefix="rd" %>
<%@ Register Src="~/UserControls/ServiceProfileDisplay.ascx" TagName="ServiceProfileDisplay"
    TagPrefix="sp" %>
<%@ Register Src="~/UserControls/ProviderProfile.ascx" TagName="ProviderProfile"
    TagPrefix="pp" %>
<%@ Register Src="~/UserControls/Responses.ascx" TagName="Responses" TagPrefix="re" %>
<div class="Rotator">
    <tel:RadRotator runat="server" ID="rpRotator" RotatorType="Buttons" Skin="DB" EnableEmbeddedSkins="False"
        Width="736px" Height="332px" BorderColor="#6F6F6F">
        <ItemTemplate>
            <div>
                <div class='<%# GetItemCardStyle(Eval("Item1")) %>'>
                    <div style='<%# GetCardVisible(Eval("Item1")) %>'>
                        <table>
                            <tr>
                                <td>
                                    <img runat="server" src='<% #GetImageUrl(Eval("Item1")) %>' style='<% #GetImageStyle(Eval("Item1")) %>' />
                                </td>
                                <td style="vertical-align: top; padding: 10px;">
                                    <span class="ProviderLink">
                                        <asp:LinkButton ID="LinkButton1" runat="server" OnCommand="LinkButton_Command" CommandName='<%# Eval("ID")  %>'
                                            CommandArgument='<%# GetResponseServiceID(Eval("Item1")) %>'><%# GetUserDisplayName(Eval("Item1"))%></asp:LinkButton></span>
                                    <br />
                                    <span class="ServiceLink">
                                        <asp:LinkButton runat="server" OnCommand="LinkButton_Command" CommandName='<%# Eval("ID")  %>'
                                            CommandArgument='<%# GetResponseServiceID(Eval("Item1")) %>'><%# GetServiceTitle(Eval("Item1"))%></asp:LinkButton></span>
                                </td>
                            </tr>
                        </table>
                        <div style="font-size: 0.7em; font-weight: normal; color: #444444; left: 4px; position: relative;
                            right: 4px; line-height: 120%; padding-right: 5px; font-family: Verdana;">
                            <%# GetSummary(Eval("Item1"))%>
                        </div>
                    </div>
                    <div style='<%# GetSeeFullListVisible(Eval("Item1")) %>'>
                        <div style="text-align: center; padding-top: 50px; font-weight: bold; padding-left: 4px;
                            padding-right: 4px;">
                            <asp:LinkButton runat="server" ID="btnFullList" OnClick="FullList_Click">All Responses <br /> full-listing</asp:LinkButton>
                        </div>
                    </div>
                </div>
                <div class='<%# GetItemCardStyle(Eval("Item2")) %>'>
                    <div style='<%# GetCardVisible(Eval("Item2")) %>'>
                        <table>
                            <tr>
                                <td>
                                    <img runat="server" src='<% #GetImageUrl(Eval("Item2")) %>' style='<% #GetImageStyle(Eval("Item2")) %>' />
                                </td>
                                <td style="vertical-align: top; padding: 10px;">
                                    <span class="ProviderLink">
                                        <asp:LinkButton ID="LinkButton2" runat="server" OnCommand="LinkButton_Command" CommandName='<%# Eval("ID")  %>'
                                            CommandArgument='<%# GetResponseServiceID(Eval("Item2")) %>'><%# GetUserDisplayName(Eval("Item2"))%></asp:LinkButton></span>
                                    <br />
                                    <span class="ServiceLink">
                                        <asp:LinkButton ID="LinkButton3" runat="server" OnCommand="LinkButton_Command" CommandName='<%# Eval("ID")  %>'
                                            CommandArgument='<%# GetResponseServiceID(Eval("Item2")) %>'><%# GetServiceTitle(Eval("Item2"))%></asp:LinkButton></span>
                                </td>
                            </tr>
                        </table>
                        <div style="font-size: 0.7em; font-weight: normal; color: #444444; left: 4px; position: relative;
                            right: 4px; line-height: 120%; padding-right: 5px; font-family: Verdana;">
                            <%# GetSummary(Eval("Item2"))%>
                        </div>
                    </div>
                </div>
            </div>
        </ItemTemplate>
    </tel:RadRotator>
</div>
<div id="SelectedItem" runat="server" visible="false">
    <div style="position: relative; z-index: 10; float: right; top:27px">
        <iac:ProfileFlagRenderer runat="server" ID="UserFlagRenderer" Mode="Icons" ServiceProfileFlags="None"
            SuppressServiceProfileFlags="true" OnClientDialogClosed="_iac_SbjSchOnClientClose" />
    </div>
    <tel:RadTabStrip runat="server" ID="TabStrip1" AutoPostBack="true" Width="100%" SelectedIndex="3"
        ShowBaseLine="true" EnableEmbeddedSkins="false" Skin="DB" OnTabClick="TabStrip_TabClick"
        MultiPageID="RadMultiPage1">
        <Tabs>
            <tel:RadTab Value="P" Text="<%$Resources:Labels,ProviderProfile %>" Selected="True" />
            <tel:RadTab Value="S" Text="<%$Resources:Labels,ServiceProfile%>" />
            <tel:RadTab Value="R" Text="<%$Resources:Labels,Response %>">
            </tel:RadTab>
        </Tabs>
    </tel:RadTabStrip>
    <div style="height: 1px; -moz-box-shadow: 0px 2px 2px #336699; -webkit-box-shadow: 0px 2px 2px #336699;
        box-shadow: 0px 2px 2px #336699; margin-bottom: 0px; border-bottom: 1px solid #336699;
        border-top: 1px solid #FFFFFF; background-color: #336699">
    </div>
    <tel:RadMultiPage ID="RadMultiPage1" runat="server" SelectedIndex="3">
        <tel:RadPageView ID="RadPageView1" runat="server">
            <pp:ProviderProfile runat="server" ID="ProviderProfile" CssClass="tabPage" />
        </tel:RadPageView>
        <tel:RadPageView ID="RadPageView2" runat="server">
            <sp:ServiceProfileDisplay ID="ServiceProfileDisplay" runat="server" CssClass="tabPage" />
        </tel:RadPageView>
        <tel:RadPageView ID="RadPageView3" Selected="true" runat="server">
            <rd:ResponseDisplay ID="ResponseDisplay1" runat="server" CssClass="tabPage" />
        </tel:RadPageView>
    </tel:RadMultiPage>
</div>
<div id="NotifyMeDiv" runat="server" visible="false">
    <p class="headingsNew">
        Response
    </p>
    <div style="padding: 0px 10px 10px 10px; min-height: 100px;">
        <label runat="server" id="lblCategoryName">
        </label>
        <br />
        <div style="padding-left: 15px; float: right;">
            <div class="addServiceButton" style="padding-bottom: 5px;">
                <asp:LinkButton ID="CreateService" runat="server" OnCommand="CreateService_Command"></asp:LinkButton></div>
            <div class="linkServiceButton">
                <asp:LinkButton ID="LinkService" runat="server" OnCommand="LinkService_Command"></asp:LinkButton></div>
        </div>
        <div runat="server" id="lblNote" style="font-size: 0.875em; font-style: normal; font-variant: normal;
            font-weight: normal; line-height: 1.6em; text-align: justify;">
        </div>
        <br />
    </div>
</div>
<div runat="server" id="FullList" visible="false">
    <re:Responses ID="resFullList" runat="server" ViewStateMode="Enabled" />
</div>

<%@ Page Title="" Language="C#" MasterPageFile="~/StandardMaster.master" AutoEventWireup="true"
    CodeBehind="ServiceProfiles.aspx.cs" Inherits="IntelArcade.WebApp.ProviderSetup.ServiceProfiles" %>

<%@ Register TagPrefix="uc1" TagName="VideoSelector" Src="~/UserControls/VideoSelector.ascx" %>
<%@ Import Namespace="IntelArcade.Common" %>
<%@ Import Namespace="IntelArcade.WebApp" %>
<%@ Register Src="~/UserControls/ProviderSetupNavigator.ascx" TagName="ProviderSetupNavigator"
    TagPrefix="uc2" %>
<%@ Register Src="~/UserControls/ProviderSetupHeader.ascx" TagName="ProviderSetupHeader"
    TagPrefix="uc4" %>
<%@ Register Src="../UserControls/ProviderSetupNextPreviousNavigator.ascx" TagName="ProviderSetupNextPreviousNavigator"
    TagPrefix="uc3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentHead" runat="server">
    <script type="text/javascript">
        function _onDelete_WindowClose(oWnd, args) {
            if (args == null) return;
            var arg = args.get_argument();
            if (arg.DoPostback) {
                handleResponse_DialogResponseHandler(arg.ServiceResponse, arg.Argument);
            }
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
    <iac:ClientResponseHandler runat="server" ID="DialogResponseHandler" />
    <h2 style="font-size: 1.2em">
        <%=PageTitle %></h2>
    <iac:ProviderPhotoWarning ID="ProviderPhotoWarning1" runat="server" CssClass="ProviderPhotoWarning"></iac:ProviderPhotoWarning>
    <div class="providerSetup">
        <table>
            <tr style="vertical-align: top">
                <td style="vertical-align: top; width: 15%">
                    <uc2:ProviderSetupNavigator ID="ProviderSetupNavigator1" CurrentStep="Services" runat="server" />
                </td>
                <td class="verticalRuler">
                    <div style="padding-right: 5px; padding-bottom: 10px; margin-right: 2px; width: 100%">
                        <uc3:ProviderSetupNextPreviousNavigator ID="psnTop" runat="server" />
                    </div>
                    <asp:PlaceHolder runat="server" ID="ContentContainer">
                        <table style="width: 100%">
                            <tr>
                                <td style="border-top: 1px solid #cfcfcf; border-bottom: 1px solid #cfcfcf; padding: 5px 0px 5px 0;">
                                    <h3 style="color: #FF9148;" id="_pageTitle" runat="server">
                                        Services</h3>
                                    <div title="Add Service" class="addButton" style="margin-bottom: 5px; float: right;
                                        margin-right: -2px;">
                                        <asp:LinkButton ID="Add_Link" CommandName="Add" CommandArgument="" runat="server"
                                            Text=""></asp:LinkButton>
                                    </div>
                                    <div style="clear: both">
                                        <asp:Repeater runat="server" ID="SubjectRepeater" OnItemDataBound="SubjectRepeater_ItemDataBound">
                                            <HeaderTemplate>
                                            </HeaderTemplate>
                                            <SeparatorTemplate>
                                            </SeparatorTemplate>
                                            <ItemTemplate>
                                                <div style="clear: both; padding-top: 5px; margin-bottom: 10px; margin-right: -4px;
                                                    float: right">
                                                    <div class="inner">
                                                        <table>
                                                            <tr>
                                                                <td title="Edit" class="editButton">
                                                                    <asp:LinkButton ID="EditLink" OnCommand="EditLink_Command" CommandName="Edit" CommandArgument='<%# ((IntelArcade.Common.ServiceProfile)Container.DataItem).ServiceProfileID %>'
                                                                        runat="server" Text=""></asp:LinkButton>
                                                                </td>
                                                                <td title="Delete" class="deleteButton" style="padding-left: 10px">
                                                                    <iac:ConfirmationLink runat="server" OnClientClose="_onDelete_WindowClose" ReturnValue='<%# ((IntelArcade.Common.ServiceProfile)Container.DataItem).ServiceProfileID%>'>
                                                                    </iac:ConfirmationLink>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </div>
                                                </div>
                                                <div class="rptItem">
                                                    <div class="itemHeader">
                                                        <div class="inner">
                                                        </div>
                                                    </div>
                                                    <div class="itemBody" id="rptBody" runat="server">
                                                        <div class="inner" style="padding-bottom: 10px;">
                                                            <img id="Img1" src="~/images/providerOnline-32x.png" alt="Image" title="Image" class="leftImage"
                                                                style="width: 50px; height: 50px;" runat="server" />
                                                            <span>
                                                                <%# FormatHelper.GetSubjectPath((IntelArcade.Common.ServiceProfile)Container.DataItem)%></span>
                                                            <h1 style="padding-bottom: 4px; line-height: 23px; font-size: large">
                                                                <%#((IntelArcade.Common.ServiceProfile)Container.DataItem).Title%></h1>
                                                            <div>
                                                                <table>
                                                                    <tr>
                                                                        <td>
                                                                            <%# FormatHelper.FormatRate((IntelArcade.Common.ServiceProfile)Container.DataItem)%>
                                                                        </td>
                                                                        <td>
                                                                            <div style="margin-left: 5px;">
                                                                                <img id="freeTime" runat="server" src="~/images/Free-db-time.png" width="25" title="Free db Time"
                                                                                    visible="<%# ((IntelArcade.Common.ServiceProfile)Container.DataItem).FreeTimeActive %>" />
                                                                                <img id="Img2" runat="server" src="~/images/Free-1st-Session.png" width="25" title="Free First Session"
                                                                                    visible="<%# IsFreeSession((IntelArcade.Common.ServiceProfile)Container.DataItem) %>" />
                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </div>
                                                            <div id="Div1" visible="<%# SetAttendeeVisiblitity((IntelArcade.Common.ServiceProfile)Container.DataItem) %>"
                                                                runat="server">
                                                                <label>
                                                                    <asp:Literal ID="Literal2" runat="server" Text="<%$ Resources:Labels,MinGroupAttendees%>" />:</label>&nbsp;
                                                                <span runat="server" id="Span1">
                                                                    <%# ((IntelArcade.Common.ServiceProfile)Container.DataItem).MinGroupAttendees%></span>
                                                            </div>
                                                            <div style="padding-top: 5px; max-width: 500px">
                                                                <span style="padding-top: 4px;"><i>
                                                                    <%# ((IntelArcade.Common.ServiceProfile)Container.DataItem).SummaryDescription%></i></span>
                                                                <span style="padding-top: 4px; max-width: 500px;">
                                                                    <%# ((IntelArcade.Common.ServiceProfile)Container.DataItem).Description%></span>
                                                            </div>
                                                        </div>
                                                        <uc1:VideoSelector ID="VideoSelector1" AutoClose="false" ResourceInstanceContext="<%# ResourceInstanceContext.ServiceProfileVideo %>"
                                                            ContextID="<%# ((IntelArcade.Common.ServiceProfile)Container.DataItem).ServiceProfileID %>"
                                                            ResourceInstanceIdentifier="<%# ((IntelArcade.Common.ServiceProfile)Container.DataItem).VideoID%>"
                                                            OnRemoveClick="EditLink_Command" runat="server" />
                                                    </div>
                                                </div>
                                            </ItemTemplate>
                                            <FooterTemplate>
                                            </FooterTemplate>
                                        </asp:Repeater>
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </asp:PlaceHolder>
                    <div style="float: right; padding-top: 10px; width: 100%">
                        <uc3:ProviderSetupNextPreviousNavigator ID="psnBottom" runat="server" />
                    </div>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentRightAbove" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentRightBelow" runat="server">
</asp:Content>

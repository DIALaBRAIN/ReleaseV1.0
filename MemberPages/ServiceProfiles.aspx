<%@ Page Title="" Language="C#" MasterPageFile="~/StandardMaster.master" AutoEventWireup="true"
    CodeBehind="ServiceProfiles.aspx.cs" Inherits="IntelArcade.WebApp.ServiceProfiles" %>

<%@ Register TagPrefix="uc1" TagName="VideoSelector" Src="~/UserControls/VideoSelector.ascx" %>
<%@ Import Namespace="IntelArcade.Common" %>
<%@ Import Namespace="IntelArcade.WebApp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
    <script type="text/javascript">
        function _onDelete_WindowClose(oWnd, args) {
            if (args == null) return;
            var arg = args.get_argument();
            if (arg.DoPostback) {
                handleResponse_DialogResponseHandler(arg.ServiceResponse, arg.Argument);
            }
        }
    </script>
    <iac:ClientResponseHandler runat="server" ID="DialogResponseHandler" />
    <div>
        <h2>
            <%=PageTitle %></h2>
        <div style="float: right; padding-right: 5px;">
            <iac:ReturnContext ID="ReturnContext1" runat="server" /></div>
        <asp:PlaceHolder runat="server" ID="ContentContainer">
            <iac:FieldSet runat="server" ID="FieldSet1" Title="Services" class="formData">
                <div title="Add Service" class="addButton" style="margin-bottom: 5px; float: right;">
                    <asp:LinkButton runat="server" ID="AddLink" CommandName="Add" CommandArgument=""
                        Text=""><%--<asp:Image ID="Add_service_Image" runat="server" ImageUrl="~/images/btn_add_service.png"/>--%></asp:LinkButton>
                </div>
                <div style="clear: both">
                    <asp:Repeater runat="server" ID="SubjectRepeater">
                        <HeaderTemplate>
                        </HeaderTemplate>
                        <SeparatorTemplate>
                        </SeparatorTemplate>
                        <ItemTemplate>
                            <div style="clear: both; padding-top: 5px; float: right; margin-right: -2px;">
                                <div class="inner" style="margin-top: 10px;">
                                    <table>
                                        <tr>
                                            <td title="Edit" class="editButton">
                                                <asp:LinkButton runat="server" ID="EditLink" OnCommand="EditLink_Command" CommandName="Edit"
                                                    CommandArgument='<%# ((IntelArcade.Common.ServiceProfile)Container.DataItem).ServiceProfileID %>'
                                                    Text=""><%--<asp:Image ID="Edit_Service_image" runat="server" ImageUrl="~/images/btn_edit_service.png" />--%></asp:LinkButton>
                                            </td>
                                            <td title="Delete" class="deleteButton" style="padding-left: 10px;">
                                                <iac:ConfirmationLink ID="ConfirmationLink1" runat="server" OnClientClose="_onDelete_WindowClose"
                                                    ReturnValue='<%# ((IntelArcade.Common.ServiceProfile)Container.DataItem).ServiceProfileID%>'>
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
                                <div class="itemBody">
                                    <div class="inner" style="padding-bottom: 10px;">
                                        <img id="Img1" src="~/images/providerOnline-32x.png" alt="Image" title="Image" class="leftImage"
                                            style="width: 50px; height: 50px;" runat="server" />
                                        <span>
                                            <%# FormatHelper.GetSubjectPath((IntelArcade.Common.ServiceProfile)Container.DataItem)%></span>
                                        <h1 style="padding-bottom: 4px; font-size: large">
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
                                        <div style="padding-top: 5px;">
                                            <p style="padding-top: 4px;">
                                                <i>
                                                    <%# ((IntelArcade.Common.ServiceProfile)Container.DataItem).SummaryDescription%></i></p>
                                            <p style="padding-top: 4px;">
                                                <%# ((IntelArcade.Common.ServiceProfile)Container.DataItem).Description%></p>
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
            </iac:FieldSet>
        </asp:PlaceHolder>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentRightAbove" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentRightBelow" runat="server">
</asp:Content>

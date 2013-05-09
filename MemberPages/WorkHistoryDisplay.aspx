<%@ Page Title="" Language="C#" MasterPageFile="~/StandardMaster.master" AutoEventWireup="true"
    CodeBehind="WorkHistoryDisplay.aspx.cs" Inherits="IntelArcade.WebApp.WorkHistory" %>

<%@ Register Src="../UserControls/ProviderSetupNavigator.ascx" TagName="ProviderSetupNavigator"
    TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentBody" runat="server">
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
        <iac:FieldSet runat="server" ID="FieldSet1" Title="Positions" class="formData">
            <div title="Add Position" class="addButton" style="margin-bottom: 5px; float: right;">
                <asp:LinkButton runat="server" ID="AddLink" CommandName="Add" CommandArgument=""
                    Text=""></asp:LinkButton>
            </div>
            <div style="clear: both;">
                <asp:Repeater runat="server" ID="WorkHistoryRepeater">
                    <HeaderTemplate>
                    </HeaderTemplate>
                    <SeparatorTemplate>
                    </SeparatorTemplate>
                    <ItemTemplate>
                        <div style="clear: both; padding-top: 5px; margin-bottom: 10px; float: right; margin-right: -2px;">
                            <div class="inner">
                                <table>
                                    <tr>
                                        <td title="Edit" class="editButton">
                                            <asp:LinkButton runat="server" ID="EditLink" CommandName="Edit" OnCommand="EditLink_Command"
                                                CommandArgument='<%# ((IntelArcade.Common.WorkHistoryItem)Container.DataItem).WorkHistoryID%>'
                                                Text=""></asp:LinkButton>
                                        </td>
                                        <td class="deleteButton" title="Delete" style="padding-left: 10px;">
                                            <iac:ConfirmationLink ID="ConfirmationLink1" runat="server" OnClientClose='_onDelete_WindowClose'
                                                ReturnValue='<%# ((IntelArcade.Common.WorkHistoryItem)Container.DataItem).WorkHistoryID%>'>
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
                                <div class="inner">
                                    <img id="Img1" src="~/images/Net-Presence---Company.png" alt="Image" title="Image"
                                        class="leftImage" style="width: 50px; height: 50px;" runat="server" />
                                    <div style="padding-top: 4px;">
                                        <h1 style="font-size: large">
                                            <%#((IntelArcade.Common.WorkHistoryItem)Container.DataItem).EmployerName%></h1>
                                    </div>
                                    <div style="padding-top: 2px;">
                                        <span style="padding-left: 2px;">
                                            <%# GetCountryName(Container.DataItem)%></span><br />
                                        <span style="padding-left: 2px;"><b>
                                            <%# GetDate(((IntelArcade.Common.WorkHistoryItem)Container.DataItem).FromDate)%></b>&nbsp;-&nbsp;<b><%# GetDate(((IntelArcade.Common.WorkHistoryItem)Container.DataItem).ToDate)%></b></span></div>
                                    <div style="padding-top: 5px;">
                                        <h2 style="font-size: 14px">
                                            <%# ((IntelArcade.Common.WorkHistoryItem)Container.DataItem).RoleName%></h2>
                                        <p>
                                            <%# ((IntelArcade.Common.WorkHistoryItem)Container.DataItem).RoleDescription%></p>
                                        <p style="padding-top: 4px;">
                                            <i>
                                                <%# ((IntelArcade.Common.WorkHistoryItem)Container.DataItem).Notes%></i></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                    <FooterTemplate>
                    </FooterTemplate>
                </asp:Repeater>
        </iac:FieldSet>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentRightAbove" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentRightBelow" runat="server">
</asp:Content>

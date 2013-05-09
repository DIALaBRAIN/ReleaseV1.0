<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="NotifyMeList.ascx.cs"
    Inherits="IntelArcade.WebApp.UserControls.NotifyMeList" %>
<asp:Repeater runat="server" ID="reNotifyMe">
    <ItemTemplate>
        <table width="100%" style="border-bottom: 1px solid #CFCFCF;padding-top:4px">
            <td width="250px" style="vertical-align:top">
                <%# GetSubject(Container.DataItem) %>
            </td>
            <td style="vertical-align:top">
                <span>
                    <%# GetKeywords(Container.DataItem) %>
                </span>
            </td>
            <td style="vertical-align:top">
                <span class="deleteButton" style="float: right;">
                    <asp:LinkButton runat="server" ID="btnRemoveCategory" CommandName="Remove" CommandArgument="<%# ((IntelArcade.Common.NotifyMe)Container.DataItem).NotifyMeID %>"></asp:LinkButton>
                </span>
            </td>
        </table>
    </ItemTemplate>
</asp:Repeater>
<h2 runat="server" id="NoResultsMessage">
    <%= global::Resources.Strings.NoResults%></h2>

<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="GivenResponses.ascx.cs"
    Inherits="IntelArcade.WebApp.UserControls.GivenResponses" %>
<asp:Repeater runat="server" ID="reResponses">
    <ItemTemplate>
        <table width="100%" style="border-bottom: 1px solid #CFCFCF; padding-top: 4px">
            <tr>
                <td>
                    Wanted:<br />
                    <%# GetSubject(Container.DataItem) %>
                </td>
                <td style="vertical-align:top">
                    <div style="max-width: 500px;">
                        <%# GetNote(Container.DataItem) %>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    Subject Linked<br />
                    <%# GetServiceTitle(Container.DataItem) %>
                </td>
                <td style="vertical-align:top">
                    <div style="max-width: 500px;">
                        <%# GetMessege(Container.DataItem) %>
                    </div>
                </td>
            </tr>
        </table>
    </ItemTemplate>
</asp:Repeater>
<h2 runat="server" id="NoResultsMessage">
   Your responses to Requested Services will be listed here</h2>

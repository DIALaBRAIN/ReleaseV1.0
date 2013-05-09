<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="RequestedServices.aspx.cs" Inherits="IntelArcade.WebApp.Admin.Approval.RequestedServices" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">

    <asp:Repeater runat="server" ID="reRequestedServices">
        <ItemTemplate>
            <table width="100%">
                <tr>
                    <td valign="top" style=" width:40px;">
                        <img src="../../images/providerOnline-32x.png" />
                    </td>
                    <td style="vertical-align:top; padding-left:5px;">
                        <label><%# GetSubjectCategoryName(Container.DataItem) %></label>
                        <br />
                        <span> <%# GetNote(Container.DataItem) %> </span>

                    </td>
                    <td style="float:right;">
                        <asp:LinkButton runat="server" CommandName="Approve" CommandArgument='<%# GetRequestServiceId(Container.DataItem) %>' >Approve</asp:LinkButton>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:Repeater>
</asp:Content>

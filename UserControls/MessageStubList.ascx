<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MessageStubList.ascx.cs" Inherits="IntelArcade.WebApp.UserControls.MessageStubList" %>
<%@ Import Namespace="IntelArcade.Common" %>

<iac:PostBackProxy runat="server" ID="CommandProxy" />
<div class="messageList">
    <asp:Repeater runat="server" ID="MessageRepeater" EnableViewState="false">
        <HeaderTemplate>
            <table style="width: 100%">
        </HeaderTemplate>
        <SeparatorTemplate>
            <tr>
                <td colspan="3">
                    <hr />
                </td>
            </tr>
        </SeparatorTemplate>
        <ItemTemplate>
            <tr>
                <td rowspan="2" style="padding-right:10px;"><img alt="" src="<%# GetIconPath((MessageStub)Container.DataItem) %>" style="width:32px;height:32px;" /></td>
                <td style="width: 100%;">
                <a href="<%# GetCommandLink((MessageStub)Container.DataItem) %>"><%# GetSubject((MessageStub)Container.DataItem)%></a>
                </td>
                <td style="text-align:right;"><b><%# GetDate((MessageStub)Container.DataItem)%></b></td>
            </tr>
            <tr>
                <td><label><%# GetDisplayNameLabel((MessageStub)Container.DataItem)%>:&nbsp;</label><%# GetDisplayName((MessageStub)Container.DataItem)%></td>
                <td style="text-align:right;"><%# GetTime((MessageStub)Container.DataItem)%></td>
            </tr>
        </ItemTemplate>
        <FooterTemplate>
            </table>
        </FooterTemplate>
    </asp:Repeater>
    <h2 runat="server" id="NoResultsMessage"><%= global::Resources.Strings.NoMessages %></h2>
</div>

<%@ Control Language="C#" AutoEventWireup="True" CodeBehind="ServiceProfileList.ascx.cs" Inherits="IntelArcade.WebApp.UserControls.ServiceProfileList" %>
<asp:Repeater runat="server" ID="ServiceRepeater">
    <HeaderTemplate>
        <table border="0" cellpadding="0" cellspacing="0" style="width:100%;">
    </HeaderTemplate>
    <SeparatorTemplate>
        <tr><td style="border-top:1px solid #cfcfcf;"><br /></td></tr>
    </SeparatorTemplate>
    <ItemTemplate>
            <tr>
                <td style="padding-bottom:10px;">
                    <div style="clear:both;">
                        <div style="width:75px;float:left;margin-right:5px;"><img style="<%# GetProviderImageStyle(Container.DataItem) %>" src="<%# GetProviderImageUrl(Container.DataItem) %>" alt="" title="<%# GetProviderName(Container.DataItem) %>" /></div>
                        <div style="padding-left:5px;">
                            <span><b><%# GetSubject(Container.DataItem) %></b></span><span style="float:right;"><i><%# GetProviderName(Container.DataItem) %></i></span>
                            <span><h1 style="padding-bottom:4px;" ><%#GetTitle(Container.DataItem)%></h1></span>
                            <iac:RatingSummary ID="ProviderRating" DisplayBlock="false" ShowTotal="false" runat="server" Feedback="<%# GetFeedback(Container.DataItem) %>" />
                            <%#GetSummary(Container.DataItem)%>
                        </div>
                    </div>
                </td>
            </tr>
            <table><tr><td>
    <iac:ProfileFlagRenderer runat="server" ID="ServiceFlags" OnClientCommand="_iac_OnProfileFlagCommmand"  SuppressUserFlags="true"  Mode="Text" UserFlags="None"  ProviderID="<%# GetProviderID(Container.DataItem) %>" ServiceProfileID="<%# GetServiceProfileID(Container.DataItem) %>" /></td></tr></table>
    </ItemTemplate>
    <FooterTemplate>
        </table>
    </FooterTemplate>
</asp:Repeater>
<h2 runat="server" id="NoResultMessage">There are no results available</h2>
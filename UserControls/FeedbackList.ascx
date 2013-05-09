<%@ Control Language="C#" AutoEventWireup="True" CodeBehind="FeedbackList.ascx.cs" Inherits="IntelArcade.WebApp.UserControls.FeedbackList" %>
<asp:Repeater runat="server" ID="FeedbackRepeater">
    <HeaderTemplate>
        <table border="0" cellpadding="0" cellspacing="0" style="width:100%;">
    </HeaderTemplate>
    <SeparatorTemplate>
        <tr>
            <td >
                <tr><td colspan="2" style="border-top:1px solid #cfcfcf;"><br /></td></tr>
            </td>
        </tr>
    </SeparatorTemplate>
    <ItemTemplate>
        <iac:ProxyRenderer runat="server" ID="ProviderName" Data="<%#Container.DataItem%>" OnProxyRender="ProviderName_ProxyRender" />
        <tr>
            <td style="vertical-align:top;"><table style="margin-left:auto;margin-right:auto;"><tr><td><iac:RatingSummary ID="RatingSummary" DisplayBlock="false" runat="server" /></td></tr></table></td>
        </tr>        
        <tr>
            <td style="vertical-align:top;" ><div style="width:100%;padding:5px;color:#9f9f9f;" ><%#GetComments((IntelArcade.Common.Feedback)Container.DataItem)%></div></td>
        </tr>
        <tr><td style="padding-top:5px;padding-bottom:10px;"><i>Submitted by</i>&nbsp;<b><%# ((IntelArcade.Common.Feedback)Container.DataItem).SubmittingUserDisplayName%></b>&nbsp;<i>on</i>&nbsp;<b><%#GetDate((IntelArcade.Common.Feedback)Container.DataItem)%></b></td></tr>
    </ItemTemplate>
    <FooterTemplate>
        </table>
    </FooterTemplate>
</asp:Repeater>
<h2 runat="server" id="NoResultMessage">There is no feedback available</h2>

<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="FeedbackSummaryList.ascx.cs" Inherits="IntelArcade.WebApp.UserControls.FeedbackSummaryList" %>
<asp:Repeater runat="server" ID="FeedbackRepeater">
    <HeaderTemplate>
        <table border="0" cellpadding="0" cellspacing="0" style="width:100%;">
    </HeaderTemplate>
    <SeparatorTemplate>
        <tr><td style="border-top:1px solid #cfcfcf;"><br /></td></tr>
    </SeparatorTemplate>
    <ItemTemplate>        
            <tr>
                <td>
                    <label><%#GetCategoryParent((IntelArcade.Common.IFeedbackSummary)Container.DataItem)%></label>
                </td>
            </tr>
            <tr>
                <td><h1><%#GetCategoryName((IntelArcade.Common.IFeedbackSummary)Container.DataItem)%></h1></td>
            </tr>
            <tr>
                <td style="padding-top:10px;padding-bottom:15px;">
                    <table style="margin-left:auto;margin-right:auto;"><tr><td><iac:RatingSummary ID="RatingSummary" ShowTotal="true" runat="server" /></td></tr></table>                    
                </td>
            </tr>
    </ItemTemplate>
    <FooterTemplate>
        </table>
    </FooterTemplate>
</asp:Repeater>
<h2 runat="server" id="NoResultMessage">There is no feedback available</h2>
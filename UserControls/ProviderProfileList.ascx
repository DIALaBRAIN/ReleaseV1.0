<%@ Control Language="C#" AutoEventWireup="True" CodeBehind="ProviderProfileList.ascx.cs" Inherits="IntelArcade.WebApp.UserControls.ProviderProfileList" %>
<asp:Repeater runat="server" ID="ProviderProfileRepeater">
    <HeaderTemplate>
        <table border="0" cellpadding="0" cellspacing="0" style="width:100%;">
    </HeaderTemplate>
    <SeparatorTemplate>
        <tr><td style="border-top:1px solid #cfcfcf;"><br /></td></tr>
    </SeparatorTemplate>
    <ItemTemplate>        
            <tr>
                <td>
                    <div style="clear:both;">
                        <div style="width:75px;float:left;margin-right:5px;"><img style="<%# GetProviderImageStyle(Container.DataItem) %>" src="<%# GetProviderImageUrl(Container.DataItem) %>" alt="" title="<%# GetProviderName(Container.DataItem) %>" /></div>
                        <div style="padding-left:5px;">
                            <h1 style="padding-bottom:4px;" ><%#GetProviderName(Container.DataItem)%></h1>
                            <iac:RatingSummary ID="ProviderRating" DisplayBlock="false" ShowTotal="false" runat="server" Feedback="<%# GetFeedback(Container.DataItem) %>" />
                            <%#GetProviderSummary(Container.DataItem)%>
                        </div>
                    </div>
                </td>
            </tr>
    </ItemTemplate>
    <FooterTemplate>
        </table>
    </FooterTemplate>
</asp:Repeater>
<h2 runat="server" id="NoResultMessage">There are no results available</h2>
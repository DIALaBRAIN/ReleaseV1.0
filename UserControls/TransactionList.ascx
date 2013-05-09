 <%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TransactionList.ascx.cs"
    Inherits="IntelArcade.WebApp.UserControls.TransactionList" %>
<%@ Import Namespace="IntelArcade.Common" %>
<div>
    <asp:Repeater runat="server" ID="Repeater" EnableViewState="false">
        <HeaderTemplate>
            <table border="0" cellpadding="0" cellspacing="0" style="width:100%;" >
            <tr>
            <td style="text-align:left;border-bottom:1px solid #828282;"><span style="display:inline-block;width:75px;">Date</span></td>
            <td style="text-align:left;border-bottom:1px solid #828282;width:100%;">Description</td>
            <td style="text-align:right;border-bottom:1px solid #828282;"><span style="display:inline-block;width:75px;">In</span></td>
            <td style="text-align:right;border-bottom:1px solid #828282;"><span style="display:inline-block;width:75px;">Out</span></td>
            <td style="text-align:right;border-bottom:1px solid #828282;"><span style="display:inline-block;width:75px;">Balance</span></td>
            </tr>
        </HeaderTemplate>
        <SeparatorTemplate>
            <tr>
                <td style="width: 100%;border-bottom:1px solid #cfcfcf;" colspan="5" />
            </tr>
        </SeparatorTemplate>
        <ItemTemplate>
            <tr>
                <td style="padding-top:5px;">
                   <%# GetDate((IntelArcade.Common.Accounts.AccountEntry)Container.DataItem)%>
                </td>
                 <td style="padding-top:5px;">
                    <%# GetDescription((IntelArcade.Common.Accounts.AccountEntry)Container.DataItem)%>
                </td>
                <td style="text-align:right;padding-top:5px;">
                        <%# GetCredit((IntelArcade.Common.Accounts.AccountEntry)Container.DataItem)%>
                </td>
                <td style="text-align:right;padding-top:5px;">
                    <%# GetDebit((IntelArcade.Common.Accounts.AccountEntry)Container.DataItem)%>
                </td>
                <td style="text-align:right;padding-top:5px;">
                    <%# GetBalance((IntelArcade.Common.Accounts.AccountEntry)Container.DataItem)%>
                </td>
            </tr>
            <tr style="height:0px">
                <td></td>
                 <td>
                    <a href="#" onclick="<%# GetTransactionNavUrl((IntelArcade.Common.Accounts.AccountEntry)Container.DataItem)%>"><%# GetNavLink((IntelArcade.Common.Accounts.AccountEntry)Container.DataItem)%></a>
                    <i><%# GetReference((IntelArcade.Common.Accounts.AccountEntry)Container.DataItem)%></i>
                </td>
                <td colspan="3"></td>
            </tr>
        </ItemTemplate>
        <FooterTemplate>
            </table>
        </FooterTemplate>
    </asp:Repeater>
    <span runat="server" id="NoResultsMessage"><%= global::Resources.Strings.NoTransactions %></span>
</div>

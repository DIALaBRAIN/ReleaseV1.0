<%@ Control Language="C#" AutoEventWireup="True" CodeBehind="WorkHistoryList.ascx.cs"
    Inherits="IntelArcade.WebApp.UserControls.WorkHistoryList" %>
<asp:Repeater runat="server" ID="WorkHistoryRepeater">
    <HeaderTemplate>
        <table border="0" cellpadding="0" cellspacing="0">
    </HeaderTemplate>
    <SeparatorTemplate>
        <tr><td colspan="2" style="border-top:1px solid #cfcfcf;"><br /></td></tr>
    </SeparatorTemplate>
    <ItemTemplate>
            <tr>
                <td colspan="2" style="width: 100%; padding-left: 5px;">
                    <div>
                        <h1><%# ((IntelArcade.Common.WorkHistoryItem)Container.DataItem).EmployerName%></h1>
                    </div>
                </td>
            </tr>
            <tr>                
                <td style="padding-left:5px;">
                    <div style="padding-top:4px;">
                        <h3><%# GetCountry(((IntelArcade.Common.WorkHistoryItem)Container.DataItem).CountryCode)%></h3>
                    </div>
                </td>
                <td style="vertical-align: top;text-align:right;" rowspan="3">
                    <img src="/images/Net-Presence---Company.png" alt="" style="width: 50px; height: 50px;" />
                </td>
            </tr>
            <tr style="vertical-align:top;">
                <td style="width: 100%; padding-left: 5px;">
                    <div>Employed from <b><%#GetDate(((IntelArcade.Common.WorkHistoryItem)Container.DataItem).FromDate)%></b> to
                         <b><%#GetDate(((IntelArcade.Common.WorkHistoryItem)Container.DataItem).ToDate)%></b> as
                        <b><%# ((IntelArcade.Common.WorkHistoryItem)Container.DataItem).RoleName%></b>
                    </div>
                </td>
            </tr>
            <tr>
                <td style="padding-left:5px;padding-bottom:10px;">
                    <p><span><%# ((IntelArcade.Common.WorkHistoryItem)Container.DataItem).RoleDescription%></span></p>
                </td>
            </tr>
            <tr>
                <td style="padding-left:5px;padding-bottom:10px;" colspan="2">
                    <p><span><%# ((IntelArcade.Common.WorkHistoryItem)Container.DataItem).Notes%></span></p>
                </td>
            </tr>
    </ItemTemplate>
    <FooterTemplate>
        </table>
    </FooterTemplate>
</asp:Repeater>
<h2 runat="server" id="NoResultMessage">There is no work history available</h2>
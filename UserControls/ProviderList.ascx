<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ProviderList.ascx.cs" Inherits="IntelArcade.WebApp.UserControls.ProviderList" %>
<asp:Repeater runat="server" ID="ProviderRepeater">
    <HeaderTemplate>    
    </HeaderTemplate>
    <SeparatorTemplate>
    </SeparatorTemplate>
    <ItemTemplate>
        <div class="simpleRptItem">
            <div class="itemBody">
                <div class="inner">
                    <table cellpadding="0" cellspacing="0" style="width: 100%;">
                        <tr>
                            <td style="background-color:#f5f5f5; width:50px" rowspan="3"><img style="width:50px;height:50px;" src="<%# GetImagePath(Container.DataItem) %>" alt="" class="leftImage" /></td>
                            <td style="text-align: left; white-space: nowrap; background-color: #f5f5f5; width:100%">
                                <label>Name:</label>&nbsp;<iac:NotImp ID="NotImp4" Mode="NiceToHave" runat="server"><%# ((IntelArcade.Common.ProviderProfile)Container.DataItem).DisplayName %></iac:NotImp> 
                             </td>
                        </tr>
                        <tr>
                            <td style="text-align:left;white-space:nowrap;background-color:#f5f5f5;"><iac:NotImp ID="NotImp1" runat="server" Mode="NoUIRequired">Remove</iac:NotImp></td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </ItemTemplate>
    <FooterTemplate>
    </FooterTemplate>
</asp:Repeater>

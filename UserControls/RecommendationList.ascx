<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="RecommendationList.ascx.cs" Inherits="IntelArcade.WebApp.UserControls.RecommendationList" %>
 <div class="<%=CssClass%>">
    <asp:Repeater runat="server" ID="RecommendationRepeater">
        <HeaderTemplate>
            <table>
        </HeaderTemplate>
        <SeparatorTemplate>
            <tr><td colspan="3"><hr /></td></tr>        
        </SeparatorTemplate>
        <ItemTemplate>
            <tr>
                <td rowspan="2" style="padding-right:5px;vertical-align:top;"><img alt="" style="border:0px;width:48px;height:48px;" src="../images/recommendation128x.gif" /></td>
                <td style="width:100%;"><%# ((IntelArcade.Common.Recommendation)Container.DataItem).Description %></td>
            </tr>
            <tr>
                <td><b><%# ((IntelArcade.Common.Recommendation)Container.DataItem).DisplayName%></b></td>
                <td style="text-align:right;"><b><%# ((IntelArcade.Common.Recommendation)Container.DataItem).CreatedDate.ToString("d")%></b></td>
            </tr>
        </ItemTemplate>
        <FooterTemplate>
            </table>
        </FooterTemplate>
    </asp:Repeater>
</div>
<iac:PageableItemProxy runat="server" ID="PageingProxy" />
<tel:RadDataPager ID="Pager" runat="server" PagedControlID="PageingProxy">
    <Fields>
    <tel:RadDataPagerButtonField FieldType="FirstPrev" FirstButtonText="<%$Resources:Buttons,First%>" PrevButtonText="<%$Resources:Buttons,Previous%>" />
    <tel:RadDataPagerButtonField FieldType="Numeric" PageButtonCount="10" />
    <tel:RadDataPagerButtonField FieldType="NextLast" NextButtonText="<%$Resources:Buttons,Next%>" LastButtonText="<%$Resources:Buttons,Last%>" />
    </Fields>
</tel:RadDataPager>

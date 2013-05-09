<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="RequestedServiceList.ascx.cs"
    Inherits="IntelArcade.WebApp.UserControls.RequestedServiceList" %>
<asp:UpdatePanel runat="server" UpdateMode="Conditional">
    <ContentTemplate>
        <asp:Repeater runat="server" ID="requestedServices">
            <ItemTemplate>
                <table width="100%">
                    <tr>
                        <td width="35px">
                            <img src="../images/providerOnline-32x.png" />
                        </td>
                        <td style="vertical-align: top; padding-left: 5px;">
                            <label>
                                <%# GetCategoryName(Container.DataItem)%></label><br />
                            <span>
                                <%# GetNote(Container.DataItem) %></span>
                        </td>
                        <td valign="top">
                            <span title="Remove" class="removeItem" style="float: right;">
                                <asp:LinkButton ID="LinkButton1" runat="server" CommandName="remove" CommandArgument='<%# GetRequestServiceID(Container.DataItem) %>'></asp:LinkButton>
                            </span>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:Repeater>
        <h2 runat="server" id="NoResultsMessage">
    <%= global::Resources.Strings.NoResults%></h2>
        <iac:PageableItemProxy runat="server" ID="PageingProxy" />
        <tel:RadDataPager ID="Pager" runat="server" PagedControlID="PageingProxy">
            <Fields>
                <tel:RadDataPagerButtonField FieldType="FirstPrev" FirstButtonText="<%$Resources:Buttons,First%>"
                    PrevButtonText="<%$Resources:Buttons,Previous%>" />
                <tel:RadDataPagerButtonField FieldType="Numeric" PageButtonCount="10" />
                <tel:RadDataPagerButtonField FieldType="NextLast" NextButtonText="<%$Resources:Buttons,Next%>"
                    LastButtonText="<%$Resources:Buttons,Last%>" />
            </Fields>
        </tel:RadDataPager>
    </ContentTemplate>
</asp:UpdatePanel>

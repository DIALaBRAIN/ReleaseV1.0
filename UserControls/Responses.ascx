<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Responses.ascx.cs" Inherits="IntelArcade.WebApp.UserControls.Responses" %>
<h2>
    Responses</h2>
<tel:RadListView runat="server" ID="ListView1" AllowPaging="true">
    <ItemTemplate>
        <div style="padding-top:10px;">
            <table width="100%">
                <tr>
                    <td valign="top" width="125px">
                        <img src='<%# GetUserPhotoUrl(Container.DataItem) %>' style='<%# GetImageStyle(Container.DataItem) %>' />
                    </td>
                    <td valign="top" style="padding-left: 10px;">
                        <span class="deleteButton" style="float: right;">
                            <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Remove" CommandArgument='<%# GetResponseServiceID(Container.DataItem)%>'></asp:LinkButton>
                        </span>
                        <label>
                            <%# GetUserDisplayName(Container.DataItem) %></label>
                        <div>
                            <asp:LinkButton runat="server" ID="btnService" CommandName="Select" Text=' <%# GetServiceTitle(Container.DataItem) %>'
                                CommandArgument='<%# GetResponseServiceID(Container.DataItem)  %>'></asp:LinkButton>
                        </div>
                        <div>
                            <%#GetServiceSummary(Container.DataItem) %>
                        </div>
                    </td>
                </tr>
            </table>
        </div>
    </ItemTemplate>
</tel:RadListView>
<tel:RadDataPager ID="Pager" runat="server" PagedControlID="ListView1" PageSize="10">
    <Fields>
        <tel:RadDataPagerButtonField FieldType="FirstPrev" FirstButtonText="<%$Resources:Buttons,First%>"
            PrevButtonText="<%$Resources:Buttons,Previous%>" />
        <tel:RadDataPagerButtonField FieldType="Numeric" PageButtonCount="10" />
        <tel:RadDataPagerButtonField FieldType="NextLast" NextButtonText="<%$Resources:Buttons,Next%>"
            LastButtonText="<%$Resources:Buttons,Last%>" />
    </Fields>
</tel:RadDataPager>

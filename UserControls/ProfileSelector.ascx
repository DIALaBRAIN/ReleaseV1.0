<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ProfileSelector.ascx.cs"
    Inherits="IntelArcade.WebApp.UserControls.ProviderProfileSelector" %>
<%@ Register Src="ServiceProfileSelector.ascx" TagName="ServiceProfileSelector" TagPrefix="uc1" %>
<div style="width: 490px">
    Search
<%--    <iac:SearchTypeList runat="server" ID="SearchTypeList" Style="margin-right: 5px;" />--%>
    <asp:TextBox runat="server" ID="tbSearchText" Width="250px" />
    <asp:ImageButton runat="server" ID="btnSearch" ImageUrl="~/images/button_search.png"
        ImageAlign="Right" />
</div>
<div>
    <asp:Repeater runat="server" ID="reServiceProfileList">
        <ItemTemplate>
            <div>
                <table>
                    <tr>
                        <td style="vertical-align: top; width: 100px;">
                            <img id="DispalyImage" runat="server" src='<% #GetImageUrl((IntelArcade.Common.ImageStub)Eval("ProviderImage")) %>'
                                style='<% #GetImageStyle((IntelArcade.Common.ImageStub)Eval("ProviderImage")) %>' />
                        </td>
                        <td style="vertical-align: top;">
                            <h4>
                                <%# Eval("ProviderDisplayName") %></h4>
                            <div><%# Eval("Title")%></div>
                            <asp:LinkButton ID="btnAddProvider" OnCommand="btnAddProvider_Command" runat="server"
                                CommandArgument='<%# Eval("ProviderUserID")+"|"+Eval("ServiceProfileID") %>' Text="Add" Visible='<%# IsAddButtonVisible((IntelArcade.Common.ServiceIdentifier)Eval("ServiceProfileID")) %>'></asp:LinkButton>
                        </td>
                    </tr>
                </table>
            </div>
        </ItemTemplate>
    </asp:Repeater>
</div>
<asp:Repeater ID="reProviderProfileList" runat="server">
    <ItemTemplate>
        <div>
            <table>
                <tr>
                    <td style="vertical-align: top; width: 100px;">
                        <img id="DispalyImage" runat="server" src='<% #GetImageUrl((IntelArcade.Common.ImageStub)Eval("UserPhotoThumbnail")) %>'
                            style='<% #GetImageStyle((IntelArcade.Common.ImageStub)Eval("UserPhotoThumbnail")) %>' />
                    </td>
                    <td style="vertical-align: top;">
                        <%# Eval("ProviderDisplayName") %>
                        <asp:LinkButton ID="btnAddProvider" OnCommand="btnAddProvider_Command" runat="server"
                            CommandArgument='<%# Eval("ProviderIdentifier") %>' Text="Add" Visible='<%# IsAddButtonVisible((IntelArcade.Common.ProviderIdentifier)Eval("ProviderIdentifier")) %>'></asp:LinkButton>
                    </td>
                </tr>
            </table>
        </div>
    </ItemTemplate>
</asp:Repeater>
<div>
    <iac:PageableItemProxy runat="server" ID="PageingProxy" />
    <iac:DataPager runat="server" ID="Pager" PagedControlID="PageingProxy" />
</div>

<%@ Page Title="" Language="C#" MasterPageFile="~/StandardMaster.master" AutoEventWireup="true" CodeBehind="BlockedUsers.aspx.cs" Inherits="IntelArcade.WebApp.MemberPages.BlockedUsers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
    <h2 style="font-size:1.2em"><%=PageTitle %></h2>
    <asp:Repeater runat="server" ID="AppointmentRepeater">
        <HeaderTemplate>                
        </HeaderTemplate>
        <SeparatorTemplate></SeparatorTemplate>
        <ItemTemplate>
            <div class="simpleRptItem">
                <div class="itemBody">
                    <div class="inner">
                        <table cellpadding="0" cellspacing="0" style="width:100%;" >
                            <tr>
                                <td rowspan="3"><img style="width:50px;height:50px;" src="/images/block-48.png" alt="" class="leftImage" /></td><br/>
                                <td style="text-align:left;white-space:nowrap;width:100%;line-height:25px"><h1><%# GetUsername(Container.DataItem) %></h1></td>
                            </tr>
                            <tr>
                                <td style="text-align:left;white-space:nowrap;line-height:25px"><label>Blocked On:</label>&nbsp;<%# GetBlockedDate(Container.DataItem) %></td>
                            </tr>
                            <tr>
                                <td style="text-align:left;white-space:nowrap;" class="smallButton"><asp:LinkButton runat="server" ID="RemoveLink" Text="Unblock" CommandName="Delete" OnCommand="EditLink_Command"  CommandArgument='<%# ((IntelArcade.Common.BlockedUser)Container.DataItem).ID%>' ><%--<asp:Image ID="unblock_image" runat="server" ImageUrl="~/images/btn_unblock.png" />--%></asp:LinkButton></td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </ItemTemplate>
        <FooterTemplate>
        </FooterTemplate>
    </asp:Repeater>
    <iac:PageableItemProxy runat="server" ID="PageingProxy" />
    <iac:DataPager ID="Pager" runat="server" PagedControlID="PageingProxy" >
        <Fields>
            <tel:RadDataPagerButtonField FieldType="FirstPrev" FirstButtonText="<%$Resources:Buttons,First%>" PrevButtonText="<%$Resources:Buttons,Previous%>" />
            <tel:RadDataPagerButtonField FieldType="Numeric" PageButtonCount="10" />
            <tel:RadDataPagerButtonField FieldType="NextLast" NextButtonText="<%$Resources:Buttons,Next%>" LastButtonText="<%$Resources:Buttons,Last%>" />
        </Fields>
    </iac:DataPager>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentRightAbove" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentRightBelow" runat="server">
</asp:Content>

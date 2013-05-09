<%@ Control Language="C#" AutoEventWireup="True" CodeBehind="NoteList.ascx.cs" Inherits="IntelArcade.WebApp.UserControls.NoteList" %>
    <asp:Repeater runat="server" ID="NoteRepeater">
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
                            <td>
                               <label> Note:</label>&nbsp;<%# ((IntelArcade.Common.Note)Container.DataItem).NoteText %>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align:left;white-space:nowrap;background-color:#f5f5f5;"><asp:LinkButton runat="server" ID="RemoveLink" CommandName="Delete" OnCommand="EditLink_Command" Text="Delete" CommandArgument='<%# ((IntelArcade.Common.Note)Container.DataItem).NoteIdentifier%>' /></td>
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
<tel:RadDataPager ID="Pager" runat="server" PagedControlID="PageingProxy">
    <Fields>
        <tel:RadDataPagerButtonField FieldType="FirstPrev" FirstButtonText="<%$Resources:Buttons,First%>" PrevButtonText="<%$Resources:Buttons,Previous%>" />
        <tel:RadDataPagerButtonField FieldType="Numeric" PageButtonCount="10" />
        <tel:RadDataPagerButtonField FieldType="NextLast" NextButtonText="<%$Resources:Buttons,Next%>" LastButtonText="<%$Resources:Buttons,Last%>" />
    </Fields>
</tel:RadDataPager>

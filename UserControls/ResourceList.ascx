<%@ Control Language="C#" AutoEventWireup="True" CodeBehind="ResourceList.ascx.cs" Inherits="IntelArcade.WebApp.UserControls.ResourceList" %>
    <div class="rptHeader">
        <div style="width:inherit;padding:5px;">
            <label>Filter:</label>&nbsp;
            <asp:DropDownList runat="server" ID="FilterList"  AutoPostBack="true" 
                OnSelectedIndexChanged="FilterList_SelectedIndexChanged">
                <asp:ListItem Value="-1" Text="All" />
                <asp:ListItem Value="1" Text="Documents" />
                <asp:ListItem Value="4" Text="Video" />
            </asp:DropDownList>        
        </div>
    </div>
    <asp:Repeater runat="server" ID="ResourceRepeater">
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
                            <td style="text-align:left;white-space:nowrap;background-color:#f5f5f5;"><label>Title:</label>&nbsp;<a href=""><%# ((IntelArcade.Common.Resource)Container.DataItem).Title %></a></td>
                        </tr>
                        <tr>
                            <td>
                               <label> Price:</label>&nbsp;<%# ((IntelArcade.Common.Resource)Container.DataItem).Price.Value.ToString("c") %></td>
                        </tr>
                         <tr>
                            <td style="text-align:left;white-space:nowrap;background-color:#f5f5f5;">&nbsp;</td>
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

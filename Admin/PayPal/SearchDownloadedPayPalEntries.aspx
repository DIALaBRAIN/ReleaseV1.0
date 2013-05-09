<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true"
    CodeBehind="SearchDownloadedPayPalEntries.aspx.cs" Inherits="IntelArcade.WebApp.Admin.PayPal.SearchDownloadedPayPalEntries" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
    <iac:FieldSet runat="server" ID="FieldSet1" Title="Search Downloaded PayPal Entries"
        class="formData">
        <div style="border-top: 1px solid #cfcfcf; padding: 5px 0px 5px 0;">
            <div style="padding: 20px;">
                <span>Start Date</span>
                <tel:RadDatePicker runat="server" ID="startDate">
                </tel:RadDatePicker>
                <span>End Date</span>
                <tel:RadDatePicker runat="server" ID="endDate">
                </tel:RadDatePicker>
                <span>Confirmed</span>
                <asp:DropDownList runat="server" ID="ddConfirmed">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem Text="Yes" Value="1"></asp:ListItem>
                    <asp:ListItem Text="No" Value="0"></asp:ListItem>
                    <asp:ListItem Text="Rejected" Value="2"></asp:ListItem>
                </asp:DropDownList>
                <span>Currency</span>
                <iac:CurrencyDropDown runat="server" ID="ddCurrency"  AllowCustomText="false">
   <Items><telerik:RadComboBoxItem Text="Select" Selected="true"/></Items></iac:CurrencyDropDown >
                &nbsp;
                <asp:LinkButton runat="server" Text="Search" ID="btnSearch"></asp:LinkButton>
            </div>
            <div runat="server" id="searchResult" visible="false">
                <tel:RadGrid runat="server" ID="resultGrid" >
                    <MasterTableView AutoGenerateColumns="false">
                        <Columns>
                            <tel:GridBoundColumn DataField="PayPalUploadEntryID" HeaderText="ID">
                            </tel:GridBoundColumn>
                            <tel:GridBoundColumn DataField="RecipientID" HeaderText="User">
                            </tel:GridBoundColumn>
                            <tel:GridBoundColumn DataField="Payment" HeaderText="Amount" DataFormatString="{0:F2}">
                            </tel:GridBoundColumn>
                            <tel:GridBoundColumn DataField="Currency" HeaderText="Currency">
                            </tel:GridBoundColumn>
                            <tel:GridBoundColumn DataField="Confirmed" HeaderText="Confirmed">
                            </tel:GridBoundColumn>
                        </Columns>
                    </MasterTableView>
                </tel:RadGrid>
                <br />
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
            </div>
        </div>
    </iac:FieldSet>
</asp:Content>

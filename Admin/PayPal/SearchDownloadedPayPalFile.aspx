<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true"
    CodeBehind="SearchDownloadedPayPalFile.aspx.cs" Inherits="IntelArcade.WebApp.Admin.PayPal.SearchDownloadedPayPalFile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
    <iac:FieldSet runat="server" ID="FieldSet1" Title="Search Downloaded PayPal File"
        class="formData">
        <div style="border-top: 1px solid #cfcfcf; padding: 5px 0px 5px 0;">
            <div style="padding:20px;">
                <span>Start Date</span>
                <tel:RadDatePicker runat="server" ID="startDate">
                </tel:RadDatePicker>
                <iac:IARequiredFieldValidator runat="server" ControlToValidate="startDate"></iac:IARequiredFieldValidator>
                <span>End Date</span>
                <tel:RadDatePicker runat="server" ID="endDate">
                </tel:RadDatePicker>
                <iac:IARequiredFieldValidator ID="IARequiredFieldValidator1" runat="server" ControlToValidate="endDate"></iac:IARequiredFieldValidator>
                <asp:LinkButton runat="server" Text="Search" ID="btnSearch"></asp:LinkButton>
            </div>
            <div>
                <tel:RadGrid ID="RadGrid1" AllowPaging="false" AllowSorting="true" PageSize="10"
                    runat="server">
                    <MasterTableView AutoGenerateColumns="false">
                        <Columns>
                            <tel:GridHyperLinkColumn DataTextField="SetID" UniqueName="ID" HeaderText="ID" DataNavigateUrlFormatString="~/Admin/PayPal/ReCreatePayPalFile.aspx?ID={0}"
                                DataNavigateUrlFields="SetID">
                            </tel:GridHyperLinkColumn>
                            <tel:GridBoundColumn DataField="EntryUTCTime" UniqueName="Time" HeaderText="Time">
                            </tel:GridBoundColumn>
                        </Columns>
                    </MasterTableView>
                </tel:RadGrid>
            </div>
        </div>
    </iac:FieldSet>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true"
    CodeBehind="SearchPayPalConfirmationSets.aspx.cs" Inherits="IntelArcade.WebApp.Admin.PayPal.SearchPayPalConfirmationSets" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
    <iac:FieldSet runat="server" ID="FieldSet1" Title="Search PayPal Confirmation File" class="formData">
        <div style="border-top: 1px solid #cfcfcf; padding: 5px 0px 5px 0;">
            <div style="margin-top:20px;">
                <span>Start Date</span>
                <tel:RadDatePicker runat="server" ID="startDate">
                </tel:RadDatePicker>
                <iac:IARequiredFieldValidator ID="IARequiredFieldValidator1" runat="server" ControlToValidate="startDate"></iac:IARequiredFieldValidator>
                <span>End Date</span>
                <tel:RadDatePicker runat="server" ID="endDate">
                </tel:RadDatePicker>
                <iac:IARequiredFieldValidator ID="IARequiredFieldValidator2" runat="server" ControlToValidate="endDate"></iac:IARequiredFieldValidator>
                <asp:LinkButton runat="server" Text="Search" ID="btnSearch"></asp:LinkButton>
            </div>
            <tel:RadGrid ID="RadGrid1" AllowPaging="false" AllowSorting="true" PageSize="10"
                runat="server">
                <MasterTableView AutoGenerateColumns="false">
                    <Columns>
                        <tel:GridHyperLinkColumn DataTextField="SetID" UniqueName="ID" HeaderText="ID">
                        </tel:GridHyperLinkColumn>
                        <tel:GridBoundColumn DataField="EntryUTCTime" UniqueName="Time" HeaderText="Time">
                        </tel:GridBoundColumn>
                    </Columns>
                </MasterTableView>
            </tel:RadGrid>
        </div>
    </iac:FieldSet>
</asp:Content>

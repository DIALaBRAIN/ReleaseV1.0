<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true"
    CodeBehind="CommissionRates.aspx.cs" Inherits="IntelArcade.WebApp.Admin.CommissionRates" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
    <iac:FieldSet runat="server" ID="FieldSet1" Title="Commission Rates" class="formData">
        <div style="padding-top: 10px;">
            <tel:RadGrid runat="server" ID="rgCommissionRates">
                <MasterTableView AutoGenerateColumns="false">
                    <Columns>
                        <tel:GridBoundColumn DataField="Name" UniqueName="Name" HeaderText="Name">
                        </tel:GridBoundColumn>
                        <tel:GridBoundColumn DataField="Rate" UniqueName="Rate" HeaderText="Rate" DataFormatString="{0:P1}">
                        </tel:GridBoundColumn>
                    </Columns>
                </MasterTableView>
            </tel:RadGrid>
        </div>
    </iac:FieldSet>
</asp:Content>

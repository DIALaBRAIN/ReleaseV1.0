<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true"
    CodeBehind="CompanyAndIA-TimeFees.aspx.cs" Inherits="IntelArcade.WebApp.Admin.CompanyAndIA_TimeFees" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
    <iac:FieldSet runat="server" ID="FieldSet1" Title="IA Time" class="formData">
        <div style="padding-top: 10px;">
            <tel:RadGrid runat="server" ID="rgIATimes">
                <MasterTableView AutoGenerateColumns="false">
                    <Columns>
                        <tel:GridBoundColumn DataField="Name" UniqueName="Name" HeaderText="Name">
                        </tel:GridBoundColumn>
                        <tel:GridBoundColumn DataField="USD" UniqueName="USD" HeaderText="USD">
                        </tel:GridBoundColumn>
                        <tel:GridBoundColumn DataField="GBP" UniqueName="GBP" HeaderText="GBP">
                        </tel:GridBoundColumn>
                        <tel:GridBoundColumn DataField="EUR" UniqueName="EUR" HeaderText="EUR">
                        </tel:GridBoundColumn>
                    </Columns>
                </MasterTableView>
            </tel:RadGrid>
        </div>
    </iac:FieldSet>
</asp:Content>

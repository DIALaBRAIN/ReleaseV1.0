<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ServiceProfileSelector.ascx.cs"
    Inherits="IntelArcade.WebApp.UserControls.ServiceProfileProfileSelector" %>
<tel:RadGrid runat="server" ID="rgProfileList" AllowPaging="true">
    <MasterTableView AutoGenerateColumns="false">
    <Columns>
        <tel:GridBoundColumn DataField="ProviderDisplayName" UniqueName="ProviderDisplayName" HeaderText="ProviderDisplayName">
        </tel:GridBoundColumn>
    </Columns>
    </MasterTableView>
</tel:RadGrid>
<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true"
    CodeBehind="ReCreatePayPalFile.aspx.cs" Inherits="IntelArcade.WebApp.Admin.PayPal.ReCreatePayPalFile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
    <iac:FieldSet runat="server" ID="FieldSet1" Title="Re-Download PayPal File" class="formData">
        <div style="border-top: 1px solid #cfcfcf; padding: 5px 0px 5px 0;">
            <div>
                <iac:InputContainer runat="server" ID="InputContainer1" Columns="1">
            <item Text="Entries Count"><asp:Label runat="server" ID="lblEntriesCount"></asp:Label></item>
            <item Text="Created Time" ><asp:Label runat="server" ID="lblCreatedTime"></asp:Label></item>
                </iac:InputContainer>
            </div>
            <div>
                <asp:LinkButton runat="server" ID="btnDownloadPayPalFile" Text="Download PayPal File"></asp:LinkButton>
            </div>
        </div>
    </iac:FieldSet>
</asp:Content>

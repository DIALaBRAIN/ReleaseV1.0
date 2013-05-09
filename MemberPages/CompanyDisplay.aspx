<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="CompanyDisplay.aspx.cs"
    MasterPageFile="~/StandardMaster.master" Inherits="IntelArcade.WebApp.CompanyDisplay" %>

<%@ Register Src="../UserControls/AddressView.ascx" TagName="AddressView" TagPrefix="iac" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentBody" runat="server">
    <h2 style="font-size: 1.3em;height:1.5em">
        Business Details</h2>
 <div style=" padding: 5px 0px 5px 0;">
        <iac:ReturnContext ID="ReturnContext1" runat="server" />
           <div class="editButton" style="float: right; margin-top: 40px;">
               <%-- <asp:LinkButton runat="server" Text="" ID="EditCompany" OnCommand="EditLink_Command"
                    CommandName="Edit" CommandArgument='<%# Eval("CompanyID") %>'></asp:LinkButton>--%>
            </div>
    <iac:FieldSet style="margin-top:-5px" runat="server" ID="FieldSet1" Title="Business" class="formData">
        <div style="border-top: 1px solid #cfcfcf; padding: -5px -20px 5px 0;width:102%;height:2px"></div>
            <br />
            <div style="width: 100%; text-align: center; padding-bottom: 10px;">
                <h1>
                    <asp:Label ID="CompanyName" runat="server" /></h1>
            </div>

         
            <iac:InputContainer runat="server" ID="InputContainer2" Columns="1">
            <Item Text="<%$ Resources:Labels,IncorporationNumber%>"><asp:Literal runat="server" ID="IncorporationNumber" /></Item>
            <Item Text="<%$ Resources:Labels,TaxNumber%>">  <asp:Literal ID="TaxNumber" runat="server" /></Item>
            <Item Text="Trading Currency"><asp:Literal ID="Currency" runat="server" /></Item>
            <Item Text="Country for Tax Purposes"><asp:Literal ID="Country" runat="server" /></Item>
            </iac:InputContainer>
     
    </iac:FieldSet></div>
    <div style=" padding: 5px 0px 5px 0;">
      
        <div  style="margin-top:-5px">
        <iac:FieldSet  runat="server" ID="RegisteredAddressContainer" Title="Registered Address<sup></sup>"
            class="formData">
            <div class="editButton" style="float:right; margin-top: 4px;margin-right:-14px">
            <asp:LinkButton runat="server" Text="" ID="EditRegisteredAddress"></asp:LinkButton>
        </div>
             <div style="border-top: 1px solid #cfcfcf; padding: 5px 0px 5px 0;width:102%;height:2px"></div>
            <div style="padding: 5px 0 5px 75px;">
                <iac:AddressView runat="server" ID="RegisteredAddress" />
            </div>
        </iac:FieldSet>

          
        </div>


    </div>
    <div style=" padding: 5px 0px 5px 0;">
        
        <iac:FieldSet  style="margin-top:-5px" runat="server" ID="InvoiceAddressContainer" Title="Invoice Address<sup>1</sup>"
            class="formData">
            <div class="editButton" style="float: right; margin-top: 4px;margin-right:-14px">
            <asp:LinkButton runat="server" Text="" ID="EditInvoiceAddress"></asp:LinkButton>
        </div>
             <div style="border-top: 1px solid #cfcfcf; padding: 5px 0px 5px 0;width:102%;height:2px"></div>
            <div style="padding: 5px 0 5px 75px;">
                <iac:AddressView runat="server" ID="InvoiceAddress" />
            </div>
        </iac:FieldSet>
        <div style="float: right; text-align: right;">
           <%-- <i><sup>1</sup>&nbsp;The Registered Address is required.</i><br />--%>
            <i><sup>1</sup>&nbsp;The Invoice Address is required only if different to the Registered
                Address.</i>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentRightAbove" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentRightBelow" runat="server">
</asp:Content>

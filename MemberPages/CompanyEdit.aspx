<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="CompanyEdit.aspx.cs" MasterPageFile="~/StandardMaster.master" Inherits="IntelArcade.WebApp.CompanyEdit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentBody" runat="server">
    <h2 style="font-size:1.2em">Edit Business Details</h2>
   <iac:FieldSet runat="server" ID="FieldSet1" Title="Business" class="formData" >
   <div style="border-top: 1px solid #cfcfcf; padding: 5px 0px 5px 0;"><br/>
        <iac:InputContainer runat="server" ID="InputContainer1" Columns="1">
            <Item Text="Business Type"><iac:CompanyTypeDropDown runat="server" ID="CompanyType" />&nbsp;<iac:IARequiredFieldValidator runat="server" ID="rfvalCompanyType" ControlToValidate="CompanyType" RenderAsBlockElement="false" /></Item>
            <Item Text="Company Name"><asp:TextBox runat="server" ID="CompanyName" Width="350px" />&nbsp;<asp:CustomValidator ID="cvCompanyName" runat="server" ErrorMessage="Required" ControlToValidate="CompanyName" ValidateEmptyText="true" OnServerValidate="cvCompanyName_ServerValidate" ></asp:CustomValidator>   <%--<iac:IARequiredFieldValidator runat="server" ID="rfvalCompanyName" ControlToValidate="CompanyName" RenderAsBlockElement="false" />--%></Item>
            <Item Text="Trading Name"><asp:TextBox runat="server" ID="TradingName" Width="350px" /></Item>
            <Item Text="<%$ Resources:Labels,IncorporationNumber%>"><asp:TextBox runat="server" ID="IncorporationNumber" Width="350px" /></Item>
            <Item Text="<%$ Resources:Labels,TaxNumber%>"><asp:TextBox runat="server" ID="TaxNumber" Width="350px" /></Item>
            <Item Text="Trading Currency"><iac:CurrencyDropDown runat="server" ID="Currency" Enabled="false" Width="200px" AllowCustomText="false"><Items><telerik:RadComboBoxItem Text="Select" Selected="true"/></Items></iac:CurrencyDropDown >&nbsp;<iac:IARequiredFieldValidator InitialValue="Select" runat="server" ID="rfvalCurrency" ControlToValidate="Currency" RenderAsBlockElement="false" /></Item>
            <Item Text="Country for Tax Purposes"><iac:CountryDropDown runat="server" ID="Country" Enabled="false"  MaxHeight="200px" Width="200px" ><Items><telerik:RadComboBoxItem Text="Select" Selected="true"/></Items></iac:CountryDropDown>&nbsp;<iac:IARequiredFieldValidator InitialValue="Select" runat="server" ID="rfvalCountry" ControlToValidate="Country" RenderAsBlockElement="false" /></Item>
            <Item Text=""><br /></Item>
            <Item Text="Business Profile"><asp:TextBox runat="server" ID="Description" Width="350px" TextMode="MultiLine" Rows="8" /></Item>
       </iac:InputContainer>
       </div>
    </iac:FieldSet>
<div style="float:left;padding-left:200px;"><table ><tr><td class="updateButton"><asp:LinkButton ID="SubmitButton" runat="server" Text=""></asp:LinkButton></td><%--<asp:ImageButton runat="server" ID="SubmitButton" ImageUrl="~/images/btn_create.png" />--%>&nbsp;<td title="Cancel" class="cancelButton" style="padding-left: 10px;"><%--<asp:ImageButton runat="server" ID="CancelButton" CausesValidation="false" ImageUrl="~/images/btn_cancel.png" />--%><asp:LinkButton ID="CancelButton" runat="server" Text="" CausesValidation="false"></asp:LinkButton></td></tr></table></div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentRightAbove" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentRightBelow" runat="server">
</asp:Content>

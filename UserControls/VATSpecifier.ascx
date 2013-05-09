<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="VATSpecifier.ascx.cs" Inherits="IntelArcade.WebApp.UserControls.VATSpecifier" %>
<div>
    <iac:IACheckBox runat="server" ID="VATRequired" AutoPostBack="true"  Text="This item attracts VAT / Tax" /><br />
    <div runat="server" id="RateInputPanel"><label style="padding-right:5px;">VAT / Tax Rate:</label><iac:PercentageEditBox runat="server" ID="VATRate" Width="70px" />&nbsp;<iac:IARequiredFieldValidator runat="server" ID="rfvalResourceType" ControlToValidate="VATRate" RenderAsBlockElement="false" /></div>
</div>
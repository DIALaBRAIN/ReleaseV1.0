<%@ Page Title="" Language="C#" MasterPageFile="~/StandardMaster.master" AutoEventWireup="true" CodeBehind="UserTaxDetailsEdit.aspx.cs" Inherits="IntelArcade.WebApp.MemberPages.UserTaxDetailsEdit" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
    <script language="javascript">
        function TaxNumberValidate(sender, args) {
            if (args.Value != "") {
                if (document.getElementById('<%= taxName.ClientID %>').value == "") {
                    args.IsValid = false;
                }
            }
        }
    </script>

<h2><%=PageTitle %></h2>

   <iac:FieldSet runat="server" ID="FieldSet1" Title="TaxDetails" class="formData" >
        <div style="border-top: 1px solid #cfcfcf; padding: 5px 0px 5px 0;"><br/>
        <iac:InputContainer runat="server" ID="InputContainer1" Columns="1">
            <Item Text="<%$ Resources:Labels,Country%>"><iac:CountryDropDown runat="server" ID="drpCountry" Enabled="false" MaxHeight="200px" Width="205px" ><Items><telerik:RadComboBoxItem Text="Select" Selected="true"/></Items></iac:CountryDropDown>&nbsp;<iac:IARequiredFieldValidator InitialValue="Select" runat="server" ID="rfvalCountry" ControlToValidate="drpCountry" RenderAsBlockElement="false" /></Item>
            <Item Text="Tax" ><tel:RadComboBox ID="taxName" runat="server" MaxLength=5 AllowCustomText="true"  Width="205px"></tel:RadComboBox>&nbsp;<asp:CustomValidator ID="CustomValidator1" runat="server" ClientValidationFunction="TaxNumberValidate" ControlToValidate="TaxNumber" ErrorMessage="Required"></asp:CustomValidator></Item>
            <Item Text="<%$ Resources:Labels,TaxNumber%>" ><asp:TextBox runat="server" ID="TaxNumber" Width="200px" /></Item>
       </iac:InputContainer>
    </div>
    </iac:FieldSet>
<div style="float:left;padding-left:135px;margin-top:-40px"><table class="updateButton"><tr><td><asp:LinkButton ID="SubmitButton" runat="server" Text=""></asp:LinkButton></td>&nbsp;<td width="50px" align="right"><span class="cancelButton"><asp:LinkButton ID="CancelButton" runat="server" Text="" CausesValidation="false"/></span></td></tr></table></div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentRightAbove" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentRightBelow" runat="server">
</asp:Content>

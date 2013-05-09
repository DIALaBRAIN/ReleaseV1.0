<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="AddressEdit.aspx.cs" MasterPageFile="~/StandardMaster.master"
    Inherits="IntelArcade.WebApp.AddressEdit" ValidateRequest="false"  %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentBody" runat="server">
    <h2 style="font-size: 1.2em">
        <%=PageTitle %></h2>
    <iac:FieldSet runat="server" ID="FieldSet1" Title="Edit Address" class="formData">
        <div style="border-top: 1px solid #cfcfcf; padding: 5px 0px 5px 0;">
            <br />
            <iac:InputContainer runat="server" ID="InputContainer1" Columns="1">
<%--<Item Text="Address Line 1">  <asp:TextBox ID="txtAddressLine1" runat="server" /></Item>
<Item Text="Address Line 2">  <asp:TextBox ID="txtAddressLine2" runat="server" /></Item>
<Item Text="Town/City">  <asp:TextBox ID="txtCity" runat="server" /></Item>
<Item Text="County/State">  <asp:TextBox ID="txtCounty" runat="server" /></Item>
<Item Text="Post Code/Zip">  <asp:TextBox ID="txtPostCode" runat="server" /></Item>
<Item Text="Phone number">  <asp:TextBox ID="txtPhone" runat="server" /></Item>--%>

<Item Text="<%$ Resources:Labels,AddressLine1%>"><iac:TextBox runat="server" ID="txtAddressLine1" Width="350px" ></iac:TextBox>&nbsp;<iac:IARequiredFieldValidator runat="server" ValidationGroup="Register" ID="rfvalAddressLine1" ControlToValidate="txtAddressLine1" RenderAsBlockElement="false" /></Item>
<Item Text="<%$ Resources:Labels,AddressLine2%>"><iac:TextBox runat="server" ID="txtAddressLine2" Width="350px" ></iac:TextBox></Item>
<Item Text="<%$ Resources:Labels,AddressLine3%>"><iac:TextBox runat="server" ID="txtAddressLine3" Width="350px" ></iac:TextBox></Item>
<Item Text="<%$ Resources:Labels,City%>"><iac:TextBox runat="server" ID="txtCity" Width="350px" ></iac:TextBox>&nbsp;<iac:IARequiredFieldValidator runat="server" ID="rfvalCity" ValidationGroup="Register" ControlToValidate="txtCity" RenderAsBlockElement="false" /></Item>
<Item Text="County/State">  <iac:TextBox ID="txtCounty" runat="server" ></iac:TextBox></Item>
<Item Text="<%$ Resources:Labels,PostCode%>"><iac:TextBox runat="server" ID="txtPostCode" Width="350px" ></iac:TextBox>&nbsp;<iac:IARequiredFieldValidator runat="server" ID="rfvalPostalCode" ValidationGroup="Register" ControlToValidate="txtPostCode" RenderAsBlockElement="false" /></Item>
<Item Text="<%$ Resources:Labels,Country%>"><asp:Label ID="lblCountry" runat="server" ></asp:Label>

<iac:CountryDropDown runat="server" ID="cboRegisteredCountry" MaxHeight="200px" Width="200px" ><Items><telerik:RadComboBoxItem Text="Select" Selected="true"/></Items></iac:CountryDropDown><span class="validators">&nbsp;<iac:IARequiredFieldValidator runat="server" InitialValue="Select" ID="rfvalRegisteredCountry" ControlToValidate="cboRegisteredCountry" ValidationGroup="Register" RenderAsBlockElement="false" /></Item>
            </iac:InputContainer>
        </div>
    </iac:FieldSet>
    <div style="float: left; padding-left: 125px;">
        <table>
            <tr>
                <td class="updateButton">
                    <asp:LinkButton ValidationGroup="Register" ID="SubmitButton" runat="server" Text=""></asp:LinkButton>
                </td>
                <td title="Cancel" class="cancelButton" style="padding-left: 10px;">
                    <asp:LinkButton ID="CancelButton" runat="server" Text="" CausesValidation="false"></asp:LinkButton>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentRightAbove" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentRightBelow" runat="server">
</asp:Content>

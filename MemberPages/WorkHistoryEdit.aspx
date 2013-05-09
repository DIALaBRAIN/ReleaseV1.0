<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="WorkHistoryEdit.aspx.cs"
    MasterPageFile="~/StandardMaster.master" Inherits="IntelArcade.WebApp.WorkHistoryEdit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentBody" runat="server">
    <h2>
        <%=PageTitle %></h2>
    <iac:FieldSet runat="server" ID="FieldSet1" Title="WorkHistory" class="formData">
        <div style="border-top: 1px solid #cfcfcf; padding: 5px 0px 5px 0;">
            <br />
            <iac:InputContainer runat="server" ID="InputContainer1" Columns="1">
    <Item Text="<%$ Resources:Labels,Country%>">
        <iac:CountryDropDown runat="server" ID="CountryCode" MaxHeight="200px" Width="200px" ><Items><telerik:RadComboBoxItem Text="Select" Selected="true"/></Items></iac:CountryDropDown>&nbsp;<iac:IARequiredFieldValidator InitialValue="Select" runat="server" ID="rfvalCountryCode" ControlToValidate="CountryCode" RenderAsBlockElement="false" />
     </Item>
<Item Text="<%$ Resources:Labels,CompanyName%>"><asp:TextBox runat="server" ID="CompanyName" Width="350px" />&nbsp;<iac:IARequiredFieldValidator runat="server" ID="rfvalCompanyName" ControlToValidate="CompanyName" RenderAsBlockElement="false" /></Item>
<Item Text="<%$ Resources:Labels,FromDate%>"><tel:RadDatePicker ID="FromDate" Runat="server"/>&nbsp;<iac:IARequiredFieldValidator runat="server" ID="rfvalFromDate" ControlToValidate="FromDate" RenderAsBlockElement="false" /></Item>
<Item Text="<%$ Resources:Labels,ToDate%>"><tel:RadDatePicker ID="ToDate" Runat="server"/>&nbsp;<iac:IARequiredFieldValidator runat="server" ID="rfvalToDate" ControlToValidate="ToDate" RenderAsBlockElement="false" /></Item>
<Item Text="<%$ Resources:Labels,Position%>"><asp:TextBox runat="server" ID="Position" Width="350px" />&nbsp;<iac:IARequiredFieldValidator runat="server" ID="rfvalPosition" ControlToValidate="Position" RenderAsBlockElement="false" /></Item>
<Item Text="<%$ Resources:Labels,RoleDescription%>">
    <LabelCell><iac:IARequiredFieldValidator runat="server" ID="rfvalRoleDescription" ControlToValidate="RoleDescription" RenderAsBlockElement="true" /></LabelCell>
    <asp:TextBox Font-Names="Tahoma, helvetica, Arial, Sans-Serif" ForeColor="#414141" Font-Size="1.2em" runat="server" ID="RoleDescription" Rows="4" TextMode="MultiLine" Width="100%" />
</Item>
<Item Text="<%$ Resources:Labels,Notes%>">
    <asp:TextBox Font-Names="Tahoma, helvetica, Arial, Sans-Serif" ForeColor="#414141" Font-Size="1.2em" runat="server" ID="Notes" Rows="10" TextMode="MultiLine" Width="100%" />
</Item>
            </iac:InputContainer>
        </div>
    </iac:FieldSet>
    <div style="float: left; padding-left: 138px;">
        <%--<asp:ImageButton runat="server" ID="SubmitButton" ImageUrl="~/images/btn_create.png" />--%><table>
            <tr>
                <td class="updateButton">
                    <asp:LinkButton ID="SubmitButton" runat="server" Text=""></asp:LinkButton>
                </td>
                <td title="Cancel" class="cancelButton" style="padding-left: 10px;">
                    <%--<asp:ImageButton runat="server" ID="CancelButton" CausesValidation="false" ImageUrl="~/images/btn_cancel.png" />--%><asp:LinkButton
                        ID="CancelButton" runat="server" CausesValidation="false" Text=""></asp:LinkButton>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentRightAbove" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentRightBelow" runat="server">
</asp:Content>

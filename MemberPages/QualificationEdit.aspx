<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="QualificationEdit.aspx.cs"
    MasterPageFile="~/StandardMaster.master" Inherits="IntelArcade.WebApp.QualificationEdit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentBody" runat="server">
    <h2>
        <%=PageTitle %></h2>
    <iac:FieldSet runat="server" ID="FieldSet1" Title="Qualification" class="formData">
        <div style="border-top: 1px solid #cfcfcf; padding: 5px 0px 5px 0;">
            <br />
            <iac:InputContainer runat="server" ID="InputContainer1" Columns="1">
<Item Text="<%$ Resources:Labels,Country%>">
        <iac:CountryDropDown runat="server" ID="CountryCode" MaxHeight="200px" Width="200px" ><Items><telerik:RadComboBoxItem Text="Select" Selected="true"/></Items></iac:CountryDropDown>&nbsp;<iac:IARequiredFieldValidator runat="server" ID="rfvalCountryCode" InitialValue="Select" ControlToValidate="CountryCode" RenderAsBlockElement="false" />
     </Item>
<Item Text="<%$ Resources:Labels,QualificationAuthority%>"><asp:TextBox runat="server" ID="txtQualificationAuthority" Width="350px" />&nbsp;<iac:IARequiredFieldValidator runat="server" ID="rfvalQualificationAuthority" ControlToValidate="txtQualificationAuthority" RenderAsBlockElement="false" /></Item>
<Item Text="<%$ Resources:Labels,QualificationCourse%>"><asp:TextBox runat="server" ID="txtQualificationCourse" Width="350px" />&nbsp;<iac:IARequiredFieldValidator runat="server" ID="rfvalQualificationCourse" ControlToValidate="txtQualificationCourse" RenderAsBlockElement="false" /></Item>
<Item Text="<%$ Resources:Labels,QualificationName%>"><asp:TextBox runat="server" ID="txtQualificationName" Width="350px" />&nbsp;<iac:IARequiredFieldValidator runat="server" ID="rfvalQualificationName" ControlToValidate="txtQualificationName" RenderAsBlockElement="false" /></Item>
<Item Text="<%$ Resources:Labels,IssuedDate%>"><iac:DatePicker ID="IssuedDate" Runat="server"/>&nbsp;<iac:IARequiredFieldValidator runat="server" ID="rfvalFromDate" ControlToValidate="IssuedDate" RenderAsBlockElement="false" /></Item>
<Item Text="<%$ Resources:Labels,CourseType%>"><iac:CourseTypeDropDown runat="server" ID="cboCourseType" Width="350px" />&nbsp;<iac:IARequiredFieldValidator runat="server" ID="rfvalCourseType" ControlToValidate="cboCourseType" RenderAsBlockElement="false" /></Item>
<Item Text="<%$ Resources:Labels,Notes%>">
    <asp:TextBox Font-Names="Tahoma, helvetica, Arial, Sans-Serif" ForeColor="#414141" Font-Size="1.2em" runat="server" ID="txtNotes" TextMode="MultiLine" Rows="20" Width="100%" />
</Item>
            </iac:InputContainer>
        </div>
    </iac:FieldSet>
    <div style="float: left; padding-left: 139px;">
        <%--<asp:ImageButton runat="server" ID="SubmitButton" ImageUrl="~/images/btn_create.png" />--%><table>
            <tr>
                <td class="updateButton">
                    <asp:LinkButton ID="SubmitButton" runat="server" Text=""></asp:LinkButton>
                </td>
                <td title="Cancel" class="cancelButton" style="padding-left: 10px;">
                    <%--<asp:ImageButton runat="server" ID="CancelButton" CausesValidation="false" ImageUrl="~/images/btn_cancel.png" />--%><asp:LinkButton
                        ID="CancelButton" CausesValidation="false" runat="server" Text=""></asp:LinkButton>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentRightAbove" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentRightBelow" runat="server">
</asp:Content>

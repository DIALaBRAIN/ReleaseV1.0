<%@ Page Title="" Language="C#" MasterPageFile="~/StandardMaster.master" AutoEventWireup="true"
    CodeBehind="CompanyProfileEdit.aspx.cs" Inherits="IntelArcade.WebApp.MemberPages.CompanyProfileEdit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHead" runat="server">
    <iac:ClientResponseHandler runat="server" ID="DialogResponseHandler" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
    <div>
        <h2 style="font-size:1.2em">
            Business Profile</h2>
        <div style="padding-left:10px">
        <iac:InputContainer runat="server" ID="InputContainer1" Columns="1">
                <Item Text="Business Description"><asp:TextBox runat="server" ID="Description" Width="350px" TextMode="MultiLine" Rows="8" /><br /><iac:IARequiredFieldValidator runat="server" ID="rfvalDescription" ControlToValidate="Description" RenderAsBlockElement="false" /></Item>
        </iac:InputContainer>
        <div style="float: left; padding-left: 163px;">
            <div class="updateButton">
                <asp:LinkButton ID="SubmitButton" runat="server" Text=""></asp:LinkButton></div>
        </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentRightAbove" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentRightBelow" runat="server">
</asp:Content>

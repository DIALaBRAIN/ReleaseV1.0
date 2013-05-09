<%@ Page Title="" Language="C#" MasterPageFile="~/StandardMaster.master" AutoEventWireup="true" CodeBehind="UserTaxDetailsDisplay.aspx.cs" Inherits="IntelArcade.WebApp.MemberPages.UserTaxDetailsDisplay" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
<h2><%=PageTitle %></h2>
<div style="float:right;padding-right:5px;"><iac:ReturnContext ID="ReturnContext1" runat="server" /></div>
   <iac:FieldSet runat="server" ID="FieldSet1" Title="Sales Tax / VAT Details" class="formData" >
   <div style="border-top: 1px solid #cfcfcf; padding: 5px 0px 5px 0;"><br/>
    <iac:InputContainer runat="server" ID="InputContainer1" Columns="1">
        <Item Text="<%$ Resources:Labels,TaxNumber%>">  <asp:Label ID="TaxNumber" runat="server" ></asp:Label></Item>
        <Item Text="<%$ Resources:Labels,Country%>">  <asp:Label ID="Country" runat="server" ></asp:Label></Item>
    </iac:InputContainer>
<span title="Edit Tax Details" class="editButton" style="float: right; margin-top: -78px;">
   
    <asp:LinkButton runat="server" ID="EditLink" OnCommand="EditLink_Command" CommandName="Edit"   Text="" ></asp:LinkButton>
    </span>
    </div>
    </iac:FieldSet>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentRightAbove" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentRightBelow" runat="server">
</asp:Content>

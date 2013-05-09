<%--
//###############Moved to part of personal details###################
//Wont delete just yet

<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="ContactDetails.aspx.cs" MasterPageFile="~/StandardMaster.master" Inherits="IntelArcade.WebApp.ContactDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentBody" runat="server">
    <h2><%=PageTitle %></h2>
   <iac:FieldSet runat="server" ID="FieldSet1" Title="Address" class="formData" >
    <iac:InputContainer runat="server" ID="InputContainer1" Columns="1">
<Item Text="Address Line 1">  <asp:Label ID="lblAddressLine1" runat="server" ></asp:Label></Item>
<Item Text="Address Line 2">  <asp:Label ID="lblAddressLine2" runat="server" ></asp:Label></Item>
<Item Text="Town/City">  <asp:Label ID="lblCity" runat="server"></asp:Label></Item>
<Item Text="County/State">  <asp:Label ID="lblCounty" runat="server" ></asp:Label></Item>
<Item Text="Post Code/Zip">  <asp:Label ID="lblPostCode" runat="server"></asp:Label></Item>
<Item Text="Country">  <asp:Label ID="lblCountry" runat="server"></asp:Label></Item>
<Item Text="Phone number">  <asp:Label ID="lblPhone" runat="server"></asp:Label></Item>
    </iac:InputContainer>
            <asp:LinkButton runat="server" ID="EditLink" OnCommand="EditLink_Command" CommandName="Edit" Text="Edit Address" CommandArgument='<%# Eval("AddressID") %>'  />
    </iac:FieldSet>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentRightAbove" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentRightBelow" runat="server">
</asp:Content>
--%>
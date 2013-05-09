<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AddressView.ascx.cs" Inherits="IntelArcade.WebApp.UserControls.AddressView" %>
<iac:InputContainer runat="server" ID="InputContainer2" Columns="1">
    <Item Text="Address"><asp:Literal runat="server" ID="AddressLines" /></Item>
    <Item Text="Town/City">  <asp:Label ID="lblCity" runat="server"></asp:Label></Item>
    <Item Text="County/State">  <asp:Label ID="lblCounty" runat="server" ></asp:Label></Item>
    <Item Text="Post Code/Zip">  <asp:Label ID="lblPostCode" runat="server"></asp:Label></Item>
    <Item Text="Country">  <asp:Label ID="lblCountry" runat="server"></asp:Label></Item>
</iac:InputContainer>

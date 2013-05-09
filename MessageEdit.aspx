<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="MessageEdit.aspx.cs" MasterPageFile="~/StandardMaster.master" Inherits="IntelArcade.WebApp.MessageEdit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentBody" runat="server">
    <h2><%=PageTitle %></h2>
   <iac:FieldSet runat="server" ID="FieldSet1" Title="Edit Message" class="formData" >
       		   <asp:HiddenField ID="ParentMessageId" runat="server" />
        <iac:InputContainer runat="server" ID="InputContainer1" Columns="1">
<Item Text="Subject">  <asp:TextBox ID="txtSubject" runat="server" Width="100%" /></Item>
<Item Text="Body">  <asp:TextBox ID="txtBody" TextMode="MultiLine" Width="100%" Height="200px" runat="server" /></Item>
	</iac:InputContainer>
    </iac:FieldSet>
<div style="float:right;padding:10px;"><asp:Button runat="server" ID="SubmitButton" Text="Submit" />&nbsp;<asp:Button runat="server" ID="CancelButton" CausesValidation="false" Text="<%$ Resources:Buttons,GenericCancel %>" /></div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentRightAbove" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentRightBelow" runat="server">
</asp:Content>

<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/StandardMaster.master" CodeBehind="BankingEdit.aspx.cs" Inherits="IntelArcade.WebApp.MemberPages.BankingEdit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentBody" runat="server">
    <div>
        <h2 style="font-size:1.2em"><%=PageTitle %></h2>
        <iac:FieldSet runat="server" ID="FieldSet1" Title="Edit Paypal Details" class="formData">  
        <div style="border-top: 1px solid #cfcfcf; padding: 5px 0px 5px 0;"><br/>          
            <iac:InputContainer runat="server" ID="InputContainer1" Columns="1">
                <Item Text="Paypal Email">  <asp:TextBox ID="txtEmail" runat="server" width="250px" />&nbsp;<iac:IARequiredFieldValidator runat="server" ID="rfvalEmail" ControlToValidate="txtEmail" /></Item>
             <Item  Text="">  <asp:TextBox Visible="false" ID="txtSeekerEmail" runat="server" width="250px" /></Item>
       
        </iac:InputContainer>
            

            <iac:InputContainer runat="server"   ID="SeekerContainer" Columns="1" >
                <Item Text="Paypal Email">  <asp:TextBox ID="SeekerEmail" runat="server" width="250px" /></Item>
            </iac:InputContainer>
            </div>
        </iac:FieldSet>
        <div class="buttonContainer" style="float:left; padding-left:175px;margin-top:-50px"><table><tr><td class="updateButton"><asp:LinkButton ID="SubmitButton" runat="server" Text=""></asp:LinkButton></td><%--<asp:ImageButton runat="server" ID="SubmitButton" ImageUrl="~/images/btn_create.png" />--%>&nbsp;<td title="Cancel" class="cancelButton" style="padding-left: 10px;"><asp:LinkButton ID="CancelButton" runat="server" CausesValidation="false" Text=""></asp:LinkButton><%--<asp:ImageButton runat="server" ID="CancelButton" CausesValidation="false" ImageUrl="~/images/btn_cancel.png" />--%></td></tr></table></div>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentRightAbove" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentRightBelow" runat="server">
</asp:Content>

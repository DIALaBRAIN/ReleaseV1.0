<%@ Page Title="" Language="C#" MasterPageFile="~/StandardMaster.Master" AutoEventWireup="true" CodeBehind="MoneyDownloadVerify.aspx.cs" Inherits="IntelArcade.WebApp.MoneyDownloadVerify" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">

    <iac:FieldSet runat="server" ID="FieldSet1" Title="Money Download Confirmation" class="formData">
        <div style="border-top: 1px solid #cfcfcf; padding: 5px 0px 5px 0;">
            <br />
            <iac:InputContainer runat="server" ID="InputContainer1" Columns="1">
            
           <table style="margin-left:85px;">
           
           <tr>
           <td align="right"> <b>d<span class="highlight2">b</span>-Account</b> </td>
             <td style="text-align:center"><b>:</b></td>
               <td> <asp:Label ID="LabelAccountType"  runat="server" Text=""></asp:Label></td>
           </tr>
            <tr>
            <td align="right"> <b>Amount</b></td>
            <td style="width:15px;text-align:center"><b>:</b></td>
            <td>  <asp:Label ID="LabelAmount" runat="server" Text=""></asp:Label></td>
           </tr>
            <tr>
           <td align="right"> <b>PayPal Email</b></td>
          <td style="text-align:center"><b>:</b></td>
               <td> <asp:Label ID="Labelpaypalemail" runat="server" Text=""></asp:Label></td>
           </tr>
           </table>              
             <telerik:RadComboBox Visible="false" Enabled="false" ID="rcbIACredit"  AllowCustomText="false" runat="server" EmptyMessage="Select a Bank Account"  AutoPostBack="true"></telerik:RadComboBox>
             <iac:IARequiredFieldValidator  runat="server" ID="rfvalIACredit" ControlToValidate="rcbIACredit" RenderAsBlockElement="false" ValidationGroup="download"></iac:IARequiredFieldValidator>
             <iac:CurrencyBox Enabled="false" Visible="false" runat="server" ID="Amount"></iac:CurrencyBox> &nbsp; <iac:IARequiredFieldValidator  runat="server" ID="rfvalAmount" ControlToValidate="Amount" RenderAsBlockElement="false" ValidationGroup="download"></iac:IARequiredFieldValidator> 
             <asp:CustomValidator ID="cvAmount" runat="server" ControlToValidate="Amount" ErrorMessage="*" ValidationGroup="download"></asp:CustomValidator>
              </iac:InputContainer>
        </div>
        <div class="buttonContainer" style="float: left; padding-left: 183px;">
            <span class="confirmBtn" style="float: left; padding-right: 5px;width:100px;">
                <asp:LinkButton ID="btnMoneyDownload" runat="server" Text="" ValidationGroup="download"
                    OnClick="btnMoneyDownload_Click"></asp:LinkButton>
            </span><span class="cancelButton" title="Cancel" style="float: left">
                <asp:LinkButton runat="server" ID="btnCancel" CausesValidation="false" Text=""></asp:LinkButton></span>
        </div><br /><br /><br /><br />
           <div style="border-top: 1px solid #cfcfcf; padding: 5px 100px 5px 0;"></div>
    </iac:FieldSet>
</asp:Content>

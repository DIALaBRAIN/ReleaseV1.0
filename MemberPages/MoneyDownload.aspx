<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MoneyDownload.aspx.cs"
    MasterPageFile="~/StandardMaster.master" Inherits="IntelArcade.WebApp.MemberPages.MoneyDownload" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentBody" runat="server">
    <iac:FieldSet runat="server" ID="FieldSet1" Title="Money Download" class="formData">
        <div style="border-top: 1px solid #cfcfcf; padding: 5px 0px 5px 0;">
            <br />
            <iac:InputContainer runat="server" ID="InputContainer1" Columns="1">
            
               <div runat="server" id="accountDiV"><b>d<span class="highlight2">b</span>-Account</b><span style="padding-left:3px;"> <telerik:RadComboBox ID="rcbIACredit"  AllowCustomText="false" runat="server" EmptyMessage="Select a Bank Account"  AutoPostBack="true"></telerik:RadComboBox> &nbsp; <iac:IARequiredFieldValidator  runat="server" ID="rfvalIACredit" ControlToValidate="rcbIACredit" RenderAsBlockElement="false" ValidationGroup="download"></iac:IARequiredFieldValidator></span><br />&nbsp;</div>
               <span style="margin-top:15px"><item Text="Amount"> <span style="padding-left:20px"><iac:CurrencyBox runat="server" ID="Amount"></iac:CurrencyBox> &nbsp; <iac:IARequiredFieldValidator  runat="server" ID="rfvalAmount" ControlToValidate="Amount" RenderAsBlockElement="false" ValidationGroup="download"></iac:IARequiredFieldValidator> <asp:CustomValidator ID="cvAmount" runat="server" ControlToValidate="Amount" ErrorMessage="*" ValidationGroup="download"></asp:CustomValidator></span> </item></span>
            </iac:InputContainer>
        </div>
        <div class="buttonContainer" style="float: left; padding-left: 87px">
            <span class="withdrowmoney" style="float: left; padding-right: 5px;">
                <asp:LinkButton ID="btnMoneyDownload" runat="server" Text="" ValidationGroup="download"
                    OnClick="btnMoneyDownload_Click"></asp:LinkButton>
            </span><span class="cancelButton" title="Cancel" style="float: left">
                <asp:LinkButton runat="server" ID="btnCancel" CausesValidation="false" Text=""></asp:LinkButton></span>
        </div>
    </iac:FieldSet>

      <div id="ConfirmationInfo" runat="server" style="color:#006C9E;font-size:13px;font-weight:bold" visible="false">
                      
                            <br />
                            A confirmation email has been sent to&nbsp;
                            <label id="ConfirmationEmail" runat="server" />. Please click the activation link contained in the email to validate your withdrawal request.<br />
                            <br /> 
                           <span style="font-size:12px;color:Black;font-weight:normal"><b>Note :</b> If you don't see this email in your inbox within 15 minutes, look for it in your
                            junk-mail/spam-mail folder. If you find it there, please mark the email as Not Junk
                            and add @dialabrain.com to your address book.</span>
                        </div>

</asp:Content>

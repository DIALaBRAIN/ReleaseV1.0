<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="CompanyEdit.aspx.cs" MasterPageFile="~/StandardMaster.master"
    Inherits="IntelArcade.WebApp.ProviderSetup.CompanyEdit" EnableEventValidation="false" %>

<%@ Register Src="../UserControls/ProviderSetupNextPreviousNavigator.ascx" TagName="ProviderSetupNextPreviousNavigator"
    TagPrefix="uc2" %>
<%@ Register Src="../UserControls/ProviderSetupNextPreviousNavigator.ascx" TagName="ProviderSetupNextPreviousNavigator"
    TagPrefix="uc3" %>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentHead" runat="server">
    <script type="text/javascript">
        //<![CDATA[
        function ia_OnClientClose(oWnd, args) {
            if (args == null) return;

            var arg = args.get_argument();
            if (arg != null && arg.DoPostback) {
                handleResponse_DialogResponseHandler(arg.ServiceResponse, arg.Argument);
            }
        }

        function AcceptTermsCheckBoxValidation(oSrouce, args) {
            alert('test');
            var myCheckBox = document.getElementById('<%=cbAgree.ClientID%>');

            if (!myCheckBox.checked) {
                args.IsValid = false;
            }
            else {
                args.IsValid = true;
            }
        }

        var taxNameCombo;

        function pageLoad() {
            // initialize the global variables
            // in this event all client objects 
            // are already created and initialized 
        }


        function SetManualValidator() {
            $.each(Page_Validators, function (index, validator) {
                if (validator.validationGroup == "ManualUpdate") {
                    ValidatorEnable(validator, true);
                }
            });
        }

        function ValidateDropDown() {
            var cmbID = "<%=CompanyType.ClientID %>";
            if (document.getElementById(cmbID).selectedIndex == 2 && document.getElementById('<%= IncorporationNumber.ClientID %>').value == "") {
                return false;
            }
            return true;
        }
        //]]>
    </script>
    <style>
        /*RadInput with no button and label (1)*/
        .RadInput
        {
            width: 351px;
            height: 20px;
            margin-bottom: 4px;
        }
        .chrome .RadInput
        {
            width: 354px !important;
            height: 20px;
            margin-bottom: 3px;
        }
        
        .gecko .RadInput
        {
            width: 351px !important;
            height: 20px;
            padding-bottom: 10px;
        }
        
        /*RadInput with a button and/or a label
    .TextBoxParent400 .RadInput, 
    .TextBoxParent400 .RadInput .riTable 
    { 
        width:400px !important; 
    } */
    </style>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentBody" runat="server">
    <h2 style="font-size: 1.2em">
        Edit Business Details</h2>
    <div>
        <table style="width: 100%; align: left;">
            <tr>
                <td style="width: 190Px; position: absolute; padding-bottom: 5px;">
                    <iac:FieldSet runat="server" ID="FieldSet10" Title="Your Business" class="formData">
                    </iac:FieldSet>
                    <br />
                </td>
                <td style="padding-left: 190px;">
                    <uc3:ProviderSetupNextPreviousNavigator ID="psnTop" runat="server" NavigatorShowType="NextOnly"
                        ShowToolTip="true" />
                </td>
            </tr>
        </table>
    </div><br />
    <iac:FieldSet runat="server" ID="FieldSet1" Title="" class="formData" style="margin-left: 58px;
        width: 100%; margin-top: 2px;">
        <div style="border-top: 1px solid #cfcfcf; padding: 5px 0px 5px 0; margin-left: -55px;
            width: 100%">
            <br />
            <iac:InputContainer runat="server" ID="InputContainer1" Columns="1">
            <Item Text="Business Type"><iac:CompanyTypeDropDown  runat="server" CssClass="inputSpecial" ID="CompanyType"  AutoPostBack="True"/>&nbsp;&nbsp;<asp:Label ID="Label5" runat="server"  Text="*" ForeColor="Red" /> <iac:IARequiredFieldValidator runat="server" ID="rfvalCompanyType" ControlToValidate="CompanyType" RenderAsBlockElement="false" /></Item>
            <Item Text="Business Name"><tel:RadTextBox CssClass="inputSpecial" runat="server" ID="CompanyName"  EmptyMessage="This cannot be edited once saved" ShouldResetWidthInPixels="true" ShowButton="false"></tel:RadTextBox>&nbsp;
            <asp:Label ID="lblBNameStar" runat="server"  Text="*" Visible="false" ForeColor="Red" />  
            <asp:CustomValidator ID="cvCompanyName" runat="server" ErrorMessage="Required" ControlToValidate="CompanyName" ValidateEmptyText="true" OnServerValidate="cvCompanyName_ServerValidate" ValidationGroup = "ManualUpdate"></asp:CustomValidator>
              
            </Item>
            <Item Text="Trading Name"><asp:TextBox runat="server" ID="TradingName"  class="aspTextBox" /></Item>
            <Item Text="<%$ Resources:Labels,IncorporationNumber%>"><tel:RadTextBox CssClass="inputSpecial" runat="server" ID="IncorporationNumber" ></tel:RadTextBox>
            &nbsp;<asp:Label ID="lblIncStar" runat="server"  Text="*" Visible="false" ForeColor="Red" />       
           <asp:CustomValidator ID="rfvalIncorporation" ControlToValidate="IncorporationNumber" ValidateEmptyText="true" OnServerValidate="rfvalIncorporation_ServerValidate" runat="server" ErrorMessage="Required"> </asp:CustomValidator>
           
       </Item>
            <Item Text="Trading Currency"> <asp:Label ID="labCurrency" runat="server" />
            <iac:CurrencyDropDown runat="server" ID="Currency" Enabled="false" Width="350px" EmptyMessage="This cannot be edited once saved"  AllowCustomText="false"><Items><telerik:RadComboBoxItem Text="Select" Selected="true"/></Items></iac:CurrencyDropDown >&nbsp;
            <iac:IARequiredFieldValidator runat="server" ID="rfvalCurrency" InitialValue="Select" ControlToValidate="Currency" RenderAsBlockElement="false" ValidationGroup = "ManualUpdate" /></Item>
              <Item Text="Business Profile"><asp:TextBox CssClass="inputSpecial" Font-Size="15px" runat="server" ID="Description" Width="350px" TextMode="MultiLine" Rows="5" /></Item>
            <Item Text=""><asp:PlaceHolder ID="phUserAgreement" runat="server"><asp:CheckBox runat="server" ID="cbAgree" /> <span>I Agree to the </span> <a href="../ProviderTermsGuide.aspx" target="_blank">Terms & Conditions</a>
                &nbsp;<asp:Label ID="Label1" runat="server"  Text="*" ForeColor="Red" /> <asp:CustomValidator ID="valTerms" runat="server" 
                ErrorMessage="Required"> </asp:CustomValidator></asp:PlaceHolder> 
            </Item>
            </iac:InputContainer>
            <div style="float: left; padding-left: 128px; margin-left: 38px;">
                <table>
                    <tr>
                        <td>
                            <div runat="server" id="divSubmitButton">
                                <asp:LinkButton ID="SubmitButton" ValidationGroup="ManualUpdate" runat="server" Text=""></asp:LinkButton></div>
                        </td>
                        <td style="padding-left: 10px;">
                            <div title="Cancel" class="cancelButton">
                                <asp:LinkButton ID="CancelButton" runat="server" Text="" CausesValidation="false"></asp:LinkButton></div>
                        </td>
                    </tr>
                </table>
            </div>
            <asp:HiddenField runat="server" ID="hdnCompanyType" />
            <asp:HiddenField runat="server" ID="hdnCompanyName" />
            <asp:HiddenField runat="server" ID="hdnTradingName" />
            <asp:HiddenField runat="server" ID="hdnIncorporationNumber" />
            <asp:HiddenField runat="server" ID="hdntaxName" />
            <asp:HiddenField runat="server" ID="hdnTaxNumbe" />
            <asp:HiddenField runat="server" ID="hdnDescription" />
        </div>
    </iac:FieldSet>
    <br />
    <div style="padding-left: 194px; padding-right: 2px;">
        <div style="border-top: 1px solid #cfcfcf; padding: 5px 0px 5px 0; width: 99%; margin-left: 8px">
        </div>
        <uc3:ProviderSetupNextPreviousNavigator ID="psnBottom" runat="server" Visible="true"
            NavigatorShowType="NextOnly" ShowToolTip="true" />
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentRightAbove" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentRightBelow" runat="server">
</asp:Content>

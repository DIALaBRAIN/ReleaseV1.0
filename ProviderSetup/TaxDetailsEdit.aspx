<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="TaxDetailsEdit.aspx.cs"
    MasterPageFile="~/StandardMaster.master" Inherits="IntelArcade.WebApp.ProviderSetup.TaxDetailsEdit" %>
   <%@ Register Src="../UserControls/ProviderSetupNextPreviousNavigator.ascx" TagName="ProviderSetupNextPreviousNavigator"
    TagPrefix="uc2" %>
    
<asp:Content ID="Content1" ContentPlaceHolderID="ContentBody" runat="server">
    <script language="javascript">
        function TaxNumberValidate(sender, args) {
            if (args.Value != "") {
                if (document.getElementById('<%= taxName.ClientID %>').value == "") {
                    args.IsValid = false;
                }
            }
        }
      
  
        function SetManualValidator() {
            $.each(Page_Validators, function (index, validator) {
                if (validator.validationGroup == "Register") {
                    ValidatorEnable(validator, true);
                }
            }); return false;
        }
    </script>
     <script type="text/javascript">
         function openWin(arg) {
             _iac_openDialog("EditServiceTaxDetails", null, arg, null, 620, 620, "I355DCF93552B4F45B1093F0587B8D04", _call_onWindowClose, true);                  
         }

         function _call_onWindowClose(oWnd, args) {
             if (args == null) return;
             var arg = args.get_argument();
             if (arg.DoPostback) {
                 handleResponse_DialogResponseHandler(arg.ServiceResponse, arg.Argument);
             }
             else {
                 window.location.href = "../ProviderSetup/TaxDetailsDisplay.aspx";
             }
         }
    </script>

      <iac:ClientResponseHandler runat="server" ID="DialogResponseHandler" />                    
    <h2 style="font-size: 1.2em">    
        <%=PageTitle %></h2>
          <div> 
        <table style="width:100%; align: left;"><tr>
          <td style="width:190Px; position:absolute;">
                         <iac:FieldSet runat="server" ID="FieldSet10" Title="Tax Details" class="formData"></iac:FieldSet>
                            
                         </td> 
                            <td style="padding-left:190px;">    
                        <%--     <uc2:ProviderSetupNextPreviousNavigator ID="psnTop" runat="server" />--%>
                          <span title="" class="previousButton" style="float:left; margin-left:9px; ">
<asp:LinkButton  runat="server" ID="btnPrevious"  Text=""></asp:LinkButton></span>

    <asp:UpdatePanel ID="UpdatePanel2" runat="server" ChildrenAsTriggers="true" UpdateMode="Conditional" >
 <ContentTemplate>
 <span title="" class="nextButton" style="float:right;margin-right:-2px">
<asp:LinkButton  runat="server" ID="btnNext" ToolTip="Save and Go to Next" Text=""></asp:LinkButton></span>
</ContentTemplate>  
</asp:UpdatePanel>                      
</td></tr></table>

         </div>     
         <asp:UpdatePanel ID="ImageRedrawPanel" runat="server" ChildrenAsTriggers="true"    UpdateMode="Conditional" >
    <ContentTemplate>
    <iac:FieldSet runat="server" ID="FieldSet1" Title="" class="formData"  style="margin-left: 58px; width:100%;  margin-bottom: -20px;">
    <div style="border-top: 1px solid #cfcfcf; padding: 5px 0px 5px 0; margin-left: -55px; width:100%"><br/>
         
          <div style="margin-left:94px; margin-top:-20px;">
            <iac:InputContainer runat="server" ID="InputContainer1" Columns="1" >
            <Item Text="<%$ Resources:Labels,Country%>"><asp:Label runat="server" ID="lblCountry"></asp:Label>
            <iac:CountryDropDown runat="server" ID="drpCountry" Enabled="false" CssClass="aspTextBox" />
            </Item>
            <Item Text="Tax" >
            <tel:RadComboBox ID="taxName" runat="server" style="width:163px" AllowCustomText="true" MaxLength="5"   CssClass="aspTextBox"></tel:RadComboBox>&nbsp;<asp:Label ID="Label1" runat="server"  Text="*" ForeColor="Red" />&nbsp; 
             <asp:CustomValidator runat="server" ClientValidationFunction="TaxNumberValidate" ControlToValidate="taxName" ErrorMessage="Required" ></asp:CustomValidator>
            <iac:IARequiredFieldValidator runat="server" ID="rfvaltax" ControlToValidate="taxName" RenderAsBlockElement="false" ValidationGroup = "Register"/>
            </Item>
            <Item Text="<%$ Resources:Labels,TaxNumber%>" ><asp:TextBox CssClass="taxinput" style="width:160px" runat="server"  ID="TaxNumber" />
            
            </Item>
            </iac:InputContainer>
            </div>

        </div>
    </iac:FieldSet>
        <asp:HiddenField ID="hdftaxName" runat="server" />
        <asp:HiddenField ID="hdfTaxNumber" runat="server" />
    <div style="float: left; padding-left: 125px; margin-left: 75px;">
        <table>
            <tr>
                <td class="updateButton">
                <asp:LinkButton ID="SubmitButton"  runat="server" Text="" OnClientClick="SetManualValidator" ValidationGroup = "Register"></asp:LinkButton>
                </td>
                <td title="Cancel" class="cancelButton" style="padding-left:10px;">
                    <asp:LinkButton ID="CancelButton" CausesValidation="false" runat="server" Text=""></asp:LinkButton>
                </td>
            </tr>
        </table>
        
         <div></div> </div>
         <br />
    <br /> 
     
     </ContentTemplate></asp:UpdatePanel>

<div style="padding-left:194px; padding-right:2px;">
  <div class="EditPageFooterLine"  ></div>
         <span title="" class="previousButton" style="float:left; margin-left:9px; ">
                <asp:LinkButton  runat="server" ID="btnBottomPrevious"  Text=""></asp:LinkButton></span>
           
     <asp:UpdatePanel ID="UpdatePanel3" runat="server" ChildrenAsTriggers="true"    UpdateMode="Conditional" >  
        <ContentTemplate>
        <span title="" class="nextButton" style="float:right;margin-right:-2px">
                    <asp:LinkButton  runat="server" ID="btnBottomNext" Text="" ToolTip="Save and Go to Next"></asp:LinkButton></span>
        </ContentTemplate>
             </asp:UpdatePanel>
             </div>
         <%-- <div style="padding-left:194px; padding-right:2px;">
  <div style="border-top: 1px solid #cfcfcf; padding: 5px 0px 5px 0; width:99%; margin-left:8px"></div>
                        <uc2:ProviderSetupNextPreviousNavigator ID="psnBottom" runat="server"  />
                    </div> --%>
                        <style>
       
       .chrome .taxinput
        {
            width: 159px !important;
          
        }
         .safari .taxinput
        {
            width: 159px !important;
          
        } 
         .gecko .taxinput
        {
         width: 161px !important;
        }
       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentRightAbove" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentRightBelow" runat="server">
</asp:Content>

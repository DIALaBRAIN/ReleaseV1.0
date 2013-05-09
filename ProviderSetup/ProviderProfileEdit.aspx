<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="ProviderProfileEdit.aspx.cs" MasterPageFile="~/StandardMaster.master" Inherits="IntelArcade.WebApp.ProviderSetup.ProviderProfileEdit" ValidateRequest="true" %>
<%@ Register Src="../UserControls/ProviderSetupNextPreviousNavigator.ascx" TagName="ProviderSetupNextPreviousNavigator"
    TagPrefix="uc5" %>
      <%@ Register Src="../UserControls/ProviderSetupNextPreviousNavigator.ascx" TagName="ProviderSetupNextPreviousNavigator"
    TagPrefix="uc2" %>
    <%@ Register TagPrefix="uc2" TagName="ImageSelector" Src="~/UserControls/ImageSelector.ascx" %>
 <asp:Content ID="Content4" ContentPlaceHolderID="ContentHead" runat="server">
    <script type="text/javascript">
   
        function _providerProfileOnClientClose(oWnd, args) {
            if (args == null) return;
            var arg = args.get_argument();
            if (arg != null && typeof (arg.DoPostback) != "undefined" && arg.DoPostback) {
                handleResponse_DialogResponseHandler(arg.ServiceResponse, arg.Argument);
            }
        }
      

          function confirmCallBackFn(arg) {
              if (arg) {
                  $("#<%=btnLinkedInImport.ClientID %>").click();
              }
          }

          function SetValidator() {
              radconfirm('Be aware that if you proceed your current data may be over-written with your Linkedin data.', confirmCallBackFn, 330, 100, null, 'Confirm', null);
              $.each(Page_Validators, function (index, validator) {
                  if (validator.validationGroup == "ManualUpdate") {
                      ValidatorEnable(validator, false);
                                    }
              });
              return false;
          }

          function SetManualValidator() {
              $.each(Page_Validators, function (index, validator) {
                  if (validator.validationGroup == "ManualUpdate") {
                      ValidatorEnable(validator, true);
                  }
              }); return false;
          } 
    </script>
        <style>
        .LinkedInImportButton {
margin-left:50px;
}
    .gecko .LinkedInImportButton {
margin-left:10px;
}
.chrome .LinkedInImportButton {
		margin-left:50px;
		}
    </style>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentBody" runat="server">
<style>
      .formcontent
        {
            margin-top:-58px;
           
        }
     .gecko .formcontent
        {
           margin-top:-70px;
        }
</style>
 <iac:ClientResponseHandler runat="server" ID="DialogResponseHandler" />
    <h2 style="font-size:1.2em">Your Business<%=PageTitle %></h2>
     <iac:FieldSet runat="server" ID="FieldSet10" Title="Provider Profile Edit" class="formData" style="margin-left:-20px;"></iac:FieldSet>
     
     <div style="margin-left: 190px;">    
        <table class="formcontent" style="width:100%; align: right; "><tr>
                             <td><span title="Update your qualifications details from Linkedin." class="LinkedInImportButton" style="float: left;position:absolute;padding-left: 200px;">
                                            <iac:ConfirmationLink ID="ConfirmationLink2" runat="server" DialogHeight="220" OnClientClose="confirmCallBackFn"
                                                Message="Be aware that if you proceed your current data may be over-written with your Linkedin data.">
                                            </iac:ConfirmationLink></span>

                                                 <uc2:ProviderSetupNextPreviousNavigator ID="psnTop" runat="server" ShowToolTip="true"/>
                           </td></tr></table>
         </div>
          <div style="display: none;">
                                <asp:Button runat="server" ID="btnLinkedInImport" />
                            </div>
    <iac:FieldSet runat="server" ID="FieldSet1" Title="" class="formData"  style=" margin-left: -3px; margin-top:-10px;">
   <div style="border-top: 1px solid #cfcfcf; padding: 5px 0px 5px 0; width:103%; "><br/>


   <div style="margin-left:25px; margin-top:-20px;">
    <iac:InputContainer runat="server" ID="InputContainer1" Columns="1">
       <Item Text="Profile Image">
         <table>
                                        <tr>
                                            <td style="vertical-align: top;">
                                                <uc2:ImageSelector ID="ImageSelector1" runat="server" OnClientClose="_providerProfileOnClientClose" />
                                            </td>
                                            <td style="vertical-align: top;">
                                                <div style="float: left">
                                                    <h3>
                                                        <asp:Label ID="DisplayName" runat="server" /></h3>
                                                </div>
                                                <div style="clear: both;">
                                                    <p>
                                                        <asp:Label ID="Label1" runat="server" /></p>
                                                    <br />
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
       </Item>
        <Item Text="<%$ Resources:Labels,Introduction%>">
      <asp:TextBox  runat="server" ID="ProviderSummary" Rows="4" TextMode="MultiLine" CssClass="TextAreaDragHorizontal" />
      &nbsp; <span id="Span1" style="color:Red; top:-60px; position:relative;" >*</span>
     <iac:IARequiredFieldValidator runat="server" ID="rfvalProviderSummary" ControlToValidate="ProviderSummary" RenderAsBlockElement="true" ValidationGroup = "ManualUpdate" style="top:-84px;left:380px; position:relative; color:Red;" />
          </Item>      
        <Item Text="<%$ Resources:Labels,AdditionalInformation%>"><asp:TextBox runat="server" ID="ProviderDetail" Rows="10" TextMode="MultiLine" class="TextAreaDragHorizontal" /></Item>
   </iac:InputContainer> 
   </div>
   </div>
    </iac:FieldSet>
<div style="float:left;padding-left:175px;margin-left: 25px;margin-top:-26px;">
<table ><tr>
<td class="updateButton"><asp:LinkButton ID="SubmitButton" runat="server" Text=""  OnClientClick="SetManualValidator"></asp:LinkButton></td>
<td title="Cancel" class="cancelButton" style="padding-left: 10px;">

<asp:LinkButton ID="CancelButton" runat="server" CausesValidation="false" Text=""></asp:LinkButton>
</td></tr>

</table></div>
  <br />   
     <div style="padding-left:194px; padding-right:2px;">
     <div class="EditPageFooterLine"></div>
                        <uc5:ProviderSetupNextPreviousNavigator ID="psnBottom" runat="server"  ShowToolTip="true"/>
                    </div>
    <asp:HiddenField ID="hdfProviderSummary" runat="server" />
    <asp:HiddenField ID="hdfProviderDetail" runat="server" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentRightAbove" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentRightBelow" runat="server">
</asp:Content>

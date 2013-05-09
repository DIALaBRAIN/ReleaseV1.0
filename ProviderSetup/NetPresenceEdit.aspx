<%@ Page Title="" Language="C#" MasterPageFile="~/StandardMaster.master" AutoEventWireup="true"
    CodeBehind="NetPresenceEdit.aspx.cs" Inherits="IntelArcade.WebApp.ProviderSetup.NetPresenceEdit" %>
<%@ Register Src="../UserControls/ProviderSetupNextPreviousNavigator.ascx" TagName="ProviderSetupNextPreviousNavigator"
    TagPrefix="uc2" %>
 <asp:Content ID="Content4" ContentPlaceHolderID="ContentHead" runat="server">
      <script language="javascript">
          //<![CDATA[
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
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
    <div>
        <h2 style="font-size: 1.2em">
            <%=PageTitle %></h2>
                <iac:FieldSet runat="server" ID="FieldSet10" Title="Internet Link" class="formData" style="margin-left:30px;"></iac:FieldSet>
            <div style="margin-left: 190px;">   
         <table style="width:100%; align: right;margin-top:-70px"><tr>
         <span class="LinkedInImportButton" style="float: left;position:absolute;padding-left: 200px;">        
    
   <asp:LinkButton ID="LinkButton1" runat="server" OnClientClick=" radconfirm('Be aware that if you proceed your current data may be over-written with your Linkedin data.', confirmCallBackFn, 330, 100, null, 'Confirm', null); return false;" ToolTip="Update your qualifications details from Linkedin"></asp:LinkButton></span>
 <uc2:ProviderSetupNextPreviousNavigator ID="psnTop" runat="server"   ShowToolTip="true"/>    
                         <td>              
                                       
                                     
                           </td></tr></table>



                           <div style="display: none;">
                                <asp:Button runat="server" ID="btnLinkedInImport" />
                            </div>
         </div> 
        <iac:FieldSet runat="server" ID="FieldSet1" Title="" class="formData" style=" margin-left: 58px; width:96%">
             <div style="margin-bottom: 5px; float: right;margin-right:20px">
                                        <table class="largeButton">
                                            <tr>
                                                <td title="Add Internet Link" class="addButton">
                                                    <asp:LinkButton runat="server" ID="AddLink" CommandName="Add" CommandArgument=""
                                                        OnClick="AddLink_Click" Text=""></asp:LinkButton>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>

             <div style="border-top: 1px solid #cfcfcf; padding: 5px 0px 5px 0; margin-left: -12px;width:99%"><br/>
               <div style=" margin-left:43px;">
                <img id="Img1" src="~/images/netPresence-50x.png" alt="Image" title="Image" class="leftImage"
                    style="width: 50px; height: 50px;" runat="server" />
                <iac:InputContainer runat="server" ID="InputContainer1" Columns="1">
                <Item Text="Site">
                    <iac:InternetLinkTypeDropDown ID="drpnetProviders" runat="server" style="height:20px;" />&nbsp; <span id="Span1" style="color:Red" >*</span> <iac:IARequiredFieldValidator runat="server" ID="rfvalNetProviders" ControlToValidate="drpnetProviders" RenderAsBlockElement="false" ValidationGroup = "ManualUpdate"/>
             
                </Item>
				<Item Text="Url"><asp:TextBox runat="server" ID="txtUrl" CssClass="aspTextBox" />&nbsp; <span id="requiredIndigator2" style="color:Red" >*</span> 
                <iac:IARequiredFieldValidator runat="server" ID="rfvalURL" ControlToValidate="txtUrl" RenderAsBlockElement="false" ValidationGroup = "ManualUpdate"/></Item>
                <item Text=""> <asp:Label ID="lblError" runat="server" class="error" /></item>
              
                </iac:InputContainer></div>
                </div>
        </iac:FieldSet>
        <div style="float: left; padding-left: 138px; margin-left: 59px;margin-top:-28px;">
        <%-- <div class="buttonContainer" style="float: left; padding-left: 106px">
           <asp:ImageButton runat="server" ID="SubmitButton" ImageUrl="~/images/btn_create.png" />--%>
           <table>
                <tr>
                    <td class="updateButton">
                        <asp:LinkButton ID="SubmitButton" runat="server" Text="" OnClientClick="SetManualValidator"></asp:LinkButton>
                    <td>
                    <td title="Cancel" class="cancelButton" style="padding-left: 10px;">
                        <%--<asp:ImageButton runat="server" ID="CancelButton" CausesValidation="false" ImageUrl="~/images/btn_cancel.png" />--%><asp:LinkButton
                            ID="CancelButton" CausesValidation="false" runat="server" Text=""></asp:LinkButton>
                    </td>
                </tr>
            </table>
        </div>
    </div>
      <br /> 
     <div style="padding-left:194px; padding-right:2px;">
     <div class="EditPageFooterLine"></div>
                        <uc2:ProviderSetupNextPreviousNavigator ID="psnBottom" runat="server" ShowToolTip="true"/>
                    </div>
</asp:Content>

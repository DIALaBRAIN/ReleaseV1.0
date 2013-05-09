<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="AddressEdit.aspx.cs" MasterPageFile="~/StandardMaster.master"
    Inherits="IntelArcade.WebApp.ProviderSetup.AddressEdit" %>
 <%@ Register Src="../UserControls/ProviderSetupNextPreviousNavigator.ascx" TagName="ProviderSetupNextPreviousNavigator"
    TagPrefix="uc2" %>
       <%@ Register Src="../UserControls/ProviderSetupNextPreviousNavigator.ascx" TagName="ProviderSetupNextPreviousNavigator"
    TagPrefix="uc3" %>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentHead" runat="server">
    <script type="text/javascript">
        //<![CDATA[
        function SetManualValidator() {
            $.each(Page_Validators, function (index, validator) {
                if (validator.validationGroup == "Register") {
                    ValidatorEnable(validator, true);
                }
            }); return false;
        }       

        //]]>
    </script>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentBody" runat="server">
    <h2 style="font-size: 1.2em">
        <%=PageTitle %></h2>
          <div> 
        <table style="width:100%;"><tr>
          <td style="width:190Px; position:absolute;">
                         <iac:FieldSet runat="server" ID="FieldSet10" Title="Edit Address" class="formData"></iac:FieldSet>
                            
                         </td> 
                            <td style="padding-left:190px;">    <uc2:ProviderSetupNextPreviousNavigator ID="psnTop" runat="server" ShowToolTip="true"/>
                           </td></tr></table>
         </div>          
                           
    <iac:FieldSet runat="server" ID="FieldSet1"  class="formData" style="margin-left: 58px; width:100%;  margin-bottom: -20px;" >
        <div style="border-top: 1px solid #cfcfcf; padding: 5px 0px 5px 0; margin-left: -51px; width:100%"></div><br />
                               <div  style="margin-left: 15px;">  
       <div  runat="server" id="divtext" visible="false" style="margin-top:-15px; margin-bottom:10px;">
                                   <i> The Invoice Address is required only if different to the Business Address.</i>
                                        <br /> 
                                </div> 
          <iac:InputContainer runat="server" ID="InputContainer1" Columns="1" style= " margin-left:58px;" >
<%--<Item Text="Address Line 1">  <asp:TextBox ID="txtAddressLine1" runat="server" /></Item>
<Item Text="Address Line 2">  <asp:TextBox ID="txtAddressLine2" runat="server" /></Item>
<Item Text="Town/City">  <asp:TextBox ID="txtCity" runat="server" /></Item>
<Item Text="County/State">  <asp:TextBox ID="txtCounty" runat="server" /></Item>
<Item Text="Post Code/Zip">  <asp:TextBox ID="txtPostCode" runat="server" /></Item>
<Item Text="Phone number">  <asp:TextBox ID="txtPhone" runat="server" /></Item>--%>

<Item Text="<%$ Resources:Labels,AddressLine1%>"><asp:TextBox runat="server" ID="txtAddressLine1" Width="350px" CssClass="aspTextBox"/>&nbsp; <span id="Span2" style="color:Red" >*</span> <iac:IARequiredFieldValidator runat="server" ID="rfvalAddressLine1" ControlToValidate="txtAddressLine1" RenderAsBlockElement="false" ValidationGroup="Register"  /></Item>
<Item Text="<%$ Resources:Labels,AddressLine2%>"><asp:TextBox runat="server" ID="txtAddressLine2" Width="350px" CssClass="aspTextBox"/></Item>
<Item Text="<%$ Resources:Labels,AddressLine3%>"><asp:TextBox runat="server" ID="txtAddressLine3" Width="350px" CssClass="aspTextBox"/></Item>
<Item Text="<%$ Resources:Labels,City%>"><asp:TextBox runat="server" ID="txtCity" Width="350px" CssClass="aspTextBox"/>&nbsp; <span id="requiredIndigator2" style="color:Red" >*</span> <iac:IARequiredFieldValidator runat="server" ID="rfvalCity" ControlToValidate="txtCity" RenderAsBlockElement="false" ValidationGroup="Register"/></Item>
<Item Text="County/State">  <asp:TextBox ID="txtCounty" runat="server" CssClass="aspTextBox"/></Item>
<Item Text="<%$ Resources:Labels,PostCode%>"><asp:TextBox runat="server" ID="txtPostCode"  CssClass="aspTextBox"/>&nbsp; <span id="Span1" style="color:Red" >*</span> <iac:IARequiredFieldValidator runat="server" ID="rfvalPostalCode" ControlToValidate="txtPostCode" RenderAsBlockElement="false" ValidationGroup = "Register" /></Item>
<Item Text="<%$ Resources:Labels,Country%>"> <asp:Label ID="lblCountry" runat="server" ></asp:Label>
  <iac:CountryDropDown runat="server" ID="cboRegisteredCountry" MaxHeight="200px" CssClass="aspTextBox" >
<Items><telerik:RadComboBoxItem Text="Select" Selected="true"/>
</Items></iac:CountryDropDown> 
</Item>
            </iac:InputContainer>
        </div>
    </iac:FieldSet>    
    <div style="float: left; padding-left: 125px; margin-left: 76px;">
        <table>
            <tr>
                <td class="updateButton" >
                    <asp:LinkButton ID="SubmitButton" runat="server" Text="" OnClientClick="SetManualValidator" ValidationGroup="Register"></asp:LinkButton>
                </td>
                <td title="Cancel" class="cancelButton" style="padding-left: 10px;">
                    <asp:LinkButton ID="CancelButton" runat="server" Text="" CausesValidation="false"></asp:LinkButton>
                </td>
            </tr>            
        </table>  
            
    </div>
    <br />
    <br />
     <div style="padding-left:194px; padding-right:2px;">
     <div class="EditPageFooterLine"></div>
                        <uc3:ProviderSetupNextPreviousNavigator ID="psnBottom" runat="server"  ShowToolTip="true"/>
                    </div>
    <asp:HiddenField ID="hdfAddressLine1" runat="server" /><asp:HiddenField ID="hdfAddressLine2" runat="server" />
    <asp:HiddenField ID="hdfAddressLine3" runat="server" /><asp:HiddenField ID="hdfCity" runat="server" />
    <asp:HiddenField ID="hdfCounty" runat="server" /><asp:HiddenField ID="hdfPostCode" runat="server" />
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentRightAbove" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentRightBelow" runat="server">
</asp:Content>

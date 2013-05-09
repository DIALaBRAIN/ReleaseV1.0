<%@ Page Title="" Language="C#" MasterPageFile="~/StandardMaster.master" AutoEventWireup="true" CodeBehind="ProviderPreferences.aspx.cs" Inherits="IntelArcade.WebApp.ProviderSetup.ProviderPreferences" %>
    <%@ Register src="~/UserControls/SimplePrepaySelector.ascx" tagname="SimplePrepaySelector" tagprefix="uc1" %>
    <%@ Register Src="../UserControls/ProviderSetupNextPreviousNavigator.ascx" TagName="ProviderSetupNextPreviousNavigator"
    TagPrefix="uc2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
    <h2 style="font-size: 1.2em">
        Preferences</h2>
         <table style="width:100%; align: left;"><tr>
                         <td style="width:190Px; position:absolute; padding-bottom:5px;">
                             <iac:FieldSet runat="server" ID="FieldSet10" Title="Edit Preferences" class="formData"></iac:FieldSet>
                            <br />
                         </td>    <td style="padding-left:190px;">  
                          <uc2:ProviderSetupNextPreviousNavigator ID="psnTop" runat="server" NavigatorShowType="PreviousOnly" ShowToolTip="true"/>
                           </td></tr>
                           </table>
                             <div class="EditPageFooterLine"></div>
         <div style="float: left; margin-left: 21px;margin-top:-28px;">
    <iac:FieldSet runat="server" ID="FieldSet2" class="formData">
        <div style="padding: 5px 0px 1px 0;">
            <br />
             
            <iac:InputContainer runat="server" ID="InputContainer2">

                    <Item Text="My Time Zone"  >
             
                     <iac:TimeZoneDropDown  Toolip="sdfsdfsdf" ID="TimeZonesDropDown" runat="server" Width="300px" MaxHeight="200px" >
                      <Items><telerik:RadComboBoxItem Text="Select" Selected="true"/></Items></iac:TimeZoneDropDown>
                         
                         <span class="validators">
                    <span id="Span1" ></span>
                        <asp:RequiredFieldValidator runat="server" InitialValue="Select" ID="TimeZoneRequried" ControlToValidate="TimeZonesDropDown" Text="Required" ToolTip="Required" ValidationGroup="update1" Display="Dynamic" />    
                    </span>
                     </Item>

                      <Item Text="Auto load prepay">
                       <span class="tooltip3">
                 <tel:RadComboBox ID="RadComboBoxLoadPrePay" AutoPostBack="true" Runat="server">
                 <Items>
                 <tel:RadComboBoxItem Value="deafult"  Text="Do not load"/>
                      <tel:RadComboBoxItem Value="5"  Text="5 hrs"/>
                      <tel:RadComboBoxItem Value="20"  Text="20 hrs"/>
                      <tel:RadComboBoxItem Value="100"  Text="100 hrs"/>
               
                 </Items>
                 </tel:RadComboBox>
                  <span class="custom info" style="width:230px;">Prepay d<label style=" color: #FF9900;font-weight: bold;">b</label>-<i>Time</i> will be automatically <br />loaded if your <label style=" color: #FF9900;font-weight: bold;">b</label>-<i>Time</i> is less than <br />1 hour.</span>
             </span>
                       <span class="validators">
                 <span id="requiredIndigator11" style="border-bottom:1px solid #3f3f3f;">
                                                <asp:Label runat="server" ID="lblPrepayTotelAmount"></asp:Label>
                         </span> 
                             </span>
                     </Item>
                   
                      <Item Text="Minimum booking time">
                <div class="tooltip4">
                 <tel:RadNumericTextBox runat="server" ID="fsDuration" Width="75px" Type="Number"
                IncrementSettings-Step="5" MinValue="5" MaxValue="1440" Value="15" ShowSpinButtons="true">
                <NumberFormat DecimalDigits="0" />
            </tel:RadNumericTextBox>
                
          <label style="font-weight:normal;color:Black"> (mins)</label> 
                   
          <div class="custom info">Billing is still done on a per minute basis,<br />  although,"No Show" penalties are based<br />on the  booked time.</div>
              </div>  
             
             </Item>
            </iac:InputContainer>
        </div>
    </iac:FieldSet>
    </div>  
    <div class="buttonContainer" style="float: left; padding-left: 200px;margin-top:-35px">

    <table>
    <tr><td class="updateButton">
     <asp:LinkButton ValidationGroup="update1" ID="SubmitButton" runat="server" Text=""></asp:LinkButton>
    
    </td>
    
   <td class="cancelButton" style="padding-left:10px; margin-top:3px;"><asp:LinkButton ID="CancelButton" runat="server" Text=""></asp:LinkButton></td>
    </tr>
    </table>
   
    </div>


     <br />   <br />   <br /> 
     <div style="padding-left:194px;padding-top:120px; padding-right:2px;">
     <div class="EditPageFooterLine"></div>
                        <uc2:ProviderSetupNextPreviousNavigator ID="psnBottom" runat="server" NavigatorShowType="PreviousOnly" ShowToolTip="true"/>
                    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentRightAbove" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentRightBelow" runat="server">
</asp:Content>

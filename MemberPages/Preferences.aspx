<%@ Page Title="" Language="C#" MasterPageFile="~/StandardMaster.master" AutoEventWireup="true"
    CodeBehind="Preferences.aspx.cs" Inherits="IntelArcade.WebApp.MemberPages.Preferences" %>
    <%@ Register src="~/UserControls/SimplePrepaySelector.ascx" tagname="SimplePrepaySelector" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
    <h2 style="font-size: 1.2em">
        Preferences</h2>
    <%-- <iac:FieldSet runat="server" ID="FieldSet1" Title="<%$ Resources:FieldsetTitles,ProviderContactRules %>" class="formData" >
        <div style="border-top: 1px solid #cfcfcf; padding: 5px 0px 5px 0;"><br/>
            <iac:InputContainer runat="server" ID="InputContainer1">
                    <Item Text="Before Initiating Contact With Me, Providers">
                        <iac:IACheckBoxList runat="server" ID="ProviderContactRules">
                            <asp:ListItem Value="F" Text="<%$ Resources:Labels,ProviderContactRule_Favourites %>"></asp:ListItem>
                            <asp:ListItem Value="H" Text="<%$ Resources:Labels,ProviderContactRule_History %>"></asp:ListItem>
                        </iac:IACheckBoxList>
                     </Item>
            </iac:InputContainer>
    </div>
    </iac:FieldSet>--%>
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
                  <span class="custom info" style="width:230px;">Prepay d<label style=" color: #FF9900;font-weight: bold;">b</label>-<i>Time</i> will be automatically <br />loaded if your  d<label style=" color: #FF9900;font-weight: bold;">b</label>-<i>Time</i> is less than <br />1 hour.</span>
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
    <div class="buttonContainer" style="float: left; padding-left: 247px;margin-top:-12px">

    <table>
    <tr><td class="updateButton">
     <asp:LinkButton ValidationGroup="update1" ID="SubmitButton" runat="server" Text=""></asp:LinkButton>
    
    </td>
    
   <td class="cancelButton" style="padding-left:10px;"><asp:LinkButton ID="CancelButton" runat="server" Text=""></asp:LinkButton></td>
    </tr>
    </table>
   
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentRightAbove" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentRightBelow" runat="server">
</asp:Content>

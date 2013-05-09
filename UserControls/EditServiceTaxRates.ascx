<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="EditServiceTaxRates.ascx.cs" Inherits="IntelArcade.WebApp.UserControls.EditServiceTaxRates" %>

    <script type="text/javascript">
        function CloseModal() {
            var oWnd = GetRadWindowManager().getWindowByName("RadWindowCustomRate");
            oWnd.close();
        }

 function OnClientClick() {
               var win = $find('<%=RadWindowCustomRate.ClientID %>');
               win.Close();
           }
          
    </script>
    <style>
    label {
   padding-left:10px
}
    </style>
    <iac:FieldSet runat="server" ID="FieldSetRates" Title="Tax Rates" class="formData">
        <div style="border-top: 1px solid #cfcfcf; padding: 5px 0px 5px 0;">
            <br />
            <div class="addButton" title="Add Custom Rate" style="float:right;">
                            <asp:LinkButton ID="lnkAddCustomRate" runat="server" Text=""></asp:LinkButton>

            </div>
            <tel:RadWindowManager ID="RadWindowManager1" runat="server" >
                <Windows>
                    <tel:RadWindow ID="RadWindowCustomRate" Behaviors="Close,Move,Minimize" VisibleStatusbar="false" 
                            Width="545px" Height="340px" Modal="true" Overlay="false" EnableShadow="true"
                            VisibleTitlebar="true" OnClientBeforeShow="__ia_ResetPopup" runat="server" AutoSize="true">
                        <ContentTemplate>
                        <div runat="server" id="ContainerHeader" style="width: 502px; height: 20px" class="dialogHeader">
                           <label>Add Tax Name</label>     </div>
                         <div runat="server" id="ContainerPreFooter" style="width: 485px; border-top: 0px; padding-bottom:15px;"
                                    class="dialogPreFooter">
                            <div style="padding: 10px;">
                            <div style="padding-bottom:5px;font-size: 12px">Please give a name to tax rate eg : Standard or Education ect.</div>
                                <label id="lblRateName" runat="server" style="font-size:12px;color:#006C9E;">
                                    Tax Rate Name:</label>&nbsp;<asp:TextBox style="margin-left:22px" ID="txtNewRateName" runat="server" ValidationGroup="NewRateName" />&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1"
                                        runat="server" ValidationGroup="NewRateName" Enabled="true" ControlToValidate="txtNewRateName"
                                        ErrorMessage="Required" Display="Dynamic" />
                            </div>
                            </div>                        
                        <div runat="server" id="ContainerFooter" style="width: 510px; height: 50px;" class="dialogFooter">
                                <asp:LinkButton ID="BtnAddNewRate" ValidationGroup="NewRateName" Style="float: right;
                                        margin-right: 15px; margin-top: 20px" runat="server">Create</asp:LinkButton>
                                    <a runat="server" style="float: left; margin-left: 15px; margin-top: 20px" id="CloseWindowLink"
                                        href="javascript:OnClientClick();">Cancel</a>
                             
                            </div>
                        </ContentTemplate>
                    </tel:RadWindow>
                </Windows>
            </tel:RadWindowManager>
           <iac:TaxRates runat="server" ID="taxRates" />
        </div>
    </iac:FieldSet>
    <div style="float: left; padding-left: 155px;">
        <table>
            <tr>
           
                <td class="updateButton" style="display:none">
                    <asp:LinkButton ID="SubmitButton" runat="server" Text=""></asp:LinkButton>
                </td>
                 <td>
                <asp:CheckBox ID="CheckBox_applyAll" runat="server" style="padding-left:10px;font-size:11px;margin-left:50px;" AutoPostBack="true" Checked="false"  
                    Text="Apply to all services" 
                    oncheckedchanged="CheckBox_applyAll_CheckedChanged"/>
            </td>
                <td title="Cancel" class="cancelButton"  style="padding-left: 10px;display:none">
                    <asp:LinkButton ID="CancelButton" Text="" runat="server" CausesValidation="false"></asp:LinkButton>
                </td>
            </tr>
        </table>
    </div>

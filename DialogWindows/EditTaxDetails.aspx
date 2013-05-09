<%@ Page Title="" Language="C#" MasterPageFile="~/DialogMaster.Master" AutoEventWireup="true"
    CodeBehind="EditTaxDetails.aspx.cs" Inherits="IntelArcade.WebApp.DialogWindows.EditTaxDetails" %>

<asp:Content ContentPlaceHolderID="ContentHead" runat="server">
    <script language="javascript" type="text/javascript">
        function returnToParent(doPostback, response, argument) {
            //create the argument that will be returned to the parent page
            var oArg = new Object();
            //get a reference to the current RadWindow
            var oWnd = GetRadWindow();
            //Close the RadWindow and send the argument to the parent page
            oWnd.close(oArg);
        }

        function TaxNumberValidate(sender, args) {
            if (args.Value != "") {
                if (document.getElementById('<%= taxName.ClientID %>').value == "") {
                    args.IsValid = false;
                }
            }
        }

        var taxNameCombo;

        function pageLoad() {
            // initialize the global variables
            // in this event all client objects 
            // are already created and initialized 
            taxNameCombo = $find("<%= taxName.ClientID %>");
        }

        function LoadTaxNames(sender, eventArgs) {
            var item = eventArgs.get_item();

            //            taxNameCombo.set_text("Loading...");
            // this will fire the ItemsRequested event of the
            // cities combobox passing the countryID as a parameter 
            taxNameCombo.requestItems(item.get_value(), false);
        }

    </script>
</asp:Content>
<asp:Content ContentPlaceHolderID="ContentDialogHeader" runat="server">
    <iac:HeaderText runat="server" Text="Tax Details" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
    <div style="padding:8px; padding-left:18px;">
        <iac:InputContainer runat="server" ID="InputContainer1" Columns="1">
            
            <Item Text="<%$ Resources:Labels,Country%>"><asp:Label ID="lblCountry" runat="server"></asp:Label> <tel:RadComboBox runat="server" Width="200px" Height="22px" EmptyMessage="Please select a country" OnClientSelectedIndexChanging="LoadTaxNames"  ID="drpCountry" ></tel:RadComboBox>&nbsp;<iac:IARequiredFieldValidator runat="server" ID="rfvalCountry" ControlToValidate="drpCountry" RenderAsBlockElement="false" /></Item>
            <%--<Item Text="<%$ Resources:Labels,Country%>"><iac:CountryDropDown runat="server" ID="drpCountry"  Width="205px" />&nbsp;<iac:IARequiredFieldValidator runat="server" ID="rfvalCountry" ControlToValidate="drpCountry" RenderAsBlockElement="false" /></Item>--%>
            <Item Text="Tax" ><asp:Label ID="lblTaxName" runat="server"></asp:Label><tel:RadComboBox ID="taxName" runat="server" MaxLength=5 AllowCustomText="true"  Width="200px" Height="22px"></tel:RadComboBox>&nbsp;<asp:CustomValidator ID="CustomValidator1" runat="server" ClientValidationFunction="TaxNumberValidate" ControlToValidate="TaxNumber" ErrorMessage="Required"></asp:CustomValidator></Item>
            <Item Text="<%$ Resources:Labels,TaxNumber%>" ><asp:Label ID="lblTxNo" runat="server"></asp:Label> <asp:TextBox runat="server" ID="TaxNumber" Width="200px" Height="20px"/></Item>
        </iac:InputContainer>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentDialogPreFooter" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentDialogFooter" runat="server">
    <div style="float:left">
      <a id="CloseWindowLink"
            href="javascript:returnToParent();" runat="server">Cancel</a>
    </div>
    <div id="ButtonPanel" style="text-align: right; width: 100%;">
     <asp:LinkButton ID="btnUpdate" Text="Save" runat="server" />
      </div>


</asp:Content>

<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="TaxDetailsEdit.aspx.cs"
    MasterPageFile="~/StandardMaster.master" Inherits="IntelArcade.WebApp.TaxDetailsEdit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentBody" runat="server">
    <script language="javascript">
        function TaxNumberValidate(sender, args) {
            if (args.Value != "") {
                if (document.getElementById('<%= taxName.ClientID %>').value == "") {
                    args.IsValid = false;
                }
            }
        }

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
                window.location.href = "../MemberPages/TaxDetailsDisplay.aspx";
            }
        }

    </script>
    <iac:ClientResponseHandler runat="server" ID="DialogResponseHandler" />
    <h2>
        <%=PageTitle %></h2>
             <asp:UpdatePanel ID="ImageRedrawPanel" runat="server" ChildrenAsTriggers="true"
    UpdateMode="Conditional" >
    <ContentTemplate>
    <iac:FieldSet runat="server" ID="FieldSet1" Title="Tax Details" class="formData">
        <div style="border-top: 1px solid #cfcfcf; padding: 5px 0px 5px 0;">
            <br />
            <iac:InputContainer runat="server" ID="InputContainer1" Columns="1">
            <Item Text="<%$ Resources:Labels,Country%>"><iac:CountryDropDown runat="server" ID="drpCountry" Enabled="false" MaxHeight="200px" Width="205px" >
            <Items><telerik:RadComboBoxItem Text="Select" Selected="true"/></Items></iac:CountryDropDown>&nbsp;<iac:IARequiredFieldValidator runat="server" ID="rfvalCountry" ControlToValidate="drpCountry" InitialValue="Select" RenderAsBlockElement="false" /></Item>
            <Item Text="Tax" ><tel:RadComboBox ID="taxName" runat="server" MaxLength=5 AllowCustomText="true"  Width="205px"></tel:RadComboBox>&nbsp;
            <asp:CustomValidator ID="CustomValidator1" runat="server" ClientValidationFunction="TaxNumberValidate" ControlToValidate="taxName" ErrorMessage="Required"></asp:CustomValidator></Item>
            <Item Text="<%$ Resources:Labels,TaxNumber%>" ><asp:TextBox runat="server" ID="TaxNumber" Width="200px" /></Item>
            </iac:InputContainer>
        </div>
    </iac:FieldSet>
    <div style="float: left; padding-left: 105px;">
        <table>
            <tr>
                <td>
                    <div class="updateButton"><asp:LinkButton ID="SubmitButton" runat="server" Text=""></asp:LinkButton></div>
                    
                </td>
                <td class="cancelButton" title="Cancel" style="padding-left: 10px;">
                    <asp:LinkButton ID="CancelButton" runat="server" Text="" CausesValidation="false" />
                </td>
            </tr>
        </table>
    </div>     </ContentTemplate></asp:UpdatePanel>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentRightAbove" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentRightBelow" runat="server">
</asp:Content>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PriceLimitEdit.aspx.cs"
    MasterPageFile="~/AdminMaster.Master" Inherits="IntelArcade.WebApp.Admin.PriceLimitEdit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentBody" runat="server">
    <script type="text/javascript">

        function LoadSubjects(sender, eventArgs) {
            subjectCombo = $find("<%= rcbSubjectCategory.ClientID %>");
            var item = eventArgs.get_item();
            subjectCombo.set_text("Loading...");

            // if a continent is selected
            if (item.get_index() > 0) {
                // this will fire the ItemsRequested event of the 
                // countries combobox passing the continentID as a parameter 
                subjectCombo.requestItems(item.get_value(), false);
            }
            else {
                // the -Select a continent- item was chosen
                subjectCombo.set_text(" ");
                subjectCombo.clearItems();

            }

        }

        function ItemsLoaded(sender, eventArgs) {
            if (sender.get_items().get_count() > 0) {
                // pre-select the first item
                sender.set_text(sender.get_items().getItem(0).get_text());
                sender.get_items().getItem(0).highlight();
            }
            //        subjectCombo.clearSelection();
            sender.showDropDown();
        }

        function SubjectSelect(sender, eventArgs) {
            subjectCombo = $find("<%= rcbSubjectCategory.ClientID %>");
            //        __doPostBack('rcbSubjectCategory', '');

        }

        function LoadCurrency(sender, eventArgs) {
            currencyCombo = $find("<%= rcbCurrency.ClientID %>");
            var item = eventArgs.get_item();
            currencyCombo.set_text("Loading...");

            // if a continent is selected
            if (item.get_index() > 0) {
                // this will fire the ItemsRequested event of the 
                // countries combobox passing the continentID as a parameter 
                currencyCombo.requestItems(item.get_value(), false);
            }
            else {
                // the -Select a continent- item was chosen
                currencyCombo.set_text(" ");
                currencyCombo.clearItems();

            }
        }

        function CurrencySelectedIndexChanged(sender, eventArgs) {
            //            currencyCombo = $find("<%= rcbCurrency.ClientID %>");
            //            currencyCombo.set_text("test");
        }

    </script>
    <div>
        <iac:FieldSet runat="server" ID="FieldSet1" Title="Edit Price Limit" class="formData">
            <div style="border-top: 1px solid #cfcfcf; padding: 5px 0px 5px 0;">
                <br />
                <telerik:RadComboBox runat="server" ID="rcbParentSubjects" OnClientSelectedIndexChanging="LoadSubjects"
                    OnItemsRequested="rcbParentSubjects_ItemsRequested">
                </telerik:RadComboBox>
                <telerik:RadComboBox runat="server" ID="rcbSubjectCategory" OnItemsRequested="rcbSubjectCategory_ItemsRequested"
                    OnClientItemsRequested="ItemsLoaded" OnClientSelectedIndexChanging="LoadCurrency"
                    EnableViewState="false">
                </telerik:RadComboBox>
                <telerik:RadComboBox runat="server" ID="rcbCurrency" OnItemsRequested="rcbCurrency_ItemsRequested"
                    OnClientItemsRequested="ItemsLoaded" OnSelectedIndexChanged="rcbCurrency_SelectedIndexChanged"
                    EnableViewState="false" AutoPostBack="true">
                </telerik:RadComboBox>
                &nbsp;
                <iac:IARequiredFieldValidator runat="server" ValidationGroup="update" ID="rfValCurrency"
                    ControlToValidate="rcbCurrency" />
            </div>
            <iac:InputContainer runat="server" ID="InputContainer1" Columns="1">
                <item Text="Minimum value"> <iac:CurrencyBox ID="cbMinValue" runat="server"></iac:CurrencyBox>&nbsp;<iac:IARequiredFieldValidator runat="server" ValidationGroup="update" ID="rfValMinValue" ControlToValidate="cbMinValue"/></item>
                <item Text="Maximum value"> <iac:CurrencyBox ID="cbMaxValue" runat="server"></iac:CurrencyBox>&nbsp;<iac:IARequiredFieldValidator runat="server" ValidationGroup="update" ID="rfValMaxValue" ControlToValidate="cbMaxValue"  /></item>
            </iac:InputContainer>
            <div class="buttonContainer" style="float: left; padding-left: 0px">
                <asp:ImageButton runat="server" ID="SubmitButton" ValidationGroup="update" ImageUrl="~/images/btn_update.png" />&nbsp;<%--<asp:ImageButton runat="server" ID="CancelButton" CausesValidation="false" ImageUrl="~/images/btn_cancel.png" />--%></div>
        </iac:FieldSet>
    </div>
    <div style="display:none">
        <tel:RadGrid ID="rgPriceLimit" runat="server">
            <MasterTableView AutoGenerateColumns="false" DataKeyNames="ParentSubject.SubjectID">
                <DetailTables>
                    <tel:GridTableView DataKeyNames="SubjectList.SubjectID" >
                        <Columns>
                            <tel:GridBoundColumn DataField="SubjectList.SubjectName" UniqueName="SubjectName"
                                HeaderText="Subject Name">
                            </tel:GridBoundColumn>
                        </Columns>
                    </tel:GridTableView>
                </DetailTables>
                <Columns>
                    <tel:GridBoundColumn DataField="ParentSubject.SubjectName" UniqueName="ParentSubjectName"
                        HeaderText="Subject Name">
                    </tel:GridBoundColumn>
                </Columns>
            </MasterTableView>
        </tel:RadGrid>
    </div>
</asp:Content>

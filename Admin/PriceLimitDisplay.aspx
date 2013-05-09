<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true"
    CodeBehind="PriceLimitDisplay.aspx.cs" Inherits="IntelArcade.WebApp.Admin.PriceLimitDisplay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
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



    </script>
    <iac:FieldSet runat="server" ID="FieldSet1" Title="Price Limit" class="formData">
        <div style="border-top: 1px solid #cfcfcf; padding: 5px 0px 5px 0;">
            <div style="padding-bottom:10px;">
                <telerik:RadComboBox runat="server" ID="rcbParentSubjects" OnItemsRequested="rcbParentSubjects_ItemsRequested"
                     OnClientSelectedIndexChanging="LoadSubjects" EmptyMessage="Select a Subject"
                    >
                </telerik:RadComboBox>
                <telerik:RadComboBox runat="server" ID="rcbSubjectCategory" OnItemsRequested="rcbSubjectCategory_ItemsRequested"
                    OnClientItemsRequested="ItemsLoaded" EnableViewState="false" AutoPostBack="true"
                    OnSelectedIndexChanged="rcbSubjects_SelectedIndexChanged">
                </telerik:RadComboBox>
            </div>
            <div>
                <telerik:RadGrid ID="RadGrid1" AllowPaging="true" AllowSorting="true" PageSize="10"
                    runat="server">
                    <MasterTableView AutoGenerateColumns="false">
                        <Columns>
                            <telerik:GridBoundColumn DataField="CurrencyCode" UniqueName="CurrencyCode" HeaderText="Currency Code">
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="Min" UniqueName="Min" HeaderText="Minimum">
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="Max" UniqueName="Max" HeaderText="Maximum">
                            </telerik:GridBoundColumn>
                        </Columns>
                    </MasterTableView>
                </telerik:RadGrid>
            </div>
        </div>
    </iac:FieldSet>
</asp:Content>

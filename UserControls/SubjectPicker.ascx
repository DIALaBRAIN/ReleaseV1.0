<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SubjectPicker.ascx.cs" Inherits="IntelArcade.WebApp.UserControls.SubjectPicker" %>
<script type="text/javascript">
    var countriesCombo;



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
<telerik:RadComboBox runat="server" ID="rcbParentSubjects"   OnClientSelectedIndexChanging="LoadSubjects" OnItemsRequested="rcbParentSubjects_ItemsRequested"> </telerik:RadComboBox>
<telerik:RadComboBox runat="server" ID="rcbSubjectCategory"  OnItemsRequested="rcbSubjectCategory_ItemsRequested"  OnClientItemsRequested="ItemsLoaded"  EnableLoadOnDemand="true"></telerik:RadComboBox>
<iac:IARequiredFieldValidator runat="server" ID="rfValSubject" ControlToValidate="rcbSubjectCategory" RenderAsBlockElement="true" />
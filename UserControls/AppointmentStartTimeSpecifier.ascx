<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AppointmentStartTimeSpecifier.ascx.cs"
    Inherits="IntelArcade.WebApp.UserControls.AppointmentStartTimeSpecifier" %>
<%@ Register Src="~/SchedulerControls/SpecifyStartTimeEdit.ascx" TagName="AdvancedForm"
    TagPrefix="uc1" %>
<script type="text/javascript">
    function OnClientTimeSlotClick(sender, eventArgs) {
        //    var apt = eventArgs.get_appointment();
        //    alert("You clicked on an appointment with the subject: " + apt.get_subject());

    }

    function editAppointment(sender, e) {
        var apt = e.get_appointment();
        sender.editAppointmentWithConfirmation(apt);
    }
    function insertAppointment(sender, e) {
        var slot = sender.get_activeModel().getTimeSlotFromDomElement(e.get_domEvent().target);
        sender.showInsertFormAt(slot);
    }

    function OnClientAppointmentMoveStart(sender, eventArgs) {
        eventArgs.set_cancel(true);
    } 

</script>
<div style="clear: both;" class="defaultScheduler">
    <asp:ScriptManagerProxy ID="ScriptManagerProxy1" runat="server">
        <Scripts>
            <asp:ScriptReference Path="~/Client/SchedulerAdvancedForm.js" />
        </Scripts>
    </asp:ScriptManagerProxy>
    <tel:RadAjaxLoadingPanel runat="server" ID="RadAjaxLoadingPanel1" EnableSkinTransparency="true"
        Skin="WebBlue" />
    <tel:RadAjaxManagerProxy ID="RadAjaxManagerProxy1" runat="server">
        <AjaxSettings>
            <tel:AjaxSetting AjaxControlID="RadScheduler1">
                <UpdatedControls>
                    <tel:AjaxUpdatedControl ControlID="RadScheduler1" LoadingPanelID="RadAjaxLoadingPanel1" />
                </UpdatedControls>
            </tel:AjaxSetting>
        </AjaxSettings>
    </tel:RadAjaxManagerProxy>
    <tel:RadScheduler runat="server" ID="RadScheduler1" Skin="Windows7" Height="290px"
        AppointmentStyleMode="Default" FirstDayOfWeek="Monday" LastDayOfWeek="Sunday"
        SelectedView="MonthView" ShowFullTime="false" AllowEdit="true" AllowInsert="false"
        AllowDelete="false" StartEditingInAdvancedForm="true"
        ShowAllDayRow="false" TimelineView-NumberOfSlots="7" EnableDescriptionField="true"
        EnableResourceEditing="false" CustomAttributeNames="ItemType" OnClientFormCreated="schedulerFormCreated"
        OnClientAppointmentMoveStart="OnClientAppointmentMoveStart" OnClientAppointmentClick="editAppointment">
        <AdvancedEditTemplate>
            <uc1:AdvancedForm runat="server" ID="AdvancedEditForm" Mode="Edit" Start='<%# Bind("Start") %>'
                End='<%# Bind("End") %>' Duration="<%# GetDuration() %>" />
        </AdvancedEditTemplate>
        <Localization Save="Accept" />
    </tel:RadScheduler>
</div>

<%@ Page Title="" Language="C#" MasterPageFile="~/StandardMaster.master" AutoEventWireup="true"
    CodeBehind="Availability.aspx.cs" Inherits="IntelArcade.WebApp.MemberPages.Availability" %>

<%@ Register Src="~/SchedulerControls/AvailabilityEdit.ascx" TagName="AdvancedForm"
    TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentHead" runat="server">
    <script language="javascript" type="text/javascript">
        function __tmpAvailabilityType_Load(sender) {
            var val = sender.get_value();
            document.getElementById("__MockGroupPanel").style.display = val == "3" ? "block" : "none";
        }

        function __tmpAvailabilityType_Changed(sender, args) {
            var val = args.get_item().get_value();
            document.getElementById("__MockGroupPanel").style.display = val == "3" ? "block" : "none";
        }

        function editAppointment(sender, e) {
            var apt = e.get_appointment();
            sender.editAppointmentWithConfirmation(apt);
        }
        function insertAppointment(sender, e) {
            var slot = sender.get_activeModel().getTimeSlotFromDomElement(e.get_domEvent().target);
            sender.showInsertFormAt(slot);
        }

        function OnClientRecurrenceActionDialogShowing(sender, args) {
            if (args.get_recurrenceAction() == 2 || args.get_recurrenceAction() == 3) {
                args.set_editSeries(true);
                var $ = $telerik.$;
                setTimeout(function () {
                    $(".rsModalInner .rsModalContent :first").hide();
                    $(".rsModalInner .rsModalContent :radio").attr("checked", "checked");
                }, 100);
            }

        }

    </script>
    <style type="text/css">
        .rsApt
        {
            width: 100% !important;
        }
        .RadScheduler .rsBlockEdit .rsAptResize
        {
            visibility: hidden !important;
        }
        .RadScheduler .rsApt, .RadScheduler .rsAptPai, .RadScheduler .rsAptFilho
        {
            left: 0% !important;
        }
        .RadScheduler .rsAptFilho
        {
            width: 100% !important;
            z-index: 11 !important;
        }
        .RadScheduler .rsAptPai
        {
            opacity: 0.5;
            -moz-opacity: 0.5;
            filter: alpha(opacity=50);
        }
        .RadScheduler .rsWrap
        {
            z-index: 10 !important;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
    <asp:ScriptManagerProxy runat="server">
        <Scripts>
            <asp:ScriptReference Path="~/Client/AvailabilityAdvancedForm.js" />
        </Scripts>
    </asp:ScriptManagerProxy>
    <div>
        <h2 style="font-size: 1.2em">
            My Availability</h2>
        <p style="text-align: justify;">
            Use this feature to manage your availability. This tool allows you to block out
            the hours that you are not available, so that <i>Seekers</i> may request appointments
            in your open times. The tool also allows you to block out specific hours, recurring
            times and even vacation time. The system will not allow <i>Seekers</i> to request
            appointments for times that you have explicitly declared unavailable.</p>
        <iac:SchedulerKey runat="server" ID="SchedulerKey" />
        <div>
            <asp:CustomValidator runat="server" ID="cvAvailability"></asp:CustomValidator>
        </div>
        <div style="clear: both;" class="defaultScheduler">
            <tel:RadAjaxLoadingPanel runat="server" ID="RadAjaxLoadingPanel1" EnableSkinTransparency="true"
                Skin="WebBlue" />
            <tel:RadAjaxManager ID="RadAjaxManager1" runat="server">
                <AjaxSettings>
                    <tel:AjaxSetting AjaxControlID="RadScheduler1">
                        <UpdatedControls>
                            <tel:AjaxUpdatedControl ControlID="RadScheduler1" LoadingPanelID="RadAjaxLoadingPanel1" />
                        </UpdatedControls>
                    </tel:AjaxSetting>
                </AjaxSettings>
            </tel:RadAjaxManager>
            <tel:RadAjaxLoadingPanel runat="server" ID="RadAjaxLoadingPanel2" EnableSkinTransparency="true"
                Skin="WebBlue" />
            <tel:RadScheduler runat="server" ID="RadScheduler1" Skin="Windows7" Height="550px"
                AppointmentStyleMode="Default" FirstDayOfWeek="Monday" LastDayOfWeek="Sunday"
                SelectedView="WeekView" ShowFullTime="false" StartEditingInAdvancedForm="true"
                StartInsertingInAdvancedForm="true" ShowAllDayRow="false" TimelineView-NumberOfSlots="7"
                EnableDescriptionField="true" EnableResourceEditing="true" CustomAttributeNames="ItemType,EntityVersion"
                OnClientFormCreated="schedulerFormCreated" OnClientTimeSlotClick="insertAppointment"
                RowHeight="16px" OnClientAppointmentClick="editAppointment" OnClientRecurrenceActionDialogShowing="OnClientRecurrenceActionDialogShowing">
                <AdvancedForm Modal="true" />
                <AdvancedEditTemplate>
                    <uc1:AdvancedForm runat="server" ID="AdvancedEditForm" Mode="Edit" Availability='<%# Bind("ItemType") %>'
                        Subject='<%# Bind("Subject") %>' Description='<%# Bind("Description") %>' Start='<%# Bind("Start") %>'
                        End='<%# Bind("End") %>' RecurrenceRuleText='<%# Bind("RecurrenceRule") %>' EntityVersion='<%# Bind("EntityVersion") %>' />
                </AdvancedEditTemplate>
                <AdvancedInsertTemplate>
                    <uc1:AdvancedForm runat="server" ID="AdvancedInsertForm" Mode="Insert" Availability='<%# Bind("ItemType") %>'
                        Subject='<%# Bind("Subject") %>' Description='<%# Bind("Description") %>' Start='<%# Bind("Start") %>'
                        End='<%# Bind("End") %>' RecurrenceRuleText='<%# Bind("RecurrenceRule") %>' />
                </AdvancedInsertTemplate>
            </tel:RadScheduler>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentRightAbove" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentRightBelow" runat="server">
</asp:Content>

<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/StandardMaster.master"
    CodeBehind="Schedule.aspx.cs" Inherits="IntelArcade.WebApp.Schedule" %>

<%@ Register Src="~/SchedulerControls/AvailabilityEdit.ascx" TagName="AdvancedForm"
    TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
        <style>
            .rsApt
            {
                width: 100% !important;
            }
        </style>
    <asp:ScriptManagerProxy ID="ScriptManagerProxy1" runat="server">
        <Scripts>
            <asp:ScriptReference Path="~/Client/SchedulerAdvancedForm.js" />
        </Scripts>

    </asp:ScriptManagerProxy>
    <div>
        <h2>
            My Schedule</h2>
        <%--<iac:MoreLess ID="MoreLess1" runat="server">
            <Less>--%>
                <%--<p>Use this feature to review your schedule at a glance...</p>--%>
                <%--</Less>
                <More>--%>
                <p style="text-align:justify;">Use this feature to review your schedule at a glance. To check your Requested or Confirmed appointments.  You may view the schedule by Day, Week, Month or Timeline.  This tool is only for review, no alterations can be made from this view. </p>
         <%--   </More>
        </iac:MoreLess>--%>
    </div>
    <iac:SchedulerKey runat="server" ID="SchedulerKey" />
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
        <tel:RadScheduler runat="server" ID="RadScheduler1" Skin="Windows7" Height="550px"
            AppointmentStyleMode="Default" FirstDayOfWeek="Monday" LastDayOfWeek="Sunday"
            SelectedView="WeekView" ShowFullTime="false" AllowEdit="false" AllowInsert="false"
            AllowDelete="false" StartEditingInAdvancedForm="true" StartInsertingInAdvancedForm="true"
            ShowAllDayRow="false" TimelineView-NumberOfSlots="7" EnableDescriptionField="true"
            EnableResourceEditing="true" CustomAttributeNames="ItemType" OnClientFormCreated="schedulerFormCreated" RowHeight="16px">
            <%--AppointmentStyleMode must be explicitly set to Default (see above) otherwise setting BackColor/BorderColor will switch the appointments to Simple rendering (no rounded corners and gradients)--%>
            <AdvancedEditTemplate>
                <uc1:AdvancedForm runat="server" ID="AdvancedEditForm" Mode="Edit" Availability='<%# Bind("ItemType") %>'
                    Subject='<%# Bind("Subject") %>' Description='<%# Bind("Description") %>' Start='<%# Bind("Start") %>'
                    End='<%# Bind("End") %>' RecurrenceRuleText='<%# Bind("RecurrenceRule") %>' />
            </AdvancedEditTemplate>
            <AdvancedInsertTemplate>
                <uc1:AdvancedForm runat="server" ID="AdvancedInsertForm" Mode="Insert" Availability='<%# Bind("ItemType") %>'
                    Subject='<%# Bind("Subject") %>' Description='<%# Bind("Description") %>' Start='<%# Bind("Start") %>'
                    End='<%# Bind("End") %>' RecurrenceRuleText='<%# Bind("RecurrenceRule") %>' />
            </AdvancedInsertTemplate>
        </tel:RadScheduler>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentRightAbove" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentRightBelow" runat="server">
</asp:Content>

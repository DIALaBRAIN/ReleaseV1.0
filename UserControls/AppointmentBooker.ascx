<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AppointmentBooker.ascx.cs" Inherits="IntelArcade.WebApp.UserControls.AppointmentBooker" %>
<%@ Register src="~/SchedulerControls/AppointmentEdit.ascx" tagname="AdvancedForm" tagprefix="uc1" %>

<script type="text/javascript">
    function OnClientTimeSlotClick(sender, eventArgs)
  {
  }

  function editAppointment(sender, e) {
      var apt = e.get_appointment();
      sender.editAppointmentWithConfirmation(apt);
  }
  function insertAppointment(sender, e) {
      var slot = sender.get_activeModel().getTimeSlotFromDomElement(e.get_domEvent().target);
      sender.showInsertFormAt(slot);
  }
  </script>
<div style="clear:both;" class="defaultScheduler">
    <asp:ScriptManagerProxy runat="server">
        <Scripts>
            <asp:ScriptReference Path="~/Client/SchedulerAdvancedFormApt.js" />
        </Scripts>
    </asp:ScriptManagerProxy>
    <tel:RadAjaxLoadingPanel runat="server" ID="RadAjaxLoadingPanel1" EnableSkinTransparency="true" Skin="WebBlue" />
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
        AppointmentStyleMode="Default"
        FirstDayOfWeek="Monday" LastDayOfWeek="Sunday" 
        SelectedView="WeekView" 
        ShowFullTime="false"
        AllowEdit="false"
        AllowInsert="true"
        AllowDelete="true"
        StartEditingInAdvancedForm="true"
        StartInsertingInAdvancedForm="true"
        ShowAllDayRow="false"
 
        TimelineView-NumberOfSlots="7"

        EnableDescriptionField="true"
        EnableResourceEditing="true"

        CustomAttributeNames="ItemType"      
        
        OnClientFormCreated="schedulerFormCreated" 

        OnClientTimeSlotClick="insertAppointment"
        OnClientAppointmentClick="editAppointment"
              
        >          
        <%--AppointmentStyleMode must be explicitly set to Default (see above) otherwise setting BackColor/BorderColor will switch the appointments to Simple rendering (no rounded corners and gradients)--%>

        <AdvancedEditTemplate>       
		<uc1:AdvancedForm  runat="server" ID="AdvancedEditForm" Mode="Edit"
                                    Start='<%# Bind("Start") %>'
                                    End='<%# Bind("End") %>'
                                    Description='<%# Bind("Description") %>'
                                    EndTime_1='<%# Bind("EndTime_1") %>'
                                    EndTime_2='<%# Bind("EndTime_2") %>'
                                    EndTime_3='<%# Bind("EndTime_3") %>'
                                    Start2='<%# Bind("Start2") %>'
                                    Start3='<%# Bind("Start3") %>'
                                    Duration='<%# GetDuration() %>'
                                    />
		</AdvancedEditTemplate>
		<AdvancedInsertTemplate>
		<uc1:AdvancedForm    runat="server" ID="AdvancedInsertForm" Mode="Insert"
                                    Start='<%# Bind("Start") %>'
                                    End='<%# Bind("End") %>'
                                    Description='<%# Bind("Description") %>'
                                    EndTime_1='<%# Bind("EndTime_1") %>'
                                    EndTime_2='<%# Bind("EndTime_2") %>'
                                    EndTime_3='<%# Bind("EndTime_3") %>'
                                    Start2='<%# Bind("Start2") %>'
                                    Start3='<%# Bind("Start3") %>'
                                    Duration='<%# GetDuration() %>'
                                    />
		</AdvancedInsertTemplate>
    </tel:RadScheduler>
</div>
<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AvailabilityEdit.ascx.cs"
    Inherits="IntelArcade.WebApp.SchedulerControls.AvailabilityEdit" %>
<div class="rsAdvancedEdit rsAdvancedModal" style="position: relative">
    <div class="rsModalBgTopLeft">
    </div>
    <div class="rsModalBgTopRight">
    </div>
    <div class="rsModalBgBottomLeft">
    </div>
    <div class="rsModalBgBottomRight">
    </div>
    <%-- Title bar. --%>
    <div class="rsAdvTitle">
        <%-- The rsAdvInnerTitle element is used as a drag handle when the form is modal. --%>
        <h1 class="rsAdvInnerTitle">
            <%= FormTitle %></h1>
        <asp:LinkButton runat="server" ID="AdvancedEditCloseButton" CssClass="rsAdvEditClose"
            CommandName="Cancel" CausesValidation="false" ToolTip='<%# Owner.Localization.AdvancedClose %>'>
            <%= Owner.Localization.AdvancedClose %>
        </asp:LinkButton>
    </div>
    <div class="rsAdvContentWrapper">
        <%-- Scroll container - when the form height exceeds MaximumHeight scrollbars will appear on this element--%>
        <div class="rsAdvOptionsScroll">
            <asp:Panel runat="server" ID="AdvancedEditOptionsPanel" CssClass="rsAdvOptions">
                <asp:Panel runat="server" ID="BasicControlsPanel" CssClass="rsAdvBasicControls" OnDataBinding="BasicControlsPanel_DataBinding">
                    <div style="display: none">
                        <tel:RadComboBox runat="server" ID="AvailabilityType" AllowCustomText="false" Label="Availability"
                            OnClientSelectedIndexChanged="__tmpAvailabilityType_Changed" OnClientLoad="__tmpAvailabilityType_Load">
                            <Items>
                                <%--<tel:RadComboBoxItem Value="" Text="" />--%>
                                <%--<tel:RadComboBoxItem Value="1" Text="Available" />--%>
                                <tel:RadComboBoxItem Value="2" Text="Unavailable" />
                                <%--<tel:RadComboBoxItem Value="3" Text="Group Session" />--%>
                            </Items>
                        </tel:RadComboBox>
                        <div id="__MockGroupPanel" style="">
                            <!-- Mocked-Up Subject Profile Picker -->
                            <div>
                                <label>
                                    Category</label><asp:DropDownList runat="server" ID="SubjectCategory">
                                        <asp:ListItem Value="ENG-CIV" Text="Legal/Law | Contract" />
                                    </asp:DropDownList>
                            </div>
                            <div>
                                <label>
                                    Subject</label><asp:DropDownList runat="server" ID="ServiceProfile">
                                        <asp:ListItem Value="SP001" Text="10 Things About Contract Law You MUST Know" />
                                    </asp:DropDownList>
                            </div>
                        </div>
                    </div>
                    <ul class="rsTimePickers">
                        <li class="rsTimePick">
                            <label for='<%= StartDate.ClientID %>_dateInput_text'>
                                <%= Owner.Localization.AdvancedFrom %></label><%--
                             Leaving a newline here will affect the layout, so we use a comment instead.
                                --%><tel:RadDatePicker runat="server" ID="StartDate" CssClass="rsAdvDatePicker" Width="83px"
                                    ToolTip="To select MIDNIGHT, select 12am on the following day" SharedCalendarID="SharedCalendar"
                                    Skin='<%# Owner.Skin %>' Culture='<%# Owner.Culture %>' MinDate="1900-01-01">
                                    <DatePopupButton Visible="False" />
                                    <DateInput ID="DateInput2" runat="server" DateFormat='<%# Owner.AdvancedForm.DateFormat %>'
                                        EmptyMessageStyle-CssClass="riError" EmptyMessage=" " />
                                </tel:RadDatePicker>
                            <%--
                            
                            --%><tel:RadTimePicker runat="server" ID="StartTime" CssClass="rsAdvTimePicker" Width="75px"
                                ToolTip="To select MIDNIGHT, select 12am on the following day" Skin='<%# Owner.Skin %>'
                                Culture='<%# Owner.Culture %>'>
                                <DateInput ID="DateInput3" runat="server" EmptyMessageStyle-CssClass="riError" EmptyMessage=" " />
                                <TimePopupButton Visible="false" />
                                <TimeView ID="TimeView1" runat="server" Columns="2" ShowHeader="false" StartTime="00:00"
                                    EndTime="23:59" Interval="00:30" ToolTip="To select MIDNIGHT, select 12am on the following day" />
                            </tel:RadTimePicker>
                        </li>
                        <li class="rsTimePick">
                            <label class="rsAdvEndDatePicker" for='<%= EndDate.ClientID %>_dateInput_text'>
                                <%= Owner.Localization.AdvancedTo%></label><%--
                            
                                --%><tel:RadDatePicker runat="server" ID="EndDate" CssClass="rsAdvEndDatePicker" Width="83px"
                                    ToolTip="To select MIDNIGHT, select 12am on the following day" SharedCalendarID="SharedCalendar"
                                    Skin='<%# Owner.Skin %>' Culture='<%# Owner.Culture %>' MinDate="1900-01-01">
                                    <DatePopupButton Visible="False" />
                                    <DateInput ID="DateInput4" runat="server" DateFormat='<%# Owner.AdvancedForm.DateFormat %>'
                                        EmptyMessageStyle-CssClass="riError" EmptyMessage=" " />
                                </tel:RadDatePicker>
                            <tel:RadTimePicker runat="server" ID="EndTime" CssClass="rsAdvTimePicker" Width="75px"
                                ToolTip="To select MIDNIGHT, select 12am on the following day" Skin='<%# Owner.Skin %>'
                                Culture='<%# Owner.Culture %>'>
                                <DateInput ID="DateInput5" runat="server" EmptyMessageStyle-CssClass="riError" EmptyMessage=" " />
                                <TimePopupButton Visible="false" />
                                <TimeView ID="TimeView2" runat="server" Columns="2" ShowHeader="false" StartTime="00:00"
                                    ToolTip="To select MIDNIGHT, select 12am on the following day" EndTime="23:59"
                                    Interval="00:30" />
                            </tel:RadTimePicker>
                            <%--                            <asp:CheckBox runat="server" ID="AllDayEvent" CssClass="rsAdvChkWrap" Checked="false" />--%>
                        </li>
                        <li class="rsAllDayWrapper">
                            <asp:CheckBox runat="server" ID="AllDayEvent" CssClass="rsAdvChkWrap" Checked="false" />
                        </li>
                    </ul>
                    <asp:RequiredFieldValidator runat="server" ID="AvailabilityValidator" ControlToValidate="AvailabilityType"
                        EnableClientScript="true" Display="None" CssClass="rsValidatorMsg" />
                    <asp:RequiredFieldValidator runat="server" ID="StartDateValidator" ControlToValidate="StartDate"
                        EnableClientScript="true" Display="None" CssClass="rsValidatorMsg" />
                    <asp:RequiredFieldValidator runat="server" ID="StartTimeValidator" ControlToValidate="StartTime"
                        EnableClientScript="true" Display="None" CssClass="rsValidatorMsg" />
                    <asp:RequiredFieldValidator runat="server" ID="EndDateValidator" ControlToValidate="EndDate"
                        EnableClientScript="true" Display="None" CssClass="rsValidatorMsg" />
                    <asp:RequiredFieldValidator runat="server" ID="EndTimeValidator" ControlToValidate="EndTime"
                        EnableClientScript="true" Display="None" CssClass="rsValidatorMsg" />
                </asp:Panel>
                <div style="margin-left:18px;">
                    <asp:CustomValidator runat="server" ID="DurationValidator" ControlToValidate="StartDate"
                        EnableClientScript="false" Display="Dynamic"
                        OnServerValidate="DurationValidator_OnServerValidate" />
                </div>
                <div style="padding-left: 25px; padding-right: 25px;">
                    <asp:Panel runat="server" ID="AdvancedControlsPanel" CssClass="rsAdvMoreControls">
                        <asp:Panel runat="server" ID="ResourceControls">
                            <%-- RESOURCE CONTROLS --%>
                            <ul class="rsResourceControls">
                                <!-- Optionally add more ResourceControl instances here -->
                            </ul>
                        </asp:Panel>
                    </asp:Panel>
                    <br />
                    <div style="display: none;">
                        <tel:RadTextBox runat="server" ID="DescriptionText" TextMode="MultiLine" Columns="50"
                            Rows="5" Width="550px" Label='<%# Owner.Localization.AdvancedDescription + ":" %>'
                            Text='<%# Eval("Description") %>' LabelWidth="70px" /></div>
                    <span class="rsAdvResetExceptions">
                        <asp:LinkButton runat="server" ID="ResetExceptions" OnClick="ResetExceptions_OnClick" />
                    </span>
                    <tel:RadSchedulerRecurrenceEditor runat="server" ID="AppointmentRecurrenceEditor" />
                    <asp:HiddenField runat="server" ID="OriginalRecurrenceRule" />
                    <tel:RadCalendar runat="server" ID="SharedCalendar" Skin='<%# Owner.Skin %>' CultureInfo='<%# Owner.Culture %>'
                        ShowRowHeaders="false" RangeMinDate="1900-01-01" />
                </div>
            </asp:Panel>
        </div>
        <asp:Panel runat="server" ID="ButtonsPanel" CssClass="rsAdvancedSubmitArea">
            <div class="rsAdvButtonWrapper">
                <asp:LinkButton runat="server" ID="UpdateButton" CssClass="rsAdvEditSave">
                    <span><%= Owner.Localization.Save %></span>
                </asp:LinkButton>
                <asp:LinkButton runat="server" ID="CancelButton" CssClass="rsAdvEditCancel" CommandName="Cancel"
                    CausesValidation="false">
                    <span><%= Owner.Localization.Cancel %></span>
                </asp:LinkButton>
            </div>
        </asp:Panel>
    </div>
</div>

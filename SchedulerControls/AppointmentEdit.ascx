<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AppointmentEdit.ascx.cs"
    Inherits="IntelArcade.WebApp.SchedulerControls.AppointmentEdit" %>
<div style="display: none" id="___IAC_ADV_VISIBLE">
    <%/* A hack to allow client script to determine whether or not the advanced form is visible */ %></div>
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
        <asp:Panel runat="server" ID="BasicControlsPanel" CssClass="rsAdvBasicControls">
            <div style="padding: 10px;">
                Please add up to 3 time-slots, stating hour's meeting, when you are free to accept the meeting. i.e. If
                you need an hour meeting but are available only in work hours, enter from 9am - 5pm.</div>
            <ul class="rsTimePickers">
                <li class="rsTimePick">
                    <label for='<%= StartDate.ClientID %>_dateInput_text'>
                        <%= Owner.Localization.AdvancedFrom %></label><%--
                             Leaving a newline here will affect the layout, so we use a comment instead.
                        --%><tel:RadDatePicker runat="server" ID="StartDate" CssClass="rsAdvDatePicker" Width="83px"
                            SharedCalendarID="SharedCalendar" Skin='<%# Owner.Skin %>' Culture='<%# Owner.Culture %>'
                            MinDate="1900-01-01">
                            <DatePopupButton Visible="False" />
                            <DateInput ID="DateInput2" runat="server" DateFormat='<%# Owner.AdvancedForm.DateFormat %>'
                                EmptyMessageStyle-CssClass="riError" EmptyMessage=" " />
                        </tel:RadDatePicker>
                    <%--
                            
                    --%><tel:RadTimePicker runat="server" ID="StartTime" CssClass="rsAdvTimePicker" Width="75px"
                        Skin='<%# Owner.Skin %>' Culture='<%# Owner.Culture %>'>
                        <DateInput ID="DateInput3" runat="server" EmptyMessageStyle-CssClass="riError" EmptyMessage=" " />
                        <TimePopupButton Visible="false" />
                        <TimeView ID="TimeView1" runat="server" Columns="3" ShowHeader="false" StartTime="00:00"
                            EndTime="23:59" Interval="00:30" />
                    </tel:RadTimePicker>
                    <%--
                            
                    --%>
                    <%--<label>
                        Duration (mins)</label><div style="padding-left: 15px; display: inline-block;">
                            <tel:RadNumericTextBox runat="server" ID="Duration" Width="75px" Type="Number" IncrementSettings-Step="5"
                                MinValue="5" MaxValue="1440" Value="15" ShowSpinButtons="true">
                                <NumberFormat DecimalDigits="0" />
                            </tel:RadNumericTextBox></div>--%>
                </li>
                <li class="rsTimePick">
                    <label>
                        untill</label>
                    <tel:RadTimePicker runat="server" ID="EndTime1" CssClass="rsAdvTimePicker" Width="75px"
                        Skin='<%# Owner.Skin %>' Culture='<%# Owner.Culture %>'>
                        <DateInput ID="DateInput1" runat="server" EmptyMessageStyle-CssClass="riError" EmptyMessage=" " />
                        <TimePopupButton Visible="false" />
                        <TimeView ID="TimeView2" runat="server" Columns="3" ShowHeader="false" StartTime="00:00"
                            EndTime="23:59" Interval="00:30" />
                    </tel:RadTimePicker>
                </li>
            </ul>
            <div>
                <ul class="rsTimePickers">
                    <li class="rsTimePick">
                        <label for='<%= StartDate.ClientID %>_dateInput_text'>
                            <%= Owner.Localization.AdvancedFrom %></label><%--
                             Leaving a newline here will affect the layout, so we use a comment instead.
                            --%><tel:RadDatePicker runat="server" ID="StartDate2" CssClass="rsAdvDatePicker"
                                Width="83px" SharedCalendarID="SharedCalendar" Skin='<%# Owner.Skin %>' Culture='<%# Owner.Culture %>'
                                MinDate="1900-01-01">
                                <DatePopupButton Visible="False" />
                                <DateInput ID="DateInput4" runat="server" DateFormat='<%# Owner.AdvancedForm.DateFormat %>'
                                    EmptyMessageStyle-CssClass="riError" EmptyMessage=" " />
                            </tel:RadDatePicker>
                        <%--
                            
                        --%><tel:RadTimePicker runat="server" ID="StartTime2" CssClass="rsAdvTimePicker"
                            Width="75px" Skin='<%# Owner.Skin %>' Culture='<%# Owner.Culture %>'>
                            <DateInput ID="DateInput5" runat="server" EmptyMessageStyle-CssClass="riError" EmptyMessage=" " />
                            <TimePopupButton Visible="false" />
                            <TimeView ID="TimeView3" runat="server" Columns="3" ShowHeader="false" StartTime="00:00"
                                EndTime="23:59" Interval="00:30" />
                        </tel:RadTimePicker>
                    </li>
                    <li class="rsTimePick">
                        <label>
                            untill</label>
                        <tel:RadTimePicker runat="server" ID="EndTime2" CssClass="rsAdvTimePicker" Width="75px"
                            Skin='<%# Owner.Skin %>' Culture='<%# Owner.Culture %>'>
                            <DateInput ID="DateInput6" runat="server" EmptyMessageStyle-CssClass="riError" EmptyMessage=" " />
                            <TimePopupButton Visible="false" />
                            <TimeView ID="TimeView4" runat="server" Columns="3" ShowHeader="false" StartTime="00:00"
                                EndTime="23:59" Interval="00:30" />
                        </tel:RadTimePicker>
                    </li>
                </ul>
            </div>
            <div>
                <ul class="rsTimePickers">
                    <li class="rsTimePick">
                        <label for='<%= StartDate.ClientID %>_dateInput_text'>
                            <%= Owner.Localization.AdvancedFrom %></label><%--
                             Leaving a newline here will affect the layout, so we use a comment instead.
                            --%><tel:RadDatePicker runat="server" ID="StartDate3" CssClass="rsAdvDatePicker"
                                Width="83px" SharedCalendarID="SharedCalendar" Skin='<%# Owner.Skin %>' Culture='<%# Owner.Culture %>'
                                MinDate="1900-01-01">
                                <DatePopupButton Visible="False" />
                                <DateInput ID="DateInput7" runat="server" DateFormat='<%# Owner.AdvancedForm.DateFormat %>'
                                    EmptyMessageStyle-CssClass="riError" EmptyMessage=" " />
                            </tel:RadDatePicker>
                        <%--
                            
                        --%><tel:RadTimePicker runat="server" ID="StartTime3" CssClass="rsAdvTimePicker"
                            Width="75px" Skin='<%# Owner.Skin %>' Culture='<%# Owner.Culture %>'>
                            <DateInput ID="DateInput8" runat="server" EmptyMessageStyle-CssClass="riError" EmptyMessage=" " />
                            <TimePopupButton Visible="false" />
                            <TimeView ID="TimeView5" runat="server" Columns="3" ShowHeader="false" StartTime="00:00"
                                EndTime="23:59" Interval="00:30" />
                        </tel:RadTimePicker>
                    </li>
                    <li class="rsTimePick">
                        <label>
                            untill</label>
                        <tel:RadTimePicker runat="server" ID="EndTime3" CssClass="rsAdvTimePicker" Width="75px"
                            Skin='<%# Owner.Skin %>' Culture='<%# Owner.Culture %>'>
                            <DateInput ID="DateInput9" runat="server" EmptyMessageStyle-CssClass="riError" EmptyMessage=" " />
                            <TimePopupButton Visible="false" />
                            <TimeView ID="TimeView6" runat="server" Columns="3" ShowHeader="false" StartTime="00:00"
                                EndTime="23:59" Interval="00:30" />
                        </tel:RadTimePicker>
                    </li>
                </ul>
            </div>
            <div style="margin-left: 18px;">
                <asp:CustomValidator runat="server" ID="DurationValidator" ControlToValidate="StartDate"
                    EnableClientScript="false" Display="Dynamic" OnServerValidate="DurationValidator_OnServerValidate" />
            </div>
            <br />
            <div style="padding: 5px;">
                <div>
                    <label>
                        Comments:&nbsp;</label>Add optional comments for the provider here.</div>
                <iac:TextBox runat="server" ID="Comments" TextMode="MultiLine" Rows="5" Width="100%">
                </iac:TextBox>
            </div>
            <tel:RadCalendar runat="server" ID="SharedCalendar" Skin='<%# Owner.Skin %>' CultureInfo='<%# Owner.Culture %>'
                ShowRowHeaders="false" RangeMinDate="1900-01-01" />
        </asp:Panel>
        <br />
        <asp:Panel runat="server" ID="ButtonsPanel" CssClass="rsAdvancedSubmitArea">
            <div class="rsAdvButtonWrapper">
                <asp:LinkButton runat="server" ID="UpdateButton" CssClass="rsAdvEditSave"><span><%= Owner.Localization.Save %></span></asp:LinkButton>
                <asp:LinkButton runat="server" ID="CancelButton" CssClass="rsAdvEditCancel" CommandName="Cancel"
                    CausesValidation="false"><span><%= Owner.Localization.Cancel %></span></asp:LinkButton>
            </div>
        </asp:Panel>
    </div>
</div>

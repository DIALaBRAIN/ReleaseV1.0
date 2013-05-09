<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SpecifyStartTimeEdit.ascx.cs"
    Inherits="IntelArcade.WebApp.SchedulerControls.SpecifyStartTimeEdit" %>
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
            <p runat="server" visible="false" id="p1" style="padding-left:16px;">The Seeker is available only at the specific time listed. Please click save if you are able to attend a meeting at that time.</p>
            <ul class="rsTimePickers">
                <li class="rsTimePick">
                    <label for='<%= StartDate.ClientID %>_dateInput_text'>
                        <%= Owner.Localization.AdvancedFrom %></label>
                    <tel:RadDatePicker runat="server" ID="StartDate" CssClass="rsAdvDatePicker" Width="83px"
                        SharedCalendarID="SharedCalendar" Skin='<%# Owner.Skin %>' Culture='<%# Owner.Culture %>'
                        MinDate="1900-01-01">
                        <DatePopupButton Visible="False" />
                        <DateInput ID="DateInput2" runat="server" DateFormat='<%# Owner.AdvancedForm.DateFormat %>'
                            EmptyMessageStyle-CssClass="riError" EmptyMessage=" " />
                    </tel:RadDatePicker>
                    <%--
                            
                    --%>
                    <tel:RadTimePicker runat="server" ID="StartTime" CssClass="rsAdvTimePicker" Width="75px"
                        Skin='<%# Owner.Skin %>' Culture='<%# Owner.Culture %>'>
                        <DateInput ID="DateInput3" runat="server" EmptyMessageStyle-CssClass="riError" EmptyMessage=" " />
                        <TimePopupButton Visible="false" />
                        <TimeView ID="TimeView1" runat="server" Columns="3" ShowHeader="false" StartTime="00:00"
                            EndTime="23:59" Interval="00:30" />
                    </tel:RadTimePicker>
                </li>
            </ul>
            <tel:RadCalendar runat="server" ID="SharedCalendar" Skin='<%# Owner.Skin %>' CultureInfo='<%# Owner.Culture %>'
                ShowRowHeaders="false" RangeMinDate="1900-01-01" />
        </asp:Panel>
        <div style="margin-left: 18px;">
            <asp:CustomValidator runat="server" ID="cvValidateTime" OnServerValidate="cvValidateTime_ServerValidate"
                ControlToValidate="StartDate" EnableClientScript="false" Display="Dynamic" />
        </div>
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

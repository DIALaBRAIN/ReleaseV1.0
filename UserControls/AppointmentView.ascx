<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AppointmentView.ascx.cs"
    Inherits="IntelArcade.WebApp.UserControls.AppointmentView" %>
<div>
    <div class="dialogHeader">
        <span>
            <%=SubjectPath%></span> <span style="padding-bottom: 4px;">
                <iac:HeaderText runat="server" ID="AptTitle" />
            </span>
    </div>
    <div class="dialogSubHeader">
        <table border="0" cellpadding="0" cellspacing="0" style="width: 100%;">
            <tr>
                <td rowspan="7" valign="top">
                    <img style="width: 50px; height: 50px; padding-top: 6px;" src="<%=ImagePath%>" alt=""
                        class="leftImage" />
                </td>
                <td style="text-align: left; white-space: nowrap;">
                    <label>
                        <%=ContextLabel %></label>
                </td>
                <td style="text-align: left; white-space: nowrap; width: 70%;">
                    <%=AppointmentUserName%>
                </td>
            </tr>
            <tr>
                <td style="text-align: left; white-space: nowrap;">
                    <label>
                        Type</label>
                </td>
                <td style="text-align: left; white-space: nowrap;">
                    <%=SessionType %>
                </td>
            </tr>
            <tr>
                <td style="text-align: left; white-space: nowrap;">
                    <label>
                        Date</label>
                </td>
                <td style="text-align: left; white-space: nowrap;">
                    <%=AppointmentDate%>
                </td>
            </tr>
            <tr>
                <td style="text-align: left; white-space: nowrap;">
                    <label>
                        Duration</label>
                </td>
                <td style="text-align: left; white-space: nowrap;">
                    <%=Duration%>
                </td>
            </tr>
            <tr>
                <td valign="top">
                    <label>
                        My Availability</label>
                </td>
                <td>
                    <%=MyAvailability%>
                </td>
            </tr>
            <tr>
                <td style="text-align: left; white-space: nowrap;">
                    <label>
                        Status</label>
                </td>
                <td style="text-align: left; white-space: nowrap;">
                    <%=Status%>
                </td>
            </tr>
        </table>
    </div>
    <%--    <div class="dialogSubHeader">
            <table border="0" cellpadding="0" cellspacing="0" style="width:100%;" >
                <tr>
                    <td rowspan="3"><img style="width:50px;height:50px;" src="<%=ImagePath%>" alt="" class="leftImage" /></td>
                    <td style="text-align:left;white-space:nowrap;width:100%;"><label><%=ContextLabel %>:</label>&nbsp;<%=AppointmentUserName%>&nbsp;&nbsp;&nbsp;<label>Type:</label>&nbsp;<%=SessionType %></td>
                </tr>
                <tr>
                    <td style="text-align:left;white-space:nowrap;"><label>Date:</label>&nbsp;<%=AppointmentDate%></td>
                </tr>
                <tr>
                    <td><label>Start Time:</label>&nbsp;<%=StartTime%>&nbsp;&nbsp;&nbsp;<label>End Time:</label>&nbsp;<%=EndTime%>&nbsp;&nbsp;&nbsp;<label>Duration:</label>&nbsp;<%=Duration%></td>
                </tr>
            </table>
            <div style="padding-left:59px;"><label>Status:</label>&nbsp;<%=Status%></div>
    </div>--%>
</div>

<%@ Page Title="" Language="C#" MasterPageFile="~/DialogMaster.Master" AutoEventWireup="true"
    CodeBehind="CancelAppointment.aspx.cs" Inherits="IntelArcade.WebApp.DialogWindows.CancelAppointment"
    ValidateRequest="false" %>

<%@ Register Src="~/UserControls/AppointmentView.ascx" TagName="AppointmentView"
    TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentHead" runat="server">
    <script src="../Client/jquery-1.5.min.js" type="text/javascript"></script>
    <script language="javascript" type="text/javascript">
        function returnToParent(doPostback, response, argument) {
            var oArg = new Object();
            oArg.DoPostback = doPostback = doPostback != null ? doPostback : false;
            oArg.ServiceResponse = response != null ? response : "Undefined";
            oArg.Argument = argument != null ? argument : "";

            var oWnd = GetRadWindow();
            oWnd.close(oArg);
        }
    </script>
    <script language="javascript" type="text/javascript">
        $(document).ready(function () {
            var clear = true;
            $('#<%=tbReason.ClientID%>').click(function () {
                if (clear)
                    $(this).val("I'm sorry but I've had to cancel our scheduled meeting.");
                clear = false;
            });
        });
    </script>
    <style type="text/css">
        .dialogHeader
        {
            padding-left: 10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentDialogHeader" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
    <div style="">
        <uc1:AppointmentView runat="server" ID="AppointmentView" />
    </div>
    <div runat="server" id="ContentPanel">
        <div style="padding-left: 10px;">
            <div style="overflow: auto;">
                <span runat="server" id="sp_provider" visible="false">Please left the Seeker know why you are cancelling the meeting. </span><span runat="server" id="sp_seeker" visible="false">By cancelling
                        this meeting, the ring-fence that has been put on your d<span class="highlight2">b</span>-<i>Credit</i>
                        and d<span class="highlight2">b</span>-<i>Time</i> will be lifted. </span>
                <span runat="server" id="sp_warning" visible="false">However, <span style="font-weight: normal;
                    color: Red;">if there are less than 12 hours before the scheduled start time of
                    the meeting, 33% of the meeting fee will be passed to the <i>Provider</i> for late
                    cancellation</span>. </span>
            </div>
            <asp:TextBox ID="tbReason" runat="server" TextMode="MultiLine" Height="70px" Width="99%"
                BackColor="#F1F1F1" Visible="false" Text="Please state your reason for cancelling thee meeting."></asp:TextBox>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentDialogPreFooter" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentDialogFooter" runat="server">
    <div style="text-align: right; width: 100%;">
        <div style="float: right; margin-right: -10px;">
            <asp:LinkButton runat="server" ID="CancelAppointmentButton" Text="Cancel Appointment" />
        </div>
        <div style="float: left; margin-left: -20px;">
            <a href="javascript:returnToParent(false);">Cancel</a>
        </div>
    </div>
</asp:Content>

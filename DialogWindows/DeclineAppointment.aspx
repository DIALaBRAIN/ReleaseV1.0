<%@ Page Title="" Language="C#" MasterPageFile="~/DialogMaster.Master" AutoEventWireup="true"
    CodeBehind="DeclineAppointment.aspx.cs" Inherits="IntelArcade.WebApp.DialogWindows.DeclineAppointment"
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
            $('#<%=rblResoan.ClientID%> input').click(function () {
                clear = true;
                if ($(this).val() == 2) {
                    $('#<%=tbReason.ClientID%>').val('If you are unable to make any of the suggested time slots, please suggest when you are available.');
                    $('#div_reason').show("slow");
                }
                else if ($(this).val() == 4) {
                    $('#<%=tbReason.ClientID%>').val('Please state your reason for declining the appointment.');
                    $('#div_reason').show("slow");
                }
                else {
                    $('#div_reason').hide("slow");
                }
            });

            $('#<%=tbReason.ClientID%>').click(function () {
                if (clear) {

                    if ($(this).val() == 'If you are unable to make any of the suggested time slots, please suggest when you are available.') {
                        var hidVal = document.getElementById("<% =HiddenField_Timezone.ClientID %>").value;
                        $('#<%=tbReason.ClientID%>').val("Time slot 1: \nTime slot 2: \nTime slot 3: ");

                    }
                    else
                    $(this).val('');

                }


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
        <div style="padding: 4px 4px 4px 10px;">
            <div style="overflow: auto; height: 30px;">
                Please let the Seeker know why you are declining the meeting.
            </div>
        </div>
        <hr />
        <span style="padding-left: 10px;">For declining appointment:</span>
        <asp:RequiredFieldValidator ID="shouldselectone" runat="server" ControlToValidate="rblResoan"
            ErrorMessage="You must select one of bellow reasons."></asp:RequiredFieldValidator>
        <br />
        <div style="padding: 4px 4px 4px 10px; float: left; width: 50%;">
            <asp:RadioButtonList ID="rblResoan" runat="server" Font-Bold="False">
                <asp:ListItem Value="1">&nbsp;This is not really my area.</asp:ListItem>
                <asp:ListItem Value="2">&nbsp;I need them to select another time.</asp:ListItem>
                <asp:ListItem Value="3">&nbsp;I cannot take on new clients just now.</asp:ListItem>
                <asp:ListItem Value="4">&nbsp;Other.</asp:ListItem>
            </asp:RadioButtonList>
        </div>
        <div id="div_reason" style="padding: 4px; display: none; float: right; width: 45%;
            margin: 0 3px 2px 2px;padding-top:0px">
            <asp:TextBox ID="tbReason" runat="server" TextMode="MultiLine" Rows="4" Width="100%"
                BackColor="#F1F1F1"></asp:TextBox>
            <asp:HiddenField ID="HiddenField_Timezone" Value="time zone" runat="server" />
        </div>
       
    </div><br />
     
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentDialogPreFooter" runat="server">
    <%--Click <b>Decline Appointment</b> to decline the appointment, or <b>Cancel</b> to
    exit without taking any action.--%>
    <span id="span_warn" style="color:Red;display:none">You must enter at least one time slot to propose to your CLIENT</span>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentDialogFooter" runat="server">

    <div style="text-align: right; width: 100%;">
        <div style="float: left; margin-left: -20px;">
         <a href="javascript:returnToParent(false);">Cancel</a>
          
        </div>
        <div style="float: right;">
             <asp:LinkButton runat="server" OnClientClick="return fvalidate();" ID="DeclineButton" Text="Decline Appointment" CausesValidation="true" />
        </div>
    </div>
    <script>
        function fvalidate() {

            if ($('#<%=rblResoan.ClientID %> input[type=radio]:checked').val() == '2') {

                if (($('#<%=tbReason.ClientID%>').val() == "Time slot 1: \nTime slot 2: \nTime slot 3: ")
                || ($('#<%=tbReason.ClientID%>').val() == "If you are unable to make any of the suggested time slots, please suggest when you are available.")) 
                {
                    $('#span_warn').show(1000);
                    return false;
                }
                else {
                   
                    return true;
                }
            }
            return true;
        }
    
    </script>
</asp:Content>

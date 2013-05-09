<%@ Page Title="" Language="C#" MasterPageFile="~/DialogMaster.Master" AutoEventWireup="true"
    CodeBehind="ConfirmAppointment.aspx.cs" Inherits="IntelArcade.WebApp.DialogWindows.ConfirmAppointment" %>

<%@ Register Src="~/UserControls/AppointmentView.ascx" TagName="AppointmentView"
    TagPrefix="uc1" %>
<%@ Register Src="~/UserControls/AppointmentStartTimeSpecifier.ascx" TagName="AppointmentStartTimeSpecifier"
    TagPrefix="iac" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentHead" runat="server">
    <script language="javascript" type="text/javascript">
        function returnToParent(doPostback, response, argument) {
            var oArg = new Object();
            oArg.DoPostback = doPostback = doPostback != null ? doPostback : false;
            oArg.ServiceResponse = response != null ? response : "Undefined";
            oArg.Argument = argument != null ? argument : "";

            var oWnd = GetRadWindow();
            oWnd.close(oArg);
        }

        function buyDBTime() {
            var oArg = new Object();
            var oWnd = GetRadWindow();
            oWnd.close(oArg);
            window.top.location.href = "/MemberPages/BuyTime.aspx?amt=b"
        }

    </script>
    <style type="text/css">
        .DisplayNone
        {
            display: none;
        }
        .DisplayBlock
        {
            display: block;
        }
        .dialogHeader
        {
            padding-left: 10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentDialogHeader" runat="server">
    <h1 style="float: left;">
        <asp:Literal runat="server" ID="WizardStepHeaderText" /></h1>
    <span style="float: right;">
        <asp:Literal runat="server" ID="StepNumberText" /></span><br />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
    <div runat="server" id="__iac_WizardContainer">
        <asp:Wizard runat="server" ID="Wizard1" Width="100%" DisplayCancelButton="true" DisplaySideBar="false"
            CssClass="Wizard">
            <StartNavigationTemplate>
                <div class="dialogFooter" style="position: absolute; width: 100%; bottom: 0;">
                    <div style="padding-right: 20px; padding-top: 10px;">
                        <div style="float: right">
                            <asp:LinkButton ID="StartNextButton" runat="server" CommandName="MoveNext" Text="Next"
                                ValidationGroup="AptWiz" />
                        </div>
                        <div style="float: left">
                            <asp:LinkButton ID="StartCancelButton" runat="server" CommandName="Cancel" Text="Cancel"
                                CausesValidation="false" />
                        </div>
                    </div>
                </div>
            </StartNavigationTemplate>
            <StepNavigationTemplate>
                <div class="dialogFooter" style="position: absolute; width: 100%; bottom: 0;">
                    <div style="padding-right: 20px; padding-top: 10px;">
                        <div style="float: right">
                            <asp:LinkButton ID="StepNextButton" runat="server" CommandName="MoveNext" Text="Next"
                                ValidationGroup="AptWiz" />
                        </div>
                        <div style="position: absolute; left: 50%; margin-left: -35px;">
                            <asp:LinkButton ID="StepPreviousButton" runat="server" CommandName="MovePrevious"
                                Text="Previous" ValidationGroup="AptWiz" />
                        </div>
                        <div style="float: left">
                            <asp:LinkButton ID="StepCancelButton" runat="server" CommandName="Cancel" Text="Cancel"
                                CausesValidation="false" />
                        </div>
                    </div>
                </div>
            </StepNavigationTemplate>
            <FinishNavigationTemplate>
                <div class="dialogFooter" style="position: absolute; width: 100%; bottom: 0;">
                    <div style="padding-right: 20px; padding-top: 10px;">
                        <div style="float: right">
                            <asp:LinkButton ID="FinishNextButton" runat="server" CommandName="MoveComplete" Text="Confirm"
                                ValidationGroup="AptWiz" />
                        </div>
                        <div style="position: absolute; left: 50%; margin-left: -35px;">
                            <asp:LinkButton ID="FinishPreviousButton" runat="server" CommandName="MovePrevious"
                                Text="Previous" ValidationGroup="AptWiz" />
                        </div>
                        <div style="float: left">
                            <asp:LinkButton ID="FinishCancelButton" runat="server" CommandName="Cancel" Text="Cancel"
                                CausesValidation="false" />
                        </div>
                    </div>
                </div>
            </FinishNavigationTemplate>
            <WizardSteps>
                <asp:WizardStep ID="WStepPrice">
                    <div style="margin-left: 90px; margin-top: 10px;">
                        <p>
                            <span style="color: Red;">Sorry your <b>d<label class="highlight2">b</label></b>-<i>Time</i>
                                balance is too low to accept the meeting.</span>
                            <br />
                            Please load <a href='javascript:buyDBTime();'>PrePay </a><b>d<span class="highlight2">b</span></b>-<i>Time</i>
                            and then reconfirm the meeting.
                        </p>
                    </div>
                </asp:WizardStep>
                <asp:WizardStep ID="WStepApt">
                    <div style="">
                        <uc1:AppointmentView runat="server" ID="AppointmentView" />
                    </div>
                    <div runat="server" id="ContentPanel">
                        <div style="padding: 4px 4px 4px 10px;">
                            <div style="overflow: auto; height: 290px;">
                                <p>
                                    There are several things that you should note as a <i>Provider</i> before accepting
                                    a meeting.</p>
                                <br />
                                <p>
                                    Repeat and future business on <b>DIALa<span class="highlight2">BRAIN</span></b>
                                    are highly dependent on positive feedback. Thus only accept meetings for which you
                                    are truly qualified and able to assist with in a professional manner.
                                </p>
                                <br />
                                <p>
                                    No money will change hands until the appointment is held. The <i>Seekers</i> <b>d<span
                                        class="highlight2">b</span>-</b><i>Credit</i> is ring-fenced before the meeting
                                    and so you are assured payment. Payment is only for the actual time that you and
                                    your <i>Seeker/s</i> are in the meeting together.
                                </p>
                                <br />
                                <p>
                                    In the event that a <i>Seeker</i> is more than ten minutes late for an appointment,
                                    you have the right to leave the virtual meeting room and the <i>Seeker</i> will
                                    be charged 33% of their fee for wasting your time - this is termed a "NO SHOW".
                                    You may not collect that 33% if you yourself were late or you did not remain in
                                    the meeting room until ten minutes after the scheduled start time. You may enter
                                    the virtual meeting room up to ten minutes before the scheduled start time.</p>
                                <br />
                                <p>
                                    Click here to remind yourself of the full <a target="_blank" href="../ProviderTermsGuide.aspx">
                                        terms and conditions</a>.</p>
                            </div>
                        </div>
                    </div>
                </asp:WizardStep>
                <asp:WizardStep ID="WStepSpecify">
                    <iac:SchedulerKey runat="server" ID="SchedulerKey" TargetTypes="ConfirmedAppointment,Available" />
                    <iac:AppointmentStartTimeSpecifier runat="server" ID="TimeSpecifier" Height="410px"
                        Width="560px" />
                    <div style="padding-top: 5px; padding-left: 10px;">
                        <asp:Label runat="server" ID="lblTimeSlotMsg">You can change the view by clicking on day view in the top right.</asp:Label>
                        <asp:CustomValidator runat="server" ID="cstValAppointmentRequired" ErrorMessage="You must specify an appointment start time."
                            Display="Dynamic" ValidationGroup="AptWiz"></asp:CustomValidator>
                    </div>
                </asp:WizardStep>
                <asp:WizardStep ID="WStepTax">
                    <div style="padding: 10px;">
                        <div>
                            <div>
                                <asp:Label runat="server" ID="lblConfirmTaxText"></asp:Label>
                            </div>
                        </div>
                        <div style="padding: 20px;">
                            <asp:RadioButtonList ID="RadioButtonListcbTaxConfirmation" RepeatDirection="Vertical"
                                runat="server">
                                <asp:ListItem Selected="True" Value="1"> Send invoice including any TAX that I specified</asp:ListItem>
                                <asp:ListItem Value="2"> No TAX should be applied in this case</asp:ListItem>
                            </asp:RadioButtonList>
                        </div>
                    </div>
                </asp:WizardStep>
            </WizardSteps>
        </asp:Wizard>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentDialogPreFooter" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentDialogFooter" runat="server">
    <div style="text-align: right; width: 100%;">
        <div style="float: right">
            <a href="javascript:returnToParent(false);">Cancel</a>
        </div>
    </div>
</asp:Content>

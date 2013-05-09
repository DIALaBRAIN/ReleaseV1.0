<%@ Page Title="" Language="C#" MasterPageFile="~/DialogMaster.Master" AutoEventWireup="true"
    CodeBehind="BookAppointment.aspx.cs" Inherits="IntelArcade.WebApp.DialogWindows.BookAppointment"
    ValidateRequest="false" %>

<%@ Register Src="../UserControls/SimpleListSelector.ascx" TagName="ListSelector"
    TagPrefix="iac" %>
<%@ Register Src="../UserControls/AppointmentBooker.ascx" TagName="AppointmentBooker"
    TagPrefix="iac" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentHead" runat="server">
    <script language="javascript" type="text/javascript">
        function GetRadWindow() {
            var oWindow = null;
            if (window.radWindow) oWindow = window.radWindow;
            else if (window.frameElement.radWindow) oWindow = window.frameElement.radWindow;
            return oWindow;
        }

        function returnToParent() {
            //create the argument that will be returned to the parent page
            var oArg = new Object();
            //get a reference to the current RadWindow
            var oWnd = GetRadWindow();

            //Close the RadWindow and send the argument to the parent page
            oWnd.close(oArg);
        }

        function formatForClose() {
            _iac_resizeWindow(600, 170, true);
        }

        function ensureWizardButtons() {
            var disable = document.getElementById("___IAC_ADV_VISIBLE") != null;
            var input = $(":submit");
            $.each(input, function () { this.disabled = disable; });
        }

        function displayAptSummary(containerId, text) {
            document.getElementById(containerId + "_AppointmentSummary").innerHTML = text;
            document.getElementById(containerId + "_AppointmentSummaryPanel").style.display = "block";
            document.getElementById(containerId + "_cstValAppointmentRequired").style.display = "none";
        }

        function hideAptSummary(containerId) {
            document.getElementById(containerId + "_AppointmentSummaryPanel").style.display = "none";
        }

        function buyDBCredit() {
            var oArg = new Object();
            var oWnd = GetRadWindow();
            oWnd.close(oArg);
            window.top.location.href = "/MemberPages/BuyCredit.aspx"
        }

    </script>
    <style type="text/css">
        .accountingSummary .header
        {
            background-color: #3f3f3f;
            color: White;
        }
        
        .accountingSummary .header .leadingCell
        {
            padding-left: 5px;
        }
        
        .accountingSummary .header .cell
        {
            padding-left: 5px;
        }
        
        .accountingSummary .header .trailingCell
        {
            padding-left: 5px;
            padding-right: 5px;
        }
        
        .accountingSummary .body
        {
            background-color: inherit;
            color: inherit;
        }
        
        .accountingSummary .body .leadingCell
        {
            padding-left: 5px;
        }
        
        .accountingSummary .body .cell
        {
            padding-left: 5px;
        }
        
        .accountingSummary .body .trailingCell
        {
            padding-left: 5px;
            padding-right: 5px;
        }
        .rsApt
        {
            width: 100% !important;
        }
        .checkControl label
        {
            font-weight: bold;
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
    <tel:RadAjaxManager ID="RadAjaxManager1" runat="server">
    </tel:RadAjaxManager>
    <div runat="server" id="ErrorContainer" visible="false">
        <br />
    </div>
    <div runat="server" id="__iac_WizardContainer">
        <asp:Wizard runat="server" ID="Wizard1" Width="100%" DisplayCancelButton="true" DisplaySideBar="false"
            CssClass="Wizard">
            <StartNavigationTemplate>
                <div class="dialogFooter" style="position: absolute; width: 100%; bottom: 0;">
                    <div style="padding-right: 20px; padding-top: 10px;">
                        <div style="float: left">
                            <asp:LinkButton ID="StartCancelButton" runat="server" CommandName="Cancel" Text="Cancel"
                                CausesValidation="false" />
                            <div>
                            </div>
                        </div>
                        <div style="float: right">
                            <asp:LinkButton ID="StartNextButton" runat="server" CommandName="MoveNext" Text="Next"
                                ValidationGroup="AptWiz" />
                        </div>
            </StartNavigationTemplate>
            <StepNavigationTemplate>
                <div class="dialogFooter" style="position: absolute; width: 100%; bottom: 0;">
                    <div style="padding-right: 20px; padding-top: 10px;">
                        <div style="position: absolute; left: 50%; margin-left: -35px;">
                            <asp:LinkButton ID="StepPreviousButton" runat="server" CommandName="MovePrevious"
                                Text="Previous" ValidationGroup="AptWiz" />
                        </div>
                        <div style="float: left">
                            <asp:LinkButton ID="StepCancelButton" runat="server" CommandName="Cancel" Text="Cancel"
                                CausesValidation="false" />
                        </div>
                        <div style="float: right">
                            <asp:LinkButton ID="StepNextButton" runat="server" CommandName="MoveNext" Text="Next"
                                ValidationGroup="AptWiz" />
                        </div>
                    </div>
                </div>
            </StepNavigationTemplate>
            <FinishNavigationTemplate>
                <div class="dialogFooter" style="position: absolute; width: 100%; bottom: 0;">
                    <div style="padding-right: 20px; padding-top: 10px;">
                        <div style="float: left">
                            <asp:LinkButton ID="FinishCancelButton" runat="server" CommandName="Cancel" Text="Cancel"
                                CausesValidation="false" />
                        </div>
                        <div style="position: absolute; left: 50%; margin-left: -35px;">
                            <asp:LinkButton ID="FinishPreviousButton" runat="server" CommandName="MovePrevious"
                                Text="Previous" ValidationGroup="AptWiz" />
                        </div>
                        <div style="float: right">
                            <asp:LinkButton ID="FinishNextButton" runat="server" CommandName="MoveComplete" Text="Request"
                                ValidationGroup="AptWiz" />
                        </div>
                    </div>
                </div>
            </FinishNavigationTemplate>
            <WizardSteps>
                <asp:WizardStep ID="WStepSubject">
                    <div style="padding: 10px;">
                        <table border="0" cellpadding="0" cellspacing="0" style="width: 100%;">
                            <tr>
                                <td colspan="3" style="text-align: right; white-space: nowrap;">
                                    <label>
                                        Service Category:</label>&nbsp;<asp:DropDownList ID="Services" runat="server" AutoPostBack="True" />
                                </td>
                            </tr>
                            <tr>
                                <td style="border-bottom: 1px solid #cfcfcf; white-space: nowrap; width: 5px;">
                                    <b><span runat="server" id="SubjectPath" /></b>
                                </td>
                                <td style="border-bottom: 1px solid #cfcfcf; white-space: nowrap; width: 5px;">
                                    &nbsp;
                                </td>
                                <td style="">
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" style="padding-top: 5px; padding-bottom: 4px; white-space: nowrap;">
                                    <div style="width: 546px; height: 27px; overflow: hidden;">
                                        <h1 style="font-size: 1.4em" runat="server" id="ServiceName" />
                                    </div>
                                </td>
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3" style="padding-left: 5px; padding-top: 2px; padding-bottom: 0px;
                                    vertical-align: top;">
                                    <div>
                                        <label>
                                            Fee:</label>&nbsp;<span runat="server" id="Fee"></span> <span style=""></span>
                                    </div>
                                </td>
                            </tr>
                        </table>
                        <div style="overflow: auto; height: 320px;">
                            <div runat="server" id="SummaryContainer" style="padding-bottom: 10px;">
                                <label>
                                    Summary:</label>
                                <p runat="server" id="sSummary" />
                            </div>
                            <div runat="server" id="DetailContainer" style="padding-bottom: 10px;">
                                <label>
                                    Detail:</label>
                                <p runat="server" id="sDescription" />
                            </div>
                        </div>
                    </div>
                </asp:WizardStep>
                <asp:WizardStep ID="WStepDuration">
                    <script>
                        function OnClientValueChanged(sender, args) {
                            var step = parseInt(document.getElementById("<%= hdnIncrementSettings.ClientID %>").value);
                            var value_text = parseInt(document.getElementById("<%= Duration.ClientID %>").value);
                            if (value_text % step == 0)
                                return
                            else {
                                var newValue = ((value_text / parseInt(step) | 0) + 1) * parseInt(step);
                                document.getElementById("<%= Duration.ClientID %>").value = newValue;
                            }
                        }
           
                 
                    </script>
                    <asp:HiddenField ID="hdnIncrementSettings" runat="server" />
                    <div style="padding: 5px; text-align: center;">
                        <asp:Label runat="server" ID="txtDuration" Text="Please tell us how long you need with the provider"></asp:Label>
                        <tel:RadNumericTextBox runat="server" ID="Duration" Width="75px" Type="Number" IncrementSettings-Step="5"
                            MinValue="5" MaxValue="1440" Value="15" ShowSpinButtons="true">
                            <NumberFormat DecimalDigits="0" />
                            <ClientEvents OnValueChanged="OnClientValueChanged"></ClientEvents>
                        </tel:RadNumericTextBox>
                        mins
                    </div>
                </asp:WizardStep>

                <asp:WizardStep ID="WStepPrice">
                    <div style="padding-left: 8px; padding-right: 5px;">
                        <div style="vertical-align: top; padding-bottom: 10px;">
                            <iac:InvoiceRenderer runat="server" ID="InvoiceViewerSystem" Mode="Simple" ShowHeader="false"
                                Width="100%" />
                        </div>
                    </div>
                    <div class="dialogPreFooter" style="padding-left: 11px; padding-top: 5px;">
                        <p>
                            You have <span class="highlight2">
                                <%=AvailableSystemCredit %></span> in <b>d<span class="highlight2">b</span></b>-<i>Credit</i>
                            available.</p>
                        <p id="valAvailableFundsMsg" visible="false" runat="server">
                            <span style="color: Red;">Sorry your <b>d<label class="highlight2">b</label></b>-<i>Credit</i>
                                balance is too low to request a meeting.</span>
                            <br />
                            Please load <a href='javascript:buyDBCredit();'><b>d<span class="highlight2">b</span></b>-<i>Credit</i>
                            </a>and then request a meeting.
                        </p>
                        <p id="SpecialNote" visible="false" runat="server" style="font-size: 11px; line-height: 12px;
                            font-style: italic; ">
                            Note: In some cases Providers will not charge tax even though the summary advises
                            that it might be charged.<br />
                            In these cases the tax element will be re-credited to you after the meeting.</p>
                    </div>
                </asp:WizardStep>
                <asp:WizardStep ID="WStepApt">
                    <p style="padding-left: 7px;">
                        Please click on the calendar and select your preferred meeting start-time.
                    </p>
                    <div style="padding-left: 5px; padding-right: 5px;">
                        <div style="height: 450px; vertical-align: top;">
                            <iac:SchedulerKey runat="server" ID="SchedulerKey" TargetTypes="Unavailable,RequestedAppointment,ConfirmedAppointment" />
                            <iac:AppointmentBooker runat="server" ID="Booker" Height="430px" Width="560px" />
                            <div style="padding-top: 5px; padding-left: 5px;">
                                <asp:CustomValidator runat="server" ID="cstValAppointmentRequired" ErrorMessage="You must specify an appointment time."
                                    Display="Dynamic" ValidationGroup="AptWiz" />
                            </div>
                            <div runat="server" style="display: none; padding-left: 5px;" id="AppointmentSummaryPanel">
                                <label>
                                    Requested Appointment Time:&nbsp;</label><span runat="server" id="AppointmentSummary" /></div>
                        </div>
                    </div>
                </asp:WizardStep>
                <asp:WizardStep ID="WStepConfirm">
                    <div style="padding-left: 11px; padding-right: 5px;">
                        <div style="vertical-align: top;">
                            <table border="0" cellpadding="0" cellspacing="0" style="width: 100%;">
                                <tr style="vertical-align: top;">
                                    <td rowspan="1" style="">
                                        <div style="width: 75; text-align: center; padding-top: 6px;">
                                            <asp:Image runat="server" ID="ProviderImage" class="leftImage" /></div>
                                    </td>
                                    <td style="text-align: left; width: 100%;">
                                        <table border="0" cellpadding="0" cellspacing="0" style="width: 100%;">
                                            <tr>
                                                <td>
                                                    <label>
                                                        Provider</label>
                                                </td>
                                                <td>
                                                    <%=ProviderName%>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <label>
                                                        Subject</label>
                                                </td>
                                                <td>
                                                    <%=ServiceTitle%>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <label>
                                                        Duration</label>
                                                </td>
                                                <td>
                                                    <%=AppointmentDuration%>
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
                                        </table>
                                    </td>
                                </tr>
                            </table>
                            <br />
                            <p>
                                If the requested appointment is confirmed by the <i>provider</i>, the total cost
                                to you will be <span class="highlight2">
                                    <%=TotalCost%></span></p>
                            <br />
                            <p>
                                <b>d<span class="highlight2">b</span></b>-<i>Credit</i> of <span class="highlight2">
                                    <%=TotalCost%></span> will be reserved pending confirmation. There will be no
                                charge to you if the <i>provider</i> declines the appointment.</p>
                            <br />
                            <div style="padding: 2px; overflow: auto; height: 120px; border: 1px solid #dfdfdf;">
                                <p>
                                    Please note: if you are over ten minutes late for a meeting the <i>Provider</i>
                                    has the right to cancel the meeting and you will be charged 33% of your ring fenced
                                    money - this is termed a "NO SHOW". Only if the it was a system error on the part
                                    of <b>DIALa<span class="highlight2">BRAIN</span></b>, i.e. it was our fault that
                                    you could not attend the meeting will your 33% be refunded (if charged at all).
                                    You may enter the virtual meeting room up to ten minutes before the scheduled start
                                    time.</p>
                                <br />
                                <p>
                                    By requesting the appointment no money will actually change hands until the appointment
                                    is held. All that happens is that the fees for the meeting are ring-fenced, which
                                    assures the <i>Provider</i> that you have the money to pay. Only after the session,
                                    once the actual duration of the meeting is known are the funds transferred. You
                                    are charged on a per minute basis and all remaining <b>d<span class="highlight2">b</span></b>-<i>Credit</i>
                                    is returned to you. A "NO SHOW" on your part is charged as stated above.</p>
                                <br />
                                <p>
                                    Click here to remind yourself of the full <a target="_blank" href="../SeekerTermsGuide.aspx">
                                        terms and conditions</a>.</p>
                                <br />
                            </div>
                            <div style="padding-top: 10px; font-weight: 500;">
                                <iac:IACheckBox runat="server" ID="TermsAccepted" Text="I accept the terms and conditions and have read the notes above."
                                    Font-Bold="true" /></div>
                            <asp:CustomValidator runat="server" ID="rfvalTermsAccepted" ErrorMessage="You must accept the terms and conditions."
                                ValidationGroup="AptWiz" /><br />
                        </div>
                    </div>
                </asp:WizardStep>
                <asp:WizardStep ID="WStepClose" StepType="Complete">
                    <div style="padding: 5px 5px 0 10px;">
                        <div style="height: 10px; vertical-align: top;">
                            <p>
                                Your appointment request has been submitted to the <i>provider</i>.</p>
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
    <div style="float: right;">
        <a href="javascript:returnToParent()">Close</a></div>
</asp:Content>

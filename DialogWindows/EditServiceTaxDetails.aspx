<%@ Page Title="" Language="C#" MasterPageFile="~/DialogMaster.Master" AutoEventWireup="true"
    CodeBehind="EditServiceTaxDetails.aspx.cs" Inherits="IntelArcade.WebApp.DialogWindows.EditServiceTaxDetails"
    ValidateRequest="false" %>

<%@ Register Src="../UserControls/EditServiceTaxRates.ascx" TagName="EditServiceTaxRates"
    TagPrefix="uc1" %>
<%@ Register Src="../UserControls/AddServiceTaxRates.ascx" TagName="AddServiceTaxRates"
    TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentHead" runat="server">
    <script language="javascript" type="text/javascript">
        function GetRadWindow() {
            var oWindow = null;
            if (window.radWindow) oWindow = window.radWindow;
            else if (window.frameElement.radWindow) oWindow = window.frameElement.radWindow;
            return oWindow;
        }



        function returnToParent() {
            var oArg = new Object();
            var oWnd = GetRadWindow();
            oWnd.close(oArg);

        }

        function formatForClose() {
            _iac_resizeWindow(600, 110, true);
        }
        function formatForEditTaxRates() {
            _iac_resizeWindow(600, 450, true);
        }
        function formatForApplyToServices() {
            _iac_resizeWindow(600, 620, true);
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
        function _iac_usercontrol_call(result) {

            PageMethods.SetServiceCollectionData(result, OnSucceeded);

        }
        function OnSucceeded(result, userContext, methodName) {

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
        .rptItem .itemBody
        {
            background-color: #FAFAFA;
            border-bottom: 0px solid #CFCFCF;
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentDialogHeader" runat="server">
    <h1 style="float: left;">
        <asp:Literal runat="server" ID="WizardStepHeaderText" /></h1>
    <span style="float: right;">
        <asp:Literal runat="server" ID="StepNumberText" /></span><br />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
    <tel:RadAjaxManager ID="RadAjaxManager1" runat="server">
    </tel:RadAjaxManager>
    <asp:HiddenField ID="RecipientID" runat="server" />
    <div runat="server" id="ErrorContainer" visible="false">
        <br />
    </div>
    <div class="rptItem">
        <div class="itemBody">
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
                                    <asp:LinkButton ID="FinishNextButton" runat="server" CommandName="MoveComplete" Text="Submit"
                                        ValidationGroup="AptWiz" />
                                </div>
                            </div>
                        </div>
                    </FinishNavigationTemplate>
                    <WizardSteps>
                        <asp:WizardStep ID="EditTaxRates">
                            <div style="padding: 10px;">
                                <asp:Panel ID="Panel2" runat="server">
                                </asp:Panel>
                                <uc1:EditServiceTaxRates ID="EditServiceTaxRates1" runat="server" />
                            </div>
                            <asp:Label ID="lbl_rate_notify" Visible="false" Style="position: absolute; bottom: 50px;
                                left: 200px; color: Red; font-size: 11px" runat="server" Text="Please add atleast one rate to continue"></asp:Label>
                        </asp:WizardStep>
                        <asp:WizardStep ID="ApplyToServices" StepType="Finish">
                            <div style="padding: 5px; padding-left: 10px; max-height: 450px; height: 450px; overflow: scroll">
                                <span style="color: #006C9E; font-weight: bold; font-size: 12px">It is mandatory to
                                    add tax rates to your existing services. </span>
                                <asp:Panel ID="Panel1" runat="server">
                                </asp:Panel>
                                <%--  <uc1:AddServiceTaxRates ID="AddServiceTaxRates1"   runat="server" />--%>
                            </div>
                        </asp:WizardStep>
                    </WizardSteps>
                </asp:Wizard>
            </div>
        </div>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentDialogFooter" runat="server">
    <div style="text-align: right; width: 100%;">
        <div style="float: right;">
            <a href="javascript:returnToParent(false);" id="CloseWindowLink" runat="server">close</a>
        </div>
    </div>
</asp:Content>

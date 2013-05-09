<%@ Page Title="" Language="C#" MasterPageFile="~/StandardMaster.master" AutoEventWireup="true"
    CodeBehind="ServiceProfileEdit.aspx.cs" Inherits="IntelArcade.WebApp.ProviderSetup.ServiceProfileEdit"
    EnableEventValidation="false" %>

<%@ Register Src="~/UserControls/SubjectPicker.ascx" TagName="SubjectPicker" TagPrefix="uc1" %>
<%@ Register Src="../UserControls/ProviderSetupNextPreviousNavigator.ascx" TagName="ProviderSetupNextPreviousNavigator"
    TagPrefix="uc2" %>
<%@ Register TagPrefix="uc1" TagName="VideoSelector" Src="~/UserControls/VideoSelector.ascx" %>
<%@ Import Namespace="IntelArcade.Common" %>
<%@ Import Namespace="IntelArcade.WebApp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentHead" runat="server">
    <script type="text/javascript" language="javascript">
        function SetValidator() {
            $.each(Page_Validators, function (index, validator) {
                if (validator.validationGroup == "ManualUpdate") {
                    ValidatorEnable(validator, false);
                }
            });
            return false;
        }

        function SetManualValidator() {
            $.each(Page_Validators, function (index, validator) {
                if (validator.validationGroup == "ManualUpdate") {
                    ValidatorEnable(validator, true);
                }
            }); return false;
        }

        function ShowEdit() {
            $('.edit').fadeIn("slow");
            $('.addButton').fadeOut("slow");
            $('.subject-list').fadeOut("slow");
        }

        function HideEdit() {
            $('.edit').fadeOut("slow");
            $('.addButton').fadeIn("slow");
            $('.subject-list').fadeIn("slow");
        }

        function _onDelete_WindowClose(oWnd, args) {
            if (args == null) return;
            var arg = args.get_argument();
            if (arg.DoPostback) {
                handleResponse_DialogResponseHandler(arg.ServiceResponse, arg.Argument);
            }
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
    <iac:ClientResponseHandler runat="server" ID="DialogResponseHandler" />
    <h2 style="font-size: 1.2em">
        <%=PageTitle %></h2>
    <iac:FieldSet runat="server" ID="FieldSet10" Title="<%$ Resources:FieldsetTitles,SubjectDetails %>"
        class="formData" style="margin-left: 30px;">
    </iac:FieldSet>
    <div style="margin-left: 190px;">
        <table style="width: 100%; align: right; margin-top: -60px">
            <tr>
                <td>
                    <uc2:ProviderSetupNextPreviousNavigator ID="psnTop" runat="server" ShowToolTip="true" />
                </td>
            </tr>
        </table>
    </div>
    <div>
    </div>
    <iac:FieldSet runat="server" ID="FieldSet1" Title="" class="formData" style="margin-left: 32px;">
        <div class="service_edit" style="border-top: 1px solid #cfcfcf; padding: 5px 0px 5px 0;
            width: 97.8%">
            <div class="addButton" title="Add Service" style="margin-bottom: 5px; float: right;
                padding-right: 0px; display: none;">
                <a href="javascript:ShowEdit();"></a>
            </div>
            <br />
            <div class="edit">
                <iac:InputContainer runat="server" ID="InputContainer1" Style="margin-left: 58px;">
                    <Item Text="<%$ Resources:Labels,SubjectCategory%>">
                        <asp:UpdatePanel runat="server" ID="UpdatePanelSubject" ChildrenAsTriggers="False" RenderMode="Inline" UpdateMode="Conditional" >
                        <ContentTemplate>
                                                    <div>
                        <asp:DropDownList CssClass="comboBox" runat="server" ID="cbParentSubjects"></asp:DropDownList>
                        <asp:DropDownList runat="server" ID="cbSubjects" CssClass="comboBox" ></asp:DropDownList>&nbsp; <span id="Span2" style="color:Red" >*</span> 
                        <iac:IARequiredFieldValidator ID="IARequiredFieldValidator1" runat="server" ControlToValidate="cbSubjects"  ValidationGroup = "ManualUpdate"></iac:IARequiredFieldValidator>
                        </div>
                        <ajaxControlToolkit:CascadingDropDown runat="server" ID="cddParentSubjects" TargetControlID="cbParentSubjects" ServicePath="~/AjaxCtrlSvc.asmx" ServiceMethod="GetParentSubjects" Category="ParentSubject"  PromptText="Select a category" LoadingText="Loading" >
                        </ajaxControlToolkit:CascadingDropDown>
                        <ajaxControlToolkit:CascadingDropDown ID="cddSubjects" runat="server" TargetControlID="cbSubjects" ParentControlID="cbParentSubjects" ServicePath="~/AjaxCtrlSvc.asmx" ServiceMethod="GetSubjects" Category="Subject" PromptText="Please select a subject" LoadingText="Loading">
                        </ajaxControlToolkit:CascadingDropDown>
                        </ContentTemplate>
                        </asp:UpdatePanel>
                     </Item>
                <Item Text="<%$ Resources:Labels,Title%>"><asp:TextBox CssClass="title" Width="354" runat="server" ID="SubjectTitle" />
                &nbsp;<span id="Span1" style="color:Red" >*</span> <iac:IARequiredFieldValidator runat="server" ID="rfvalTitle" ControlToValidate="SubjectTitle" RenderAsBlockElement="false"  ValidationGroup = "ManualUpdate" /></Item>
                <Item Text="<%$ Resources:Labels,SummaryDescription%>">
                <asp:TextBox runat="server" ID="SummaryTextBox" Rows="4" TextMode="MultiLine" class="TextAreaDragHorizontal" ValidationGroup = "ManualUpdate"/>
                &nbsp; <span id="Span3" style="color:Red" >*</span> <iac:IARequiredFieldValidator runat="server" ID="rfvalSummaryDescription" ControlToValidate="SummaryTextBox" RenderAsBlockElement="true"  ValidationGroup = "ManualUpdate"/></LabelCell></Item>
                <Item Text="<%$ Resources:Labels,DetailedDescription%>"><asp:TextBox runat="server" ID="DescriptionTextBox" Rows="5" TextMode="MultiLine"  class="TextAreaDragHorizontal" /></Item>
                <Item Text="<%$ Resources:Labels,Price%>">
                <iac:CurrencyBox runat="server" ID="SingleFee" width="150px"  />
                        &nbsp; <span id="Span4" style="color:Red" >*</span> <iac:IARequiredFieldValidator runat="server" ID="rfvalSingleFee" ControlToValidate="SingleFee"  ValidationGroup = "ManualUpdate"/>
                        <asp:CustomValidator ID="cvSingleFee" runat="server" ControlToValidate="SingleFee"
                            OnServerValidate="FeeValidate" ErrorMessage="*"></asp:CustomValidator> </Item>    
            <table>
             <tr>
                    <td  style="text-align: right; padding-right:6px;width:150px;">
                       <asp:Label Text="Vat / Tax Rate:" runat="server" ID="lblTaxRate" Font-Bold="true"></asp:Label>
                    </td>
                    <td  style="padding-left: 2px;">
                        <iac:TaxRateDropDown ID="DropDownListVAT" runat="server" CssClass="comboBox" />
                        &nbsp;<iac:IARequiredFieldValidator runat="server" ID="rfvalVAT" ControlToValidate="DropDownListVAT"  ValidationGroup = "ManualUpdate"
                            RenderAsBlockElement="false" />
                    </td>
                </tr>
                <tr><td style="text-align: right; padding-right: 6px;width:150px;padding-top:5px;"><span style="font-weight:bold;" >Free Session:</span></td><td  style="padding-left: 2px;padding-top:5px;"><asp:HiddenField ID="hfFreeSessionID" runat="server" />
            <asp:HiddenField ID="hfDuration" runat="server" />
            <asp:CheckBox ID="cbFreeSession" runat="server" ToolTip="Offer Free 1st Session to the Seekers" />
            <span>Duration </span>
             <tel:RadNumericTextBox runat="server" ID="fsDuration" Width="60px" Type="Number"
                IncrementSettings-Step="5" MinValue="5" MaxValue="30" Value="15" ShowSpinButtons="true">
                <NumberFormat DecimalDigits="0" />
            </tel:RadNumericTextBox> (mins)</td>
             </tr>
            </table>
                </iac:InputContainer></div></div></iac:FieldSet><div runat="server" id="controls" class="edit" style="float: left; padding-left: 140px; margin-left: 59px; margin-top: -28px;">
        <table>
            <tr>
                <td class="updateButton">
                    <asp:LinkButton ID="SubmitButton" runat="server" Text="" OnClientClick="SetManualValidator"></asp:LinkButton></td><td title="Cancel" class="cancelButton" style="padding-left: 10px">
                    <asp:LinkButton ID="CancelButton" runat="server" Text="" CausesValidation="false"></asp:LinkButton></td></tr></table></div><div class="subject-list" style="margin-left: 200px; display: none; margin-top: -20px;">
        <asp:Repeater runat="server" ID="SubjectRepeater" OnItemDataBound="SubjectRepeater_ItemDataBound">
            <HeaderTemplate>
            </HeaderTemplate>
            <SeparatorTemplate>
            </SeparatorTemplate>
            <ItemTemplate>
                <div style="clear: both; padding-top: 5px; margin-bottom: 10px; margin-right: -4px;
                    float: right">
                    <div class="inner">
                        <span class="deleteButton" title="Delete" style="padding-left: 33px">
                            <iac:ConfirmationLink ID="ConfirmationLink1" runat="server" OnClientClose="_onDelete_WindowClose"
                                ReturnValue='<%# ((IntelArcade.Common.ServiceProfile)Container.DataItem).ServiceProfileID%>'>
                            </iac:ConfirmationLink>
                        </span>
                    </div>
                </div>
                <div class="rptItem">
                    <div class="itemHeader">
                        <div class="inner">
                        </div>
                    </div>
                    <div class="itemBody" id="rptBody" runat="server">
                        <div class="inner" style="padding-bottom: 10px;">
                            <img id="Img1" src="~/images/providerOnline-32x.png" alt="Image" title="Image" class="leftImage"
                                style="width: 50px; height: 50px;" runat="server" />
                            <span>
                                <%# FormatHelper.GetSubjectPath((IntelArcade.Common.ServiceProfile)Container.DataItem)%></span>
                            <h1 style="padding-bottom: 4px; line-height: 23px; font-size: large">
                                <%#((IntelArcade.Common.ServiceProfile)Container.DataItem).Title%></h1>
                            <div>
                                <table>
                                    <tr>
                                        <td>
                                            <%# FormatHelper.FormatRate((IntelArcade.Common.ServiceProfile)Container.DataItem)%>
                                        </td>
                                        <td>
                                            <div style="margin-left: 5px;">
                                                <img id="freeTime" runat="server" src="~/images/Free-db-time.png" width="25" title="Free db Time"
                                                    visible="<%# ((IntelArcade.Common.ServiceProfile)Container.DataItem).FreeTimeActive %>" />
                                                <img id="Img2" runat="server" src="~/images/Free-1st-Session.png" width="25" title="Free First Session"
                                                    visible="<%# IsFreeSession((IntelArcade.Common.ServiceProfile)Container.DataItem) %>" />
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                            <div id="Div1" visible="<%# SetAttendeeVisiblitity((IntelArcade.Common.ServiceProfile)Container.DataItem) %>"
                                runat="server">
                                <label>
                                    <asp:Literal ID="Literal2" runat="server" Text="<%$ Resources:Labels,MinGroupAttendees%>" />:</label>&nbsp; <span runat="server" id="Span1"><%# ((IntelArcade.Common.ServiceProfile)Container.DataItem).MinGroupAttendees%></span></div><div style="padding-top: 5px; max-width: 500px">
                                <span style="padding-top: 4px;"><i>
                                    <%# ((IntelArcade.Common.ServiceProfile)Container.DataItem).SummaryDescription%></i></span>
                                <span style="padding-top: 4px; max-width: 500px;">
                                    <%# ((IntelArcade.Common.ServiceProfile)Container.DataItem).Description%></span>
                            </div>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
            <FooterTemplate>
            </FooterTemplate>
        </asp:Repeater>
    </div>
    <br />
    <div style="padding-left: 194px; padding-right: 2px;">
        <div class="EditPageFooterLine">
        </div>
        <uc2:ProviderSetupNextPreviousNavigator ID="psnBottom" runat="server" ShowToolTip="true" />
    </div>
    <asp:HiddenField ID="hdfParentSubjects" runat="server" />
    <asp:HiddenField ID="hdfSubjects" runat="server" />
    <asp:HiddenField ID="hdfSubjectTitle" runat="server" />
    <asp:HiddenField ID="hdfSummary" runat="server" />
    <asp:HiddenField ID="hdfSingleFee" runat="server" />
    <asp:HiddenField ID="hdflblTaxRate" runat="server" />
    <asp:HiddenField ID="hdfhfDuration" runat="server" />
    <asp:HiddenField ID="hdfDescription" runat="server" />
    <asp:HiddenField ID="hdfcbFreeSession" runat="server" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentRightAbove" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentRightBelow" runat="server">
</asp:Content>

<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="QualificationEdit.aspx.cs"
    MasterPageFile="~/StandardMaster.master" Inherits="IntelArcade.WebApp.ProviderSetup.QualificationEdit" %>

<%@ Register Src="../UserControls/ProviderSetupNextPreviousNavigator.ascx" TagName="ProviderSetupNextPreviousNavigator"
    TagPrefix="uc2" %>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentHead" runat="server">
    <script type="text/javascript" language="javascript">

        function confirmCallBackFn(oWnd, args) {
            if (args == null) return;
            var arg = args.get_argument();
            if (arg.DoPostback) {
                $("#<%=btnLinkedInImport.ClientID %>").click();
            }
        }

        function SetValidator() {
            radconfirm('Be aware that if you proceed your current data may be over-written with your Linkedin data.', confirmCallBackFn, 330, 100, null, 'Confirm', null);
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
            $('.qualifications').fadeOut("slow");
            $('.addButton').fadeOut("slow");
        }

        function HideEdit() {
            $('.edit').fadeOut("slow");
            $('.qualifications').fadeIn("slow");
            $('.addButton').fadeIn("slow");
        }

        function _onDelete_WindowClose(oWnd, args) {
            if (args == null) return;
            var arg = args.get_argument();
            if (arg.DoPostback) {
                handleResponse_DialogResponseHandler(arg.ServiceResponse, arg.Argument);
            }
        }  
    </script>
    <style>
        .LinkedInImportButton
        {
            margin-left: 50px;
        }
        .gecko .LinkedInImportButton
        {
            margin-left: 10px;
        }
        .chrome .LinkedInImportButton
        {
            margin-left: 50px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentBody" runat="server">
    <iac:ClientResponseHandler runat="server" ID="DialogResponseHandler" />
    <h2 style="font-size: 1.2em">
        <%=PageTitle %></h2>
    <iac:FieldSet runat="server" ID="FieldSet10" Title="Qualification" class="formData"
        style="margin-left: 30px;">
    </iac:FieldSet>
    <div style="margin-left: 190px;">
        <table style="width: 100%; align: right; margin-top: -60px">
            <tr>
                <td>
                    <span class="LinkedInImportButton" title="Update your qualifications details from Linkedin."
                        style="float: left; position: absolute; padding-left: 200px;">
                        <iac:ConfirmationLink ID="ConfirmationLink2" runat="server" DialogHeight="220" OnClientClose="confirmCallBackFn"
                            Message="Be aware that if you proceed your current data may be over-written with your Linkedin data.">
                        </iac:ConfirmationLink>
                    </span>
                    <uc2:ProviderSetupNextPreviousNavigator ID="psnTop" runat="server" ShowToolTip="true" />
                </td>
            </tr>
        </table>
    </div>
    <div style="display: none;">
        <asp:Button runat="server" ID="btnLinkedInImport" />
    </div>
    <iac:FieldSet runat="server" ID="FieldSet1" Title="" class="formData" style="margin-left: 58px;
        width: 96%">
        <div style="border-top: 1px solid #cfcfcf; padding: 5px 0px 5px 0; width: 97%;">
        </div>
        <div class="addButton" title="Add Qualification" style="margin-bottom: 5px; float: right;
            margin-right: 20px; display: none;">
            <a href="javascript:ShowEdit();"></a>
        </div>
        <div class="edit">
            <br />
            <iac:InputContainer runat="server" ID="InputContainer1" Columns="1"> 
                <Item Text="<%$ Resources:Labels,Country%>">
                        <iac:CountryDropDown runat="server" ID="CountryCode" MaxHeight="200px" CssClass="aspTextBox" ><Items><telerik:RadComboBoxItem Text="Select" Selected="true"/></Items></iac:CountryDropDown>
                        &nbsp; <span id="Span2" style="color:Red" >*</span> <iac:IARequiredFieldValidator InitialValue="Select" runat="server" ID="rfvalCountryCode" ControlToValidate="CountryCode" RenderAsBlockElement="false" ValidationGroup = "ManualUpdate" />
                     </Item>
                <Item Text="<%$ Resources:Labels,QualificationAuthority%>"><asp:TextBox runat="server" ID="txtQualificationAuthority" CssClass="aspTextBox" />&nbsp;
                 <span id="Span1" style="color:Red" >*</span> <iac:IARequiredFieldValidator runat="server" ID="rfvalQualificationAuthority" ControlToValidate="txtQualificationAuthority" RenderAsBlockElement="false" ValidationGroup = "ManualUpdate" /></Item>
                <Item Text="<%$ Resources:Labels,QualificationCourse%>"><asp:TextBox runat="server" ID="txtQualificationCourse" CssClass="aspTextBox" />&nbsp;
                  <span id="Span3" style="color:Red" >*</span> <iac:IARequiredFieldValidator runat="server" ID="rfvalQualificationCourse" ControlToValidate="txtQualificationCourse" RenderAsBlockElement="false" ValidationGroup = "ManualUpdate"/></Item>
                <Item Text="<%$ Resources:Labels,QualificationName%>"><asp:TextBox runat="server" ID="txtQualificationName" CssClass="aspTextBox" />&nbsp; <span id="Span4" style="color:Red" >*</span> 
                <iac:IARequiredFieldValidator runat="server" ID="rfvalQualificationName" ControlToValidate="txtQualificationName" RenderAsBlockElement="false" ValidationGroup = "ManualUpdate"/></Item>
                <Item Text="<%$ Resources:Labels,IssuedDate%>">
                <tel:RadMonthYearPicker ID="IssuedDate" Runat="server" style="height:20px;" ZIndex="30001" ><DateInput DisplayDateFormat="MM/yyyy"></DateInput></tel:RadMonthYearPicker>
                &nbsp;  <span id="Span5" style="color:Red" >*</span> <iac:IARequiredFieldValidator runat="server" ID="rfvalFromDate" ControlToValidate="IssuedDate" RenderAsBlockElement="false" ValidationGroup = "ManualUpdate" /></Item>
                
                <Item Text="<%$ Resources:Labels,CourseType%>"><iac:CourseTypeDropDown runat="server" ID="cboCourseType" CssClass="aspTextBox" />&nbsp;  <span id="Span6" style="color:Red" >*</span> <iac:IARequiredFieldValidator runat="server" ID="rfvalCourseType" ControlToValidate="cboCourseType" RenderAsBlockElement="false"  ValidationGroup = "ManualUpdate"/></Item>
                <Item Text="<%$ Resources:Labels,Notes%>">
                <asp:TextBox runat="server" ID="txtNotes" TextMode="MultiLine" Rows="10" class="TextAreaDragHorizontal"/>
            </Item>
            </iac:InputContainer>
        </div>
    </iac:FieldSet>
    <div class="edit" style="float: left; padding-left: 140px; margin-left: 59px; margin-top: -28px;">
        <table>
            <tr>
                <td class="updateButton">
                    <asp:LinkButton ID="SubmitButton" runat="server" Text="" OnClientClick="SetManualValidator"></asp:LinkButton>
                </td>
                <td title="Cancel" class="cancelButton" style="padding-left: 10px">
                    <asp:LinkButton ID="CancelButton" CausesValidation="false" runat="server" Text=""></asp:LinkButton>
                </td>
            </tr>
        </table>
    </div>
    <div class="qualifications" style="padding-left: 200px; display: none;">
        <asp:Repeater runat="server" ID="QualificationRepeater" OnItemDataBound="QualificationRepeater_ItemDataBound">
            <HeaderTemplate>
            </HeaderTemplate>
            <SeparatorTemplate>
            </SeparatorTemplate>
            <ItemTemplate>
                <div style="clear: both; padding-top: 5px; margin-bottom: 10px; float: right; margin-right: -5px">
                    <div class="inner">
                        <span class="deleteButton" title="Delete" style="padding-left: 33px">
                            <iac:ConfirmationLink ID="ConfirmationLink1" runat="server" OnClientClose="_onDelete_WindowClose"
                                ReturnValue='<%# ((IntelArcade.Common.Qualification)Container.DataItem).QualificationID%>'>
                            </iac:ConfirmationLink>
                        </span>
                    </div>
                </div>
                <div class="rptItem">
                    <div class="itemHeader">
                        <div class="inner">
                        </div>
                    </div>
                    <div class="itemBody" id="divPBody" runat="server">
                        <div class="inner">
                            <img id="Img1" src="~/images/Qual-Prof-48.png" alt="Image" title="Image" class="leftImage"
                                style="width: 50px; height: 50px;" runat="server" />
                            <div style="padding-top: 4px;">
                                <h1 style="font-size: large">
                                    <%#((IntelArcade.Common.Qualification)Container.DataItem).QualificationAuthority%></h1>
                            </div>
                            <div style="padding-top: 2px;">
                                <span style="padding-left: 2px;">
                                    <%# GetCountryName(Container.DataItem)%></span><br />
                                <span style="padding-left: 2px;"><b>
                                    <%# GetDate(((IntelArcade.Common.Qualification)Container.DataItem).IssuedDate)%></b></span>
                            </div>
                            <div style="padding-top: 5px;">
                                <h2 style="font-size: 14px">
                                    <%# ((IntelArcade.Common.Qualification)Container.DataItem).QualificationName%></h2>
                                <p>
                                    <b>
                                        <%# ((IntelArcade.Common.Qualification)Container.DataItem).QualificationCourse%></b>&nbsp;<i>(<%#GetCourseType(((IntelArcade.Common.Qualification)Container.DataItem).CourseType) %>)</i></p>
                                <div style="padding-top: 5px;">
                                    <p style="padding-top: 4px;">
                                        <i>
                                            <%# ((IntelArcade.Common.Qualification)Container.DataItem).Notes%></i></p>
                                </div>
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
    <asp:HiddenField ID="hdfCountryCode" runat="server" />
    <asp:HiddenField ID="hdfQualificationAuthority" runat="server" />
    <asp:HiddenField ID="hdfQualificationCourse" runat="server" />
    <asp:HiddenField ID="hdfQualificationName" runat="server" />
    <asp:HiddenField ID="hdfIssuedDate" runat="server" />
    <asp:HiddenField ID="hdfcboCourseType" runat="server" />
    <asp:HiddenField ID="hdftxtNotes" runat="server" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentRightAbove" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentRightBelow" runat="server">
</asp:Content>

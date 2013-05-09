<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="WorkHistoryEdit.aspx.cs"
    MasterPageFile="~/StandardMaster.master" Inherits="IntelArcade.WebApp.ProviderSetup.WorkHistoryEdit" %>

<%@ Register Src="../UserControls/ProviderSetupNextPreviousNavigator.ascx" TagName="ProviderSetupNextPreviousNavigator"
    TagPrefix="uc2" %>
<%@ Register Src="../UserControls/ProviderSetupNextPreviousNavigator.ascx" TagName="ProviderSetupNextPreviousNavigator"
    TagPrefix="uc5" %>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentHead" runat="server">
    <script type="text/ecmascript" language="javascript">
          //<![CDATA[
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
            $('.addButton').fadeOut("slow");
            $('.work-history').fadeOut("slow");
        }

        function HideEdit() {
            $('.edit').fadeOut("slow");
            $('.addButton').fadeIn("slow");
            $('.work-history').fadeIn("slow");
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
        
        .RoleRequired
        {   
            color:Red; position:relative; top:-71px; 
        }
        
        .gecko .RoleRequired
        {   
            color:Red; position:relative; top:-71px; 
        }
        
        .chrome .RoleRequired
        {   
            color:Red; position:relative; top:-55px; 
        }
        .safari .RoleRequired
        {   
            color:Red; position:relative; top:-55px;
        }
        
        .RoleStar
        {
            color:Red; top:-72px; position:relative;
        }
        .gecko .RoleStar
        {
            color:Red; top:-70px; position:relative;
        }
        .chrome .RoleStar
        {
            color:Red; top:-55px; position:relative;
        }
        .safari .RoleStar
        {
              color:Red; top:-55px; position:relative;
        }
        
        .toDateDiv
        {
            padding-left: 56px;
        }
        .gecko .toDateDiv
        {
            padding-left: 55px;
        }
        .chrome .toDateDiv
        {
            padding-left: 54px;padding-bottom:2px;
        }
        .safari .toDateDiv
        {
            padding-left: 54px;padding-bottom:4px;
        }
        
        .toDateDiv2
        {
            padding-left: 0px; border-left-width: 0px; margin-left: -6px
        }
        .gecko .toDateDiv2
        {
            padding-left: 0px; border-left-width: 0px; margin-left: -10px
        }
        .chrome .toDateDiv2
        {
            padding-left: 0px; border-left-width: 0px; margin-left: -10px
        }
        .safari .toDateDiv2
        {
            padding-left: 0px; border-left-width: 0px; margin-left: -10px
        }
          .TextAreaDragHorizontal
        {
        width:353px;
        }
        .gecko .TextAreaDragHorizontal
        {
            width:351px;
        }
     
    </style>

</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentBody" runat="server">
    <iac:ClientResponseHandler runat="server" ID="DialogResponseHandler" />
    <h2 style="font-size: 1.2em">
        <%=PageTitle %></h2>
    <iac:FieldSet runat="server" ID="FieldSet10" Title="WorkHistory" class="formData"
        style="margin-left: 30px;">
    </iac:FieldSet>
    <div style="margin-left: 190px;">
        <table style="width: 100%; align: right; margin-top: -60px">
            <tr>
                <td style="vertical-align: top">
                    <span title="Update your qualifications details from Linkedin." class="LinkedInImportButton"
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
    <div style="border-top: 1px solid #cfcfcf; padding: 5px 0px 5px 0; width: 98%; margin-left: 15px;">
    </div>
    <iac:FieldSet runat="server" ID="FieldSet1" Title="" class="formData" style="margin-left: 67px;  width: 96%">
        <br />
        <div class="addButton" title="Add Work History" style="margin-bottom: 5px; float: right;
            padding-right: 30px; margin-top: -20px; display: none;">
            <a href="javascript:ShowEdit();"></a>
        </div>
        <div class="edit">
            <iac:InputContainer runat="server" ID="InputContainer1" Columns="1">
    <Item Text="<%$ Resources:Labels,Country%>">
        <iac:CountryDropDown runat="server" ID="CountryCode" MaxHeight="200px" Width="205px" ><Items><telerik:RadComboBoxItem Text="Select" Selected="true"/></Items></iac:CountryDropDown>&nbsp;  <span id="Span1" style="color:Red" >*</span>
        <iac:IARequiredFieldValidator runat="server" InitialValue="Select" ID="rfvalCountryCode" ControlToValidate="CountryCode" RenderAsBlockElement="false" ValidationGroup = "ManualUpdate"/>
     </Item>
<Item Text="<%$ Resources:Labels,CompanyName%>"><asp:TextBox runat="server" ID="CompanyName" CssClass="aspTextBox" />&nbsp; <span id="Span2" style="color:Red" >*</span> <iac:IARequiredFieldValidator runat="server" ID="rfvalCompanyName" ControlToValidate="CompanyName" RenderAsBlockElement="false" ValidationGroup = "ManualUpdate" /></Item>
<item><asp:CheckBox ID="chkCurrent" runat="server" Text=" Current Position" AutoPostBack="true"></asp:CheckBox> </item>
<Item Text="<%$ Resources:Labels,FromDate%>">
<tel:RadMonthYearPicker ID="FromDate1" runat="server" style="height:20px;" ZIndex="30001"> <DateInput DisplayDateFormat="MM/yyyy">   </DateInput>   </tel:RadMonthYearPicker>
&nbsp;<span id="Span3" style="color:Red" >*</span>&nbsp;<iac:IARequiredFieldValidator runat="server" ID="rfvalFromDate" ControlToValidate="FromDate1" RenderAsBlockElement="false" ValidationGroup = "ManualUpdate"/></Item>
 </iac:InputContainer>
 <div class="toDateDiv">
   <iac:InputContainer runat="server" ID="InputContainer2" Columns="1">
<Item Text="<%$ Resources:Labels,ToDate%>"><tel:RadMonthYearPicker ID="ToDate" Runat="server" style="height:20px;" ZIndex="30001" >
<DateInput DisplayDateFormat="MM/yyyy">
    </DateInput>
</tel:RadMonthYearPicker>&nbsp;  <span id="Span4" style="color:Red" >*</span>
<iac:IARequiredFieldValidator runat="server" ID="rfvalToDate" ControlToValidate="ToDate" RenderAsBlockElement="false" ValidationGroup = "ManualUpdate" /></Item>
</iac:InputContainer>
</div>
 <div class="toDateDiv2">
  <iac:InputContainer runat="server" ID="InputContainer3" Columns="1" style="padding-left:45px;">
<Item Text="<%$ Resources:Labels,Position%>"><asp:TextBox runat="server" ID="Position" CssClass="aspTextBox" />&nbsp;  <span id="Span5" style="color:Red" >*</span>
<iac:IARequiredFieldValidator runat="server" ID="rfvalPosition" ControlToValidate="Position" RenderAsBlockElement="false" ValidationGroup = "ManualUpdate" /></Item>
<Item Text="<%$ Resources:Labels,RoleDescription%>">
    <asp:TextBox ForeColor="Black"  runat="server" ID="RoleDescription" Rows="4" TextMode="MultiLine"  class="TextAreaDragHorizontal"/>&nbsp; <span id="Span6" class="RoleStar" >*</span>&nbsp;<iac:IARequiredFieldValidator runat="server" ID="rfvalRoleDescription" ControlToValidate="RoleDescription"  ValidationGroup = "ManualUpdate" class="RoleRequired" />
</Item>
<Item Text="<%$ Resources:Labels,Notes%>">
    <asp:TextBox ForeColor="Black" runat="server" ID="Notes" Rows="6" TextMode="MultiLine" class="TextAreaDragHorizontal" />
</Item>
            </iac:InputContainer>
            </div>
        </div>
    </iac:FieldSet>
    <div class="edit" style="float: left; padding-left: 138px; margin-left: 59px; margin-top: -26px;">
        <table>
            <tr>
                <td class="updateButton">
                    <asp:LinkButton ID="SubmitButton" runat="server" Text="" OnClientClick="SetManualValidator"></asp:LinkButton>
                </td>
                <td title="Cancel" class="cancelButton" style="padding-left: 10px">
                    <asp:LinkButton ID="CancelButton" runat="server" CausesValidation="false" Text=""></asp:LinkButton>
                </td>
            </tr>
        </table>
    </div>
    <div class="work-history" style="margin-left: 200px; display: none; margin-top: -20px;">
        <asp:Repeater runat="server" ID="WorkHistoryRepeater" OnItemDataBound="WorkHistoryRepeater_ItemDataBound">
            <HeaderTemplate>
            </HeaderTemplate>
            <SeparatorTemplate>
            </SeparatorTemplate>
            <ItemTemplate>
                <div style="clear: both; padding-top: 5px; margin-bottom: 10px; float: right; margin-right: -5px">
                    <div class="inner">
                        <span class="deleteButton" title="Delete" style="padding-left: 33px">
                            <iac:ConfirmationLink ID="ConfirmationLink1" runat="server" OnClientClose='_onDelete_WindowClose'
                                ReturnValue='<%# ((IntelArcade.Common.WorkHistoryItem)Container.DataItem).WorkHistoryID%>'>
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
                        <div class="inner">
                            <img id="Img1" src="~/images/Net-Presence---Company.png" alt="Image" title="Image"
                                class="leftImage" style="width: 50px; height: 50px;" runat="server" />
                            <div style="padding-top: 4px;">
                                <h1 style="font-size: large">
                                    <%#((IntelArcade.Common.WorkHistoryItem)Container.DataItem).EmployerName%></h1>
                            </div>
                            <div style="padding-top: 2px;">
                                <span style="padding-left: 2px;">
                                    <%# GetCountryName(Container.DataItem)%></span><br />
                                <span style="padding-left: 2px;"><b>
                                    <%# GetDate(((IntelArcade.Common.WorkHistoryItem)Container.DataItem).FromDate, null)%></b>&nbsp;-&nbsp;<b><%# GetDate(((IntelArcade.Common.WorkHistoryItem)Container.DataItem).ToDate, (IntelArcade.Common.WorkHistoryItem)Container.DataItem)%></b></span></div>
                            <div style="padding-top: 5px;">
                                <h2 style="font-size: 14px">
                                    <%# ((IntelArcade.Common.WorkHistoryItem)Container.DataItem).RoleName%></h2>
                                <p>
                                    <%# ((IntelArcade.Common.WorkHistoryItem)Container.DataItem).RoleDescription%></p>
                                <p style="padding-top: 4px;">
                                    <i>
                                        <%# ((IntelArcade.Common.WorkHistoryItem)Container.DataItem).Notes%></i></p>
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
    <div style="padding-left: 194px; padding-right: 4px;">
        <div class="EditPageFooterLine">
        </div>
        <uc2:ProviderSetupNextPreviousNavigator ID="psnBottom" runat="server" ShowToolTip="true" />
    </div>
    <asp:HiddenField ID="hdfCountryCode" runat="server" />
    <asp:HiddenField ID="hdfCompanyName" runat="server" />
    <asp:HiddenField ID="hdfFromDate" runat="server" />
    <asp:HiddenField ID="hdfToDate" runat="server" />
    <asp:HiddenField ID="hdfPosition" runat="server" />
    <asp:HiddenField ID="hdfRoleDescription" runat="server" />
    <asp:HiddenField ID="hdfNotes" runat="server" />
    <asp:HiddenField ID="hdfCurrentPosition" runat="server" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentRightAbove" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentRightBelow" runat="server">
</asp:Content>

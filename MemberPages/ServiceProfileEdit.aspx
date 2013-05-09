<%@ Page Title="" Language="C#" MasterPageFile="~/StandardMaster.master" AutoEventWireup="true"
    CodeBehind="ServiceProfileEdit.aspx.cs" Inherits="IntelArcade.WebApp.ServiceProfileEdit"
    EnableEventValidation="false" %>

<%@ Register Src="~/UserControls/SubjectPicker.ascx" TagName="SubjectPicker" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
    <h2>
        <%=PageTitle %></h2>
    <iac:FieldSet runat="server" ID="FieldSet1" Title="<%$ Resources:FieldsetTitles,SubjectDetails %>"
        class="formData">
        <div class="service_edit" style="border-top: 1px solid #cfcfcf; padding: 5px 0px 5px 0;">
            <br />
            <iac:InputContainer runat="server" ID="InputContainer1">
                    <Item Text="<%$ Resources:Labels,SubjectCategory%>">
                        <asp:UpdatePanel runat="server" ID="UpdatePanelSubject" ChildrenAsTriggers="False" RenderMode="Inline" UpdateMode="Conditional" >
                        <ContentTemplate>
                        <div>
                        <asp:DropDownList CssClass="comboBox" runat="server" ID="cbParentSubjects"></asp:DropDownList>
                        <asp:DropDownList CssClass="comboBox" runat="server" ID="cbSubjects"></asp:DropDownList>
                        <iac:IARequiredFieldValidator runat="server" ControlToValidate="cbSubjects"></iac:IARequiredFieldValidator>
                        </div>
                        <ajaxControlToolkit:CascadingDropDown runat="server" ID="cddParentSubjects" TargetControlID="cbParentSubjects" ServicePath="~/AjaxCtrlSvc.asmx" ServiceMethod="GetParentSubjects" Category="ParentSubject"  PromptText="Select a category" LoadingText="Loading" >
                        </ajaxControlToolkit:CascadingDropDown>
                        <ajaxControlToolkit:CascadingDropDown ID="cddSubjects" runat="server" TargetControlID="cbSubjects" ParentControlID="cbParentSubjects" ServicePath="~/AjaxCtrlSvc.asmx" ServiceMethod="GetSubjects" Category="Subject" PromptText="Please select a subject" LoadingText="Loading">
                        </ajaxControlToolkit:CascadingDropDown>
                        </ContentTemplate>
                        </asp:UpdatePanel>
                     </Item>
                <Item Text="<%$ Resources:Labels,Title%>"><asp:TextBox runat="server" ID="SubjectTitle" CssClass="title" MaxLength="55" />&nbsp;<iac:IARequiredFieldValidator runat="server" ID="rfvalTitle" ControlToValidate="SubjectTitle" RenderAsBlockElement="false" /></Item>
                <Item Text="<%$ Resources:Labels,SummaryDescription%>"><LabelCell><iac:IARequiredFieldValidator runat="server" ID="rfvalSummaryDescription" ControlToValidate="SummaryTextBox" RenderAsBlockElement="true" /></LabelCell><asp:TextBox  runat="server" ID="SummaryTextBox" Rows="4" TextMode="MultiLine" Width="100%" /></Item>
                <Item Text="<%$ Resources:Labels,DetailedDescription%>"><asp:TextBox runat="server" ID="DescriptionTextBox" Rows="4" TextMode="MultiLine" Width="100%" /></Item>
                <Item Text="<%$ Resources:Labels,Price%>" ><span><iac:CurrencyBox runat="server" ID="SingleFee" Width="150"/>
                        &nbsp;<iac:IARequiredFieldValidator runat="server" ID="rfvalSingleFee" ControlToValidate="SingleFee" />
                        <asp:CustomValidator ID="cvSingleFee" runat="server" ControlToValidate="SingleFee"
                            OnServerValidate="FeeValidate" ErrorMessage="*"></asp:CustomValidator></span>
                             
                </Item>
                <div style="padding-left:56px; padding-top:6px;"> <span style="padding-right:4px;"><asp:Label Text="Vat / Tax Rate:" Font-Bold="true" runat="server" ID="lblTaxRate"></asp:Label></span>  <iac:TaxRateDropDown ID="DropDownListVAT" CssClass="comboBox" runat="server" />
                        &nbsp;<iac:IARequiredFieldValidator runat="server" ID="rfvalVAT" ControlToValidate="DropDownListVAT"
                            RenderAsBlockElement="false" /></div>
                            <div style="padding-left:58px; padding-top:6px;"><span style=" font-weight:bold; padding-right:4px;">Free Session: </span><asp:HiddenField ID="hfFreeSessionID" runat="server" />
            <asp:HiddenField ID="hfDuration" runat="server" />
            <asp:CheckBox ID="cbFreeSession" runat="server" ToolTip="Offer Free 1st Session to the Seekers" /><span> Duration : </span><tel:RadNumericTextBox runat="server" ID="fsDuration" Width="75px" Type="Number"
               IncrementSettings-Step="5"
                MinValue="5" MaxValue="30" Value="15" ShowSpinButtons="true">
                <NumberFormat DecimalDigits="0" />
            </tel:RadNumericTextBox><span> (mins)</span></div>
                
            </iac:InputContainer>
        </div>
    </iac:FieldSet>
    <div class="buttonContainer" style="float: left; padding-left: 112px">
        <table>
            <tr>
                <td>
                    <div runat="server" id="divSubmitButton" class="updateButton">
                        <asp:LinkButton ID="SubmitButton" runat="server" Text=""></asp:LinkButton>
                    </div>
                </td>
                <td title="Cancel" class="cancelButton" style="padding-left: 10px;">
                    <asp:LinkButton ID="CancelButton" CausesValidation="false" runat="server" Text=""></asp:LinkButton>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentRightAbove" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentRightBelow" runat="server">
</asp:Content>

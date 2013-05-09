<%@ Page Title="" Language="C#" MasterPageFile="~/StandardMaster.master" AutoEventWireup="true"
    CodeBehind="CreateService.aspx.cs" Inherits="IntelArcade.WebApp.MemberPages.ServiceWanted.CreateService"
    EnableEventValidation="false" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
    <h2>
        <%=PageTitle %></h2>
    <asp:Panel runat="server" ID="ContentPanel">
        <iac:FieldSet runat="server" ID="FieldSet1" Title="<%$ Resources:FieldsetTitles,SubjectDetails %>"
            class="formData">
            <div style="border-top: 1px solid #cfcfcf; padding: 5px 0px 5px 0;">
                <br />
                <iac:InputContainer runat="server" ID="InputContainer1">
                    <Item Text="<%$ Resources:Labels,SubjectCategory%>">
                        <%--<LabelCell><iac:IARequiredFieldValidator runat="server" ID="rfValSubject" ControlToValidate="SubjectCombo" RenderAsBlockElement="true" /></LabelCell>--%>
                        <asp:UpdatePanel runat="server" ID="UpdatePanelSubject" ChildrenAsTriggers="False" RenderMode="Inline" UpdateMode="Conditional" >
                        <ContentTemplate>
                            <%--<iac:SubjectPicker runat="server" ID="SubjectCombo" AutoPostBack="true" CausesValidation="false" PathMode="Static" />--%>
                             <%--<uc1:SubjectPicker ID="SubjectCombo" runat="server" />--%>
                        <div>
                        <asp:DropDownList runat="server" ID="cbParentSubjects"></asp:DropDownList>
                        <asp:DropDownList runat="server" ID="cbSubjects"></asp:DropDownList>
                        <iac:IARequiredFieldValidator ID="IARequiredFieldValidator1" runat="server" ControlToValidate="cbSubjects"></iac:IARequiredFieldValidator>
                        </div>
                        <ajaxControlToolkit:CascadingDropDown runat="server" ID="cddParentSubjects" TargetControlID="cbParentSubjects" ServicePath="~/AjaxCtrlSvc.asmx" ServiceMethod="GetParentSubjects" Category="ParentSubject"  PromptText="Select a category" LoadingText="Loading" >
                        </ajaxControlToolkit:CascadingDropDown>
                        <ajaxControlToolkit:CascadingDropDown ID="cddSubjects" runat="server" TargetControlID="cbSubjects" ParentControlID="cbParentSubjects" ServicePath="~/AjaxCtrlSvc.asmx" ServiceMethod="GetSubjects" Category="Subject" PromptText="Please select a subject" LoadingText="Loading">
                        </ajaxControlToolkit:CascadingDropDown>
                        </ContentTemplate>
                        </asp:UpdatePanel>
                     </Item>
                <Item Text="<%$ Resources:Labels,Title%>"><asp:TextBox Font-Names="Tahoma, helvetica, Arial, Sans-Serif" Font-Size="1.2em" ForeColor="#414141" runat="server" ID="SubjectTitle" Width="350px" MaxLength=55 />&nbsp;<iac:IARequiredFieldValidator runat="server" ID="rfvalTitle" ControlToValidate="SubjectTitle" RenderAsBlockElement="false" /></Item>
                <Item Text="<%$ Resources:Labels,SummaryDescription%>"><LabelCell><iac:IARequiredFieldValidator runat="server" ID="rfvalSummaryDescription" ControlToValidate="SummaryTextBox" RenderAsBlockElement="true" /></LabelCell><asp:TextBox Font-Names="Tahoma, helvetica, Arial, Sans-Serif;" ForeColor="#414141" Font-Size="1.2em" Font-Bold="false" runat="server" ID="SummaryTextBox" Rows="10" TextMode="MultiLine" Width="100%" /></Item>
                <Item Text="<%$ Resources:Labels,DetailedDescription%>"><asp:TextBox Font-Names="Tahoma, helvetica, Arial, Sans-Serif;" ForeColor="#414141" Font-Size="1.2em" Font-Bold="false"  runat="server" ID="DescriptionTextBox" Rows="10" TextMode="MultiLine" Width="100%" /></Item>
                </iac:InputContainer>
            </div>
        </iac:FieldSet>
        <iac:FieldSet runat="server" ID="FieldSet2" Title="<%$ Resources:FieldsetTitles,SubjectFees %>"
            class="formData">
            <div style="border-top: 1px solid #cfcfcf; padding: 5px 0px 5px 0;">
                <br />
                <table>
                    <tr>
                        <td class="labelCell" style="vertical-align: top; padding-bottom: 5px">
                            <asp:Label ID="Label1" Text="<%$ Resources:Labels,Price%>" runat="server"></asp:Label>
                        </td>
                        <td>
                            <iac:CurrencyBox runat="server" ID="SingleFee" />
                            &nbsp;<iac:IARequiredFieldValidator runat="server" ID="rfvalSingleFee" ControlToValidate="SingleFee" />
                            <asp:CustomValidator ID="cvSingleFee" runat="server" ControlToValidate="SingleFee"
                                OnServerValidate="FeeValidate" ErrorMessage="*"></asp:CustomValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="labelCell" style="vertical-align: top; padding-bottom: 5px">
                            <asp:Label Text="Vat / Tax Rate" runat="server" ID="lblTaxRate"></asp:Label>
                        </td>
                        <td>
                            <iac:TaxRateDropDown ID="DropDownListVAT" runat="server" />
                            &nbsp;<iac:IARequiredFieldValidator runat="server" ID="rfvalVAT" ControlToValidate="DropDownListVAT"
                                RenderAsBlockElement="false" />
                        </td>
                    </tr>
                </table>
            </div>
        </iac:FieldSet>
        <iac:FieldSet runat="server" ID="FieldSet3" Title="<%$ Resources:FieldsetTitles,FreeSession %>"
            class="formData">
            <div style="border-top: 1px solid #cfcfcf; padding: 5px 0px 5px 0;">
                <br />
                <asp:HiddenField ID="hfFreeSessionID" runat="server" />
                <asp:HiddenField ID="hfDuration" runat="server" />
                <asp:CheckBox ID="cbFreeSession" runat="server" ToolTip="Offer Free 1st Session to the Seekers" />
                <span>Free Session</span>
                <tel:RadNumericTextBox runat="server" ID="fsDuration" Width="75px" Type="Number"
                    IncrementSettings-Step="5" MinValue="5" MaxValue="1440" Value="15" ShowSpinButtons="true">
                    <NumberFormat DecimalDigits="0" />
                </tel:RadNumericTextBox>
                <span>Duration (mins)</span>
            </div>
        </iac:FieldSet>
        <div style="padding-left: 12px;">
            <tel:RadTextBox runat="server" ID="tbMessage" TextMode="MultiLine" EmptyMessage="Enter Message"
                Width="400px" Height="50px">
            </tel:RadTextBox>
        </div>
        <div class="buttonContainer" style="float: left; padding-left: 12px">
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
    </asp:Panel>
    <asp:Panel ID="CreatedContent" runat="server" Visible="false">
        <div style="float: right;">
            <span title="Back to Home Page" class="cancelButton"><a href="../../Default.aspx"></a>
            </span>
        </div>
    </asp:Panel>
</asp:Content>

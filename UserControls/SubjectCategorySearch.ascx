<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SubjectCategorySearch.ascx.cs"
    Inherits="IntelArcade.WebApp.UserControls.SubjectCategorySearch" %>
<%@ Register Src="SubjectPicker.ascx" TagName="SubjectPicker" TagPrefix="uc1" %>
<div>
    <table>
        <tr>
            <td style="vertical-align: top">
                <asp:UpdatePanel runat="server" ID="UpdatePanelSubject" ChildrenAsTriggers="False"
                    RenderMode="Inline" UpdateMode="Conditional">
                    <ContentTemplate>
                        <%--<iac:SubjectPicker runat="server" ID="SubjectCombo" AutoPostBack="true" CausesValidation="false" PathMode="Static" />--%>
                        <%--<uc1:SubjectPicker ID="SubjectCombo" runat="server" />--%>
                        <div>
                            <asp:DropDownList runat="server" ID="cbParentSubjects">
                            </asp:DropDownList>
                            <asp:DropDownList runat="server" ID="cbSubjects">
                            </asp:DropDownList>
                        </div>
                        <ajaxControlToolkit:CascadingDropDown runat="server" ID="cddParentSubjects" TargetControlID="cbParentSubjects"
                            ServicePath="~/AjaxCtrlSvc.asmx" ServiceMethod="GetParentSubjects" Category="ParentSubject"
                            PromptText="Select a category" LoadingText="Loading">
                        </ajaxControlToolkit:CascadingDropDown>
                        <ajaxControlToolkit:CascadingDropDown ID="cddSubjects" runat="server" TargetControlID="cbSubjects"
                            ParentControlID="cbParentSubjects" ServicePath="~/AjaxCtrlSvc.asmx" ServiceMethod="GetSubjects"
                            Category="Subject" PromptText="Please select a subject" LoadingText="Loading">
                        </ajaxControlToolkit:CascadingDropDown>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </td>
            <td style="padding-left: 0px; vertical-align: text-top;">
                <div style="padding-top: 3px">
                    <asp:ImageButton ID="btnSearch" runat="server" ImageUrl="~/images/button_search.png" /></div>
            </td>
        </tr>
    </table>
</div>

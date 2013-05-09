<%@ Page Title="" Language="C#" MasterPageFile="~/InteractiveBase.master" AutoEventWireup="true"
    CodeBehind="Search.aspx.cs" Inherits="IntelArcade.WebApp.Search" ValidateRequest="false" %>

<%@ Register Src="UserControls/FullSearch.ascx" TagName="FullSearch" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentHead" runat="server">
    <script language="javascript" type="text/javascript">
        function _iac_SbjSchOnClientClose(oWnd, args) {

            var arg = args.get_argument();

            if (arg.DoPostback) {
                handleResponse_SearchResponseHandler(args.ServiceResponse, args.Argument);
            }
        }

        function _iac_OnProfileFlagCommmandComplete(args) {
            handleResponse_SearchResponseHandler(args.ServiceResponse, args.Argument);
        }

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
    <iac:ClientResponseHandler runat="server" ID="SearchResponseHandler">
    </iac:ClientResponseHandler>
    <div runat="server" id="NoResultMessage">
        <br />
        <br />
        <div style="width: 100%; text-align: center; font-size: 27px; color: #33659d; font-weight: bold">
            Sorry no results were returned</div>
        <div style="width: 100%; text-align: center; font-size: 17px; margin-top: 30px; font-weight: bold;
            color: #000;">
            Request a Service
            <br />
            <span style="font-size: 13px; color: #6f6f6f">Let the Providers know what you need !</span></div>
        <div style="margin-top: 0px">
            <table style="width: 300px; margin-left: 33%; margin-right: 30%;">
                <tr>
                    <%-- <td style="vertical-align: top;">
                     Request a Service
                    </td>--%>
                    <td>
                        <table>
                            <tr>
                                <td align="left" style="text-align: left">
                                    <tel:RadComboBox runat="server" ID="cbParentSubjectCategorys" Skin="Web20" EmptyMessage="Main Subject"
                                        DataTextField="SubjectName" AllowCustomText="true" DataValueField="SubjectID"
                                        AutoPostBack="true" ToolTip="If the service area is not listed, please type in a new one."
                                        OnSelectedIndexChanged="cbParentSubjectCategorys_SelectedIndexChanged">
                                    </tel:RadComboBox>
                                </td>
                                <td style="padding-left: 8px">
                                    <tel:RadComboBox runat="server" AllowCustomText="true" Skin="Web20" EmptyMessage="Sub-topic"
                                        ID="cbSubjectCategorys" DataTextField="SubjectName" DataValueField="SubjectID"
                                        Enabled="false" MaxLength="100" ToolTip="If the service area is not listed, please type in a new one.">
                                    </tel:RadComboBox>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        <iac:IARequiredFieldValidator ID="IARequiredFieldValidator1" runat="server" ControlToValidate="cbSubjectCategorys"
                            ValidationGroup="RequestService"></iac:IARequiredFieldValidator>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div style="float: left;">
                            <iac:TextBox runat="server" ID="tbNote" Width="332px" Style="margin-left: 1px" Height="80px"
                                TextMode="MultiLine" EmptyMessage="Please write a brief note describing the specific knowledge that you are looking for.">
                            </iac:TextBox>
                            <iac:IARequiredFieldValidator ID="IARequiredFieldValidator2" runat="server" ControlToValidate="tbNote"
                                ValidationGroup="RequestService"></iac:IARequiredFieldValidator>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <span class="requestService" style="margin-left: 50px;">
                            <asp:LinkButton ID="btnRequestService" Style="margin-left: 90px; margin-top: 10px"
                                runat="server" Text="" ValidationGroup="RequestService"></asp:LinkButton>
                        </span>
                    </td>
                </tr>
            </table>
        </div>
    </div>
    <%--    <asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="UpdatePanel1">
        <ProgressTemplate>
            <div class="overlay">
                <asp:Image runat="server" CssClass="loader" ImageUrl="~/images/img_loading.gif" />
            </div>
        </ProgressTemplate>
    </asp:UpdateProgress>
    <asp:UpdatePanel runat="server" ID="UpdatePanel1" ChildrenAsTriggers="true" UpdateMode="Conditional">
        <ContentTemplate>

            <asp:Button ID="btnTest" runat="server" OnClick="PageRefresh_Click" Style="display: none;" />
        </ContentTemplate>
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="btnTest" EventName="Click" />
        </Triggers>
    </asp:UpdatePanel>--%>
    <div style="width: 100%;">
        <uc1:FullSearch ID="SearchInput" runat="server" />
        <div class="searchResults">
            <asp:PlaceHolder runat="server" ID="SearchContainer" />
        </div>
        <br />
    </div>
    <iac:DataPager runat="server" ID="Pager" PagedControlID="PageingProxy" />
    <iac:PageableItemProxy runat="server" ID="PageingProxy" />
</asp:Content>

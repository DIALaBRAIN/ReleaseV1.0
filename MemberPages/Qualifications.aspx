<%@ Page Title="" Language="C#" MasterPageFile="~/StandardMaster.master" AutoEventWireup="true"
    CodeBehind="Qualifications.aspx.cs" Inherits="IntelArcade.WebApp.Qualifications" %>

<asp:Content ID="Content4" ContentPlaceHolderID="ContentHead" runat="server">
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentBody" runat="server">
    <script type="text/javascript">
        function _onDelete_WindowClose(oWnd, args) {
            if (args == null) return;
            var arg = args.get_argument();
            if (arg.DoPostback) {
                handleResponse_DialogResponseHandler(arg.ServiceResponse, arg.Argument);
            }
        }
    </script>
    <iac:ClientResponseHandler runat="server" ID="DialogResponseHandler" />
    <div>
        <h2>
            <%=PageTitle %></h2>
        <div style="float: right; padding-right: 5px;">
            <iac:ReturnContext ID="ReturnContext1" runat="server" /></div>
        <table style="width: 100%; border-bottom: 2px solid #cfcfcf;">
            <tr>
                <td>
                    <iac:FieldSet runat="server" ID="FieldSetAcademic" Title="Academic Qualifications"
                        class="formData">
                </td>
                <td>
                    <div title="Add Qualification" class="addButton" style="margin-bottom: 5px; float: right;">
                        <asp:LinkButton runat="server" ID="AddLink" OnCommand="AddLink_Command" CommandName="Add"
                            CommandArgument="Academic" Text=""><%--<asp:Image ID="Add_Qualification_Image" runat="server" ImageUrl="~/images/btn_add_qualification.png" />--%></asp:LinkButton>
                    </div>
                </td>
            </tr>
        </table>
        <div style="clear: both;">
            <asp:Repeater runat="server" ID="AcademicRepeater">
                <HeaderTemplate>
                </HeaderTemplate>
                <SeparatorTemplate>
                </SeparatorTemplate>
                <ItemTemplate>
                    <div class="rptItem">
                        <div class="itemHeader">
                            <div class="inner">
                            </div>
                        </div>
                        <div class="itemBody">
                            <div class="itemFooter" style="clear: both; padding-top: 5px; margin-bottom: 10px;">
                                <div class="inner" style="float: right; padding-right: 0px;">
                                    <table>
                                        <tr>
                                            <td title="Edit" class="editButton">
                                                <asp:LinkButton runat="server" ID="LinkButton2" CommandName="Edit" OnCommand="EditLink_Command"
                                                    CommandArgument='<%# ((IntelArcade.Common.Qualification)Container.DataItem).QualificationID%>'
                                                    Text=""></asp:LinkButton>
                                            </td>
                                            <td title="Delete" class="deleteButton" style="padding-left: 10px;">
                                                <iac:ConfirmationLink runat="server" OnClientClose="_onDelete_WindowClose" ReturnValue='<%# ((IntelArcade.Common.Qualification)Container.DataItem).QualificationID%>'>
                                                </iac:ConfirmationLink>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                            <div class="inner">
                                <img id="Img1" src="~/images/Qual-Edu-48.png" alt="Image" title="Image" class="leftImage"
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
                                    <p style="padding-top: 4px;">
                                        <i>
                                            <%# ((IntelArcade.Common.Qualification)Container.DataItem).Notes%></i></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
                <FooterTemplate>
                </FooterTemplate>
            </asp:Repeater>
        </div>
        </iac:FieldSet>
        <table style="width: 100%; border-bottom: 2px double #cfcfcf;">
            <tr>
                <td>
                    <iac:FieldSet runat="server" ID="FieldSetProfessional" Title="Professional Qualifications"
                        class="formData">
                </td>
                <td>
                    <div title="Add Qualification" class="addButton" style="margin-bottom: 5px; float: right;">
                        <asp:LinkButton runat="server" ID="LinkButton1" OnCommand="AddLink_Command" CommandName="Add"
                            CommandArgument="Professional" Text=""></asp:LinkButton>
                    </div>
                </td>
            </tr>
        </table>
        <div style="clear: both;">
            <asp:Repeater runat="server" ID="ProfessionalRepeater">
                <HeaderTemplate>
                </HeaderTemplate>
                <SeparatorTemplate>
                </SeparatorTemplate>
                <ItemTemplate>
                    <div class="rptItem">
                        <div class="itemHeader">
                            <div class="inner">
                            </div>
                        </div>
                        <div class="itemBody">
                            <div class="itemFooter" style="clear: both; padding-top: 5px; margin-bottom: 10px;">
                                <div class="inner" style="float: right; padding-right: 0px;">
                                    <table>
                                        <tr>
                                            <td title="Edit" class="editButton">
                                                <asp:LinkButton runat="server" ID="EditLink" CommandName="Edit" OnCommand="EditLink_Command"
                                                    Text="" CommandArgument='<%# ((IntelArcade.Common.Qualification)Container.DataItem).QualificationID%>' />
                                            </td>
                                            <td title="Delete" class="deleteButton" style="padding-left: 10px;">
                                                <iac:ConfirmationLink ID="ConfirmationLink1" runat="server" OnClientClose="_onDelete_WindowClose"
                                                    ReturnValue='<%# ((IntelArcade.Common.Qualification)Container.DataItem).QualificationID%>'>
                                                </iac:ConfirmationLink>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
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
                                        <%--<p><label>License Number:</label>&nbsp;Not Yet Implemented&nbsp;&nbsp;<label>License Expires:</label>&nbsp;Not Yet Implemented</p>--%>
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
        </iac:FieldSet>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentRightAbove" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentRightBelow" runat="server">
</asp:Content>

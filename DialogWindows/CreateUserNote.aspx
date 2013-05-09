<%@ Page Title="" Language="C#" MasterPageFile="~/DialogMaster.Master" AutoEventWireup="true"
    CodeBehind="CreateUserNote.aspx.cs" Inherits="IntelArcade.WebApp.DialogWindows.CreateUserNote" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHead" runat="server">
    <script language="javascript" type="text/javascript">
        function returnToParent() {
            //create the argument that will be returned to the parent page
            var oArg = new Object();
            //get a reference to the current RadWindow
            var oWnd = GetRadWindow();
            //Close the RadWindow and send the argument to the parent page
            oWnd.close(oArg);
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentDialogHeader" runat="server">
    <iac:HeaderText runat="server" ID="UserName" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
    <div runat="server" id="ContentPanel" style="padding: 10px; height: 185px;">
        <div>
            <label>
                Comments</label>
            <asp:TextBox runat="server" ID="NoteText" TextMode="MultiLine" Rows="10" Width="100%" />
            <div style="width: 100%; text-align: right;">
                <asp:RequiredFieldValidator runat="server" ID="NoteValidator" ControlToValidate="NoteText"
                    Text="Comments are required." Display="Static" />
            </div>
        </div>
    </div>
    <br />
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentDialogPreFooter" runat="server">
    <%--Click <b>Save</b> to create the user note, or <b>Cancel</b> to exit without taking
    any action.--%>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentDialogFooter" runat="server">
    <div style="text-align: right; width: 100%;">
        <div style="float: left; margin-left:-20px;">
            <span style="padding-right: 5px;">
                <asp:LinkButton ID="SubmitButton" Text="Save" runat="server" /></span>
        </div>
        <div style="float: right">
            <a runat="server" id="CloseWindowLink" href="javascript:returnToParent();">Cancel</a></div>
    </div>
</asp:Content>

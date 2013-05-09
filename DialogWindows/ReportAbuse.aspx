<%@ Page Title="" Language="C#" MasterPageFile="~/DialogMaster.Master" AutoEventWireup="true"
    CodeBehind="ReportAbuse.aspx.cs" Inherits="IntelArcade.WebApp.DialogWindows.ReportAbuse" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHead" runat="server">
    <script language="javascript" type="text/javascript">
        function GetRadWindow() {
            var oWindow = null;
            if (window.radWindow) oWindow = window.radWindow;
            else if (window.frameElement.radWindow) oWindow = window.frameElement.radWindow;
            return oWindow;
        }

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
    <asp:HiddenField ID="AssociatedID" runat="server" />
    <div runat="server" id="ContentPanel">
        <div class="dialogSubHeader">
            <label>
                Category:</label>&nbsp;
            <asp:DropDownList runat="server" ID="Subject">
                <asp:ListItem />
                <asp:ListItem Text="Offensive Content" />
                <asp:ListItem Text="Breaching Terms and Conditions" />
                <asp:ListItem Text="Other" />
            </asp:DropDownList>
            &nbsp;<iac:IARequiredFieldValidator runat="server" ID="rfvalSubject" ControlToValidate="Subject" />
        </div>
        <div style="padding: 8px;">
            <div>
                <label>
                    Comments</label>
                <asp:TextBox runat="server" ID="MessageText" TextMode="MultiLine" Rows="8" Width="100%" />
                <div style="width: 100%; text-align: right;">
                    <asp:RequiredFieldValidator runat="server" ID="rfvalMessage" ControlToValidate="MessageText"
                        Display="Static" ErrorMessage="Commments are required" /></div>
            </div>
        </div>
    </div>
    <br />
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentDialogPreFooter" runat="server">
    <%--Click <b>Send</b> to report the user, or <b>Cancel</b> to exit without taking any action.--%>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentDialogFooter" runat="server">
    <div style="text-align: right; width: 100%;">
        <div style="float: left; margin-left: -20px;">
            <asp:LinkButton ID="SendButton" OnClick="SendButton_Click" Text="Send" runat="server" />
        </div>
        <div style="float: right;">
            <a runat="server" id="CloseWindowLink" href="javascript:returnToParent();">Cancel</a>
        </div>
    </div>
</asp:Content>

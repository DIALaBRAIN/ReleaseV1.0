<%@ Page Title="" Language="C#" MasterPageFile="~/DialogMaster.Master" AutoEventWireup="true" CodeBehind="LinkedInAuthorizeWindow.aspx.cs" Inherits="IntelArcade.WebApp.DialogWindows.LinkedInAuthorizeWindow" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentHead" runat="server">

<script type="text/javascript">

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
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">

<iframe runat="server" src="https://www.linkedin.com/"></iframe>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentDialogPreFooter" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentDialogFooter" runat="server">
    <div style="text-align: right; width: 100%;">
        <a
            href="javascript:returnToParent(false);">Cancel</a></div>
</asp:Content>

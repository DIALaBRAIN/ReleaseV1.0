<%@ Page Title="" Language="C#" MasterPageFile="~/DialogMaster.Master" AutoEventWireup="true"
    CodeBehind="WatchVideo.aspx.cs" Inherits="IntelArcade.WebApp.DialogWindows.WatchVideo" %>

<%--<%@ Register Assembly="ASPNetFlashVideo.NET3" Namespace="ASPNetFlashVideo" TagPrefix="ASPNetFlashVideo" %>--%>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentHead" runat="server">
    <script type="text/javascript" src="../Client/jwplayer.js"></script>
    <script language="javascript" type="text/javascript">


        function returnToParent() {
            jwplayer("container").remove();
            //create the argument that will be returned to the parent page
            var oArg = new Object();

            //get a reference to the current RadWindow
            var oWnd = GetRadWindow();
            //Close the RadWindow and send the argument to the parent page
            oWnd.close(oArg);
        }

        function playSelected(fileURL) {

        }


        function _iac_windowBeforeClose(oWnd, args) {
            alert('test');
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentDialogHeader" runat="server">
    <div style="width: 100%;">
        <span class="companyName" style="padding: 0px;">DIALa<span class="highlight">BRAIN</span>&nbsp;<span
            style="padding-right: 10px; float: right; font-size: smaller;">Video Player</span></span></div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">

    <div style="width: 100%; text-align: center;">
        <video src="<%=VideoURL%>" height="290" id="container" width="570">
        </video>
        <script type="text/javascript">

            jwplayer("container").setup({
                flashplayer: "../Client/player.swf",
                autostart: true,
                provider: "http",
                "http.startparam": "starttime"
            });
        </script>
    </div>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentDialogFooter" runat="server">
    <div id="ButtonPanel" style="text-align: right; width: 100%;">
        <a href="javascript:returnToParent();">Close</a></div>
</asp:Content>

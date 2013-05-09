<%@ Page Title="" Language="C#" MasterPageFile="~/DialogMaster.Master" AutoEventWireup="true" CodeBehind="ConfirmationBox.aspx.cs" Inherits="IntelArcade.WebApp.DialogWindows.ConfirmationBox" %>
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
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
    
    <div style="text-align:center;padding-top:12px;">
        <asp:Label ID="lblMsg" runat="server" Text="Are you sure ?"></asp:Label>
    </div>

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentDialogPreFooter" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentDialogFooter" runat="server">

    <div style="text-align: right; width: 100%;">
        <div style="float: right;">
            <span style="">
                <asp:LinkButton ID="btnOk" Text="Ok" runat="server" /></span>
        </div>
        <div style="float:left;margin-left:-20px;">
            <a runat="server" id="CloseWindowLink" href="javascript:returnToParent();">Cancel</a></div>
    </div>
</asp:Content>

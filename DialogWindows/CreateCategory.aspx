<%@ Page Title="" Language="C#" MasterPageFile="~/DialogMaster.Master" AutoEventWireup="true" CodeBehind="CreateCategory.aspx.cs" Inherits="IntelArcade.WebApp.DialogWindows.CreateCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentHead" runat="server">
<script language="javascript">

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
    <div>
        <div>Category Name : <asp:TextBox runat="server" ID="tbCategoryName" MaxLength="80"></asp:TextBox></div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentDialogPreFooter" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentDialogFooter" runat="server">
    <div id="ButtonPanel" style="text-align: right; width: 100%;">
        <div style="float: left; margin-left: -20px;">
            <asp:LinkButton runat="server" ID="btnCreate" Text="Create" />

        </div>
        <div style="float: right;">
            <a runat="server" id="CloseWindowLink" href="javascript:returnToParent();">Cancel</a>
        </div>
    </div>
</asp:Content>

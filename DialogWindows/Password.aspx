<%@ Page Title="" Language="C#" MasterPageFile="~/DialogMaster.Master" AutoEventWireup="true"
    CodeBehind="Password.aspx.cs" Inherits="IntelArcade.WebApp.DialogWindows.Password" %>

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
    <script language="javascript" type="text/javascript">
      
        function doClick(buttonName, e) {
            //the purpose of this function is to allow the enter key to 
            //point to the correct button to click.
            var key;

            if (window.event)
                key = window.event.keyCode;     //IE
            else
                key = e.which;     //firefox

            if (key == 13) {
               // Get the button the user wants to have clicked
                var btn = document.getElementById(buttonName);
                if (btn != null) { //If we find the button click it
                    btn.click();
                    event.keyCode = 0
                                }
            }
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentDialogHeader" runat="server">
    <iac:HeaderText runat="server" Text="Password" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
<div runat="server" id="divNotify" class="DialogNotification" >This form is password protected for your  security.  Please make sure you do not share your password, to prevent unauthorized downloads of your money.</div><br />
    <div style="padding-left:78px;">
        Password: <asp:TextBox   runat="server" ID="tbPassword" TextMode="Password" Width="200px"></asp:TextBox></div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentDialogPreFooter" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentDialogFooter" runat="server">
    <div style="float:left">
      <a href="javascript:returnToParent();">Close</a>
    </div>
    <div id="ButtonPanel" style="text-align: right; width: 100%;">
    <asp:LinkButton ID="btnOk" runat="server" Text="Confirm"></asp:LinkButton>
      </div>

      
</asp:Content>

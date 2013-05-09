<%@ Page Title="" Language="C#" MasterPageFile="~/DialogMaster.Master" AutoEventWireup="true" CodeBehind="UploadDocument.aspx.cs" Inherits="IntelArcade.WebApp.DialogWindows.UploadDocument" %>
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

            var f = document.getElementById("<%= HiddenFileName.ClientID %>");
            var i = document.getElementById("<%= ResourceInstanceID.ClientID %>");
            
            oArg.ResourceID = i.value;
            oArg.Filename = f.value;

            //get a reference to the current RadWindow
            var oWnd = GetRadWindow();

            //Close the RadWindow and send the argument to the parent page
            oWnd.close(oArg);
        }

        function OnBeforeUpload(src, args) {
            document.getElementById("UploadSubmitPanel").style.display = "none";
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
<asp:HiddenField id="HiddenFileName" runat="server"></asp:HiddenField>
<asp:HiddenField id="ResourceInstanceID" runat="server"></asp:HiddenField>
    <tel:RadProgressManager runat="server" ID="RadProgressManager1" RefreshPeriod="100" OnClientSubmitting="OnBeforeUpload" />
    <div class="rptItem">
        <div class="itemHeader"><div class="inner">&nbsp;</div></div>
        <div class="itemBody">
            <div class="inner">
                <table border="0" cellpadding="0" cellspacing="0" style="width:100%;" >
                    <tr>
                        <td rowspan="1" style="background-color:#f5f5f5;vertical-align:top;"><img style="width:50px;height:50px;" src="/images/user128xbg.gif" alt="" class="leftImage" /></td>
                        <td style="text-align:left;white-space:nowrap;background-color:#f5f5f5;width:100%;"><table border="0" cellpadding="0" cellspacing="0"><tr><td><label>Document File: </label>&nbsp;</td><td><tel:RadUpload runat="server" ID="RadUpload1" InitialFileInputsCount="1" MaxFileInputsCount="1" ControlObjectsVisibility="None" Width="250px" /><asp:Literal runat="server" ID="Filename" Visible="false" /></td><td><asp:CustomValidator runat="server" ID="rfvalFile" Text="Required" RenderAsBlockElement="false" /></td></tr></table></td>
                    </tr>
                </table>
            </div>
        </div>
        <div class="itemFooter"><div class="inner">&nbsp;</div></div>
    </div>    
    <hr style="clear:both;" />
    <div runat="server" id="PostUploadPanel" visible="false">
        <div style="padding:10px;">The file was uploaded successfully.</div>
        <div style="padding:10px;"><div style="text-align:center;width:100%;"><input type="button" value="Close Window" onclick="returnToParent();" /></div></div>
    </div>
    <div style="padding:10px;height:140px;">
        <tel:RadProgressArea runat="server" id="ProgressArea" RegisterWithScriptManager="true" DisplayCancelButton="false" Skin="Windows7" Width="100%" />
    </div>
    <div id="UploadSubmitPanel" style="display:block;">
        <div runat="server" id="PreUploadPanel">
            <div style="padding:10px;">Click <b>Upload</b> to upload the file, or <b>Cancel</b> to exit without taking any action.</div>
            <div style="padding:10px;"><div style="text-align:right;width:100%;"><span style="padding-right:5px;"><asp:Button runat="server" ID="UploadButton" Text="Upload" /></span><input type="button" value="Cancel" onclick="returnToParent();" /></div></div>
        </div>
    </div>
</asp:Content>

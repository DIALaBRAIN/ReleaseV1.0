<%@ Page Title="" Language="C#" MasterPageFile="~/DialogMaster.Master" AutoEventWireup="true" enableSessionState="true"
    CodeBehind="UploadPhoto.aspx.cs" Inherits="IntelArcade.WebApp.DialogWindows.UploadPhoto" %>
 <%@ Reference Control="~/UserControls/UploadPhotoCrop.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentHead" runat="server">
    <script language="javascript" type="text/javascript">
        function returnToParentWithArgs(doPostback, response, argument) {
            var oArg = new Object();
            oArg.DoPostback = doPostback = doPostback != null ? doPostback : false;
            oArg.ServiceResponse = response != null ? response : "Undefined";
            oArg.Argument = argument != null ? argument : "";

            var f = document.getElementById("<%= HiddenFileName.ClientID %>");
            var i = document.getElementById("<%= ResourceInstanceID.ClientID %>");
            var c = document.getElementById("<%= ContextID.ClientID %>");

            oArg.ResourceID = i.value;
            oArg.Filename = f.value;
            oArg.ContextID = c.value;

            var oWnd = GetRadWindow();
            oWnd.close(oArg);
        }

        function returnToParent() {
            //create the argument that will be returned to the parent page
            var oArg = new Object();

            //get a reference to the current RadWindow
            var oWnd = GetRadWindow();
            //Close the RadWindow and send the argument to the parent page
            oWnd.close(oArg);
            //window.location.reload();
        }

        function OnBeforeUpload(src, args) {
            document.getElementById("ButtonPanel").style.display = "none";
        }
    </script>
    <script type="text/javascript">
        //<![CDATA[
        function onClientProgressBarUpdating(progressArea, args) {
            progressArea.updateVerticalProgressBar(args.get_progressBarElement(), args.get_progressValue());
            args.set_cancel(true);
        }
        //]]>
    </script>
    <style type="text/css">
        .dialogHeader
        {
            padding-left: 10px;
        }
        .ruButton
        {
            margin: 1px 0 0 10px !important;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentDialogHeader" runat="server">
    <table border="0" cellpadding="0" cellspacing="0" style="width: 100%;">
        <tr>
            <td rowspan="1" style="vertical-align: top;">
                <img style="width: 32px; height: 32px;" src="/images/File_upload.png" alt="" class="leftImage" />
            </td>
            <td style="text-align: left; white-space: nowrap; width:600px">
                <table border="0" cellpadding="0" cellspacing="0">
                    <tr>
                        <td>
                            <label>
                                Image File: <asp:Label runat="server" ID="imagename" Text=""></asp:Label>
                            </label>
                            &nbsp;
                        </td>
                        <td width="170px" >
                            <tel:RadUpload allowedfileextensions=".png,.jpg,.jpeg,.bmp,.TIFF,.Gif"  style="margin-top:5px" runat="server" ID="RadUpload1" InitialFileInputsCount="1" MaxFileInputsCount="1"
                                ControlObjectsVisibility="None" Width="250px" OnClientProgressBarUpdating="onClientProgressBarUpdating" />
                            <asp:Literal runat="server" ID="Filename" Visible="false" />
                        </td>
                        <td width="90px" style="text-align:left">
                          <asp:Button  style="font-size:11px;padding:2.2px" runat="server" ID="UploadButton" Text="Upload Photo" />
                        </td>
                        <td>
                        <script type="text/javascript">
                            function validateRadUpload1(source, arguments) {
                                arguments.IsValid = $find("<%= RadUpload1.ClientID %>").validateExtensions();
                            }
                            function validateRadUpload(source, e) {
                                e.IsValid = false;
                                var upload = $find("<%= RadUpload1.ClientID %>");
                                var inputs = upload.getFileInputs();
                                for (var i = 0; i < inputs.length; i++) {
                                    //check for empty string or invalid extension     
                                    if (inputs[i].value != "" && upload.isExtensionValid(inputs[i].value)) {
                                        e.IsValid = true;
                                        break;
                                    }
                                }
                            }

                            function closeclnt() {
                                
                                var myVal = document.getElementById('<%=CustomValidator1.ClientID %>'); 
                                ValidatorEnable(myVal, false); 

                                var myVal1 = document.getElementById('<%=CustomValidator2.ClientID %>'); 
                                ValidatorEnable(myVal1, false);
                            }
</script>
                        <asp:CustomValidator runat="server" ID="CustomValidator1"  Display="Dynamic" ClientValidationFunction="validateRadUpload1"
    OnServerValidate="CustomValidator1_ServerValidate">        
    Invalid extension / 
</asp:CustomValidator>
                           <asp:CustomValidator ID="CustomValidator2" runat="server"  ClientValidationFunction="validateRadUpload"
    ErrorMessage="File Required" OnServerValidate="CustomValidator2_ServerValidate"></asp:CustomValidator>


                        </td>
                    </tr>
                </table>
            </td>
            
                   <td width="100px" style="text-align:right">
            
        
            </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
    <asp:HiddenField ID="HiddenFileName" runat="server" />
    <asp:HiddenField ID="ContextID" runat="server" />
    <asp:HiddenField ID="ResourceInstanceID" runat="server" />
    <tel:RadProgressManager runat="server" ID="RadProgressManager1" RefreshPeriod="100"
         />
    <div style="padding: 10px;">
        <tel:RadProgressArea runat="server" ID="ProgressArea" RegisterWithScriptManager="true" OnClientSubmitting="OnBeforeUpload"
            DisplayCancelButton="false" Skin="Sitefinity" Width="100%" />
     <%--       <asp:UpdatePanel runat="server"><ContentTemplate>--%>
            <asp:PlaceHolder runat="server" ID="photocropBox" />
           <%-- </ContentTemplate></asp:UpdatePanel>--%>
            <br /><br />
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentDialogPreFooter" runat="server">
    <%--Click <b>Upload</b> to upload the image file, or <b>Cancel</b> to exit without taking any action.--%>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentDialogFooter" runat="server">
    <div id="ButtonPanel" style="text-align: right; width: 100%;">
           <asp:LinkButton style="font-size:13px;padding:2.2px;text-decoration:underline;font-weight:bold"  OnClientClick="closeclnt()"  OnClick="closepage" runat="server" ID="LinkButton1" Text="Cancel" />
      
    </div>
</asp:Content>

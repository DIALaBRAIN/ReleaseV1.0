<%@ Page Title="" Language="C#" MasterPageFile="~/DialogMaster.Master" AutoEventWireup="true"
    CodeBehind="UploadVideo.aspx.cs" Inherits="IntelArcade.WebApp.DialogWindows.UploadVideo" %>

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
        }

        function OnBeforeUpload(src, args) {
            document.getElementById("ButtonPanel").style.display = "none";
        }

        function fileSelected(e) {
            alert('test');
            var files = e.files;

            if (files.length > 0) {
                alert("Too many files selected!");
                e.preventDefault();
            }
        }


        function validateRadUpload(source, arg) {
            arg.IsValid = $find('<%= RadUpload1.ClientID %>').validateExtensions();
            source.innerText = "Invalid file extension";
        }

        function validationFailed(sender, eventArgs) {
            //$(".ErrorHolder").append("<p>Validation failed for '" + eventArgs.get_fileName() + "'.</p>").fadeIn("slow");
            $(".ErrorHolder").append("<p>file type not supported or file size limit exceeded.</p>").fadeIn("slow");
        }

        function OnFileUploadRemoved(sender, args) {
            $(".ErrorHolder").empty().fadeOut("slow");
            $('.UploadButton').hide().fadeOut("slow");
        }

        function fileUploaded(sender, args) {
            $('.UploadButton').show().fadeIn("slow"); ;
        }

        function onUploadClik() {
            $('.UploadButton').hide().fadeOut("slow");
            $('.CancelButton').hide().fadeOut("slow");
            $('.MessageHolder').show().fadeIn("slow");
            $('#div_supported').hide().fadeIn("slow");
            $('input[type="button"][value="Remove"]').hide().fadeOut("slow");
        }


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
    <%--        <tel:RadWindowManager ID="RadWindowManager1" runat="server" EnableShadow="true">
        </tel:RadWindowManager>--%>
    <table border="0" cellpadding="0" cellspacing="0" style="width: 100%;">
        <tr>
            <td rowspan="1" style="vertical-align: top;">
                <img style="width: 32px; height: 32px;" src="/images/video128x.png" alt="" class="leftImage" />
            </td>
            <td style="text-align: left; white-space: nowrap; width: 100%;">
                <table border="0" cellpadding="0" cellspacing="0">
                    <tr>
                        <td>
                            <label>
                                Video File:
                            </label>
                            &nbsp;
                        </td>
                        <td>
                            <tel:RadAsyncUpload runat="server" ID="RadUpload1" InitialFileInputsCount="1" MaxFileInputsCount="1"
                                ControlObjectsVisibility="None" Width="250px" OnClientValidationFailed="validationFailed"
                                OnClientFileUploadRemoved="OnFileUploadRemoved" OnClientFileUploaded="fileUploaded">
                            </tel:RadAsyncUpload>
                            <asp:Literal runat="server" ID="Filename" Visible="false" />
                        </td>
                        <td>
                            <%--                            <asp:CustomValidator runat="server" ID="rfvalFile" Text="Required" RenderAsBlockElement="false"
                                ClientValidationFunction="validateRadUpload" />--%>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
    <asp:HiddenField ID="HiddenFileName" runat="server" />
    <asp:HiddenField ID="ContextID" runat="server" />
    <asp:HiddenField ID="ResourceInstanceID" runat="server" />
    <div class="ErrorHolder" style="padding: 10px 0 10px 10px; display: none;">
    </div>
    <div class="MessageHolder" style="padding: 10px 0 10px 10px; display: none;">
        Video Converting ..</div>
    <%--    <tel:RadProgressManager runat="server" ID="RadProgressManager1" RefreshPeriod="100"
        OnClientSubmitting="OnBeforeUpload" />
    <div style="padding: 10px;">
        <tel:RadProgressArea runat="server" ID="ProgressArea" DisplayCancelButton="false"
            Skin="Sitefinity" Width="100%" />
    </div>--%>
    <div style="padding: 10px 0 10px 10px;" id="div_supported">
        Supported file types ( .flv, .wmv, .mp4, .3gp, .mov, .mpg, .f4v)
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentDialogPreFooter" runat="server">
    <%--Click <b>Upload</b> to upload the video file, or <b>Cancel</b> to exit without taking
    any action.--%>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentDialogFooter" runat="server">
    <div id="ButtonPanel" style="text-align: right; width: 100%;">
        <div style="float: left; margin-left: -20px;">
            <asp:LinkButton runat="server" ID="UploadButton" Text="Upload Video" OnClick="UploadButton_Click"
                OnClientClick="javascript:onUploadClik()" Style="display: none" CssClass="UploadButton" />
            <%--<asp:ImageButton runat="server" ID="UploadButton" OnClientClick="javascript:onUploadClik()"
                ImageUrl="~/images/btn_upload_video.png" CssClass="UploadButton" Style="display: none" />--%>
        </div>
        <div style="float: right;">
            <%--<asp:ImageButton runat="server" ID="btnCancel" ImageUrl="~/images/btn_cancel.png"
                OnClientClick="returnToParent()" CssClass="CancelButton" />--%>
            <a runat="server" id="CloseWindowLink" href="javascript:returnToParent(false);">Cancel</a>
        </div>
    </div>
</asp:Content>

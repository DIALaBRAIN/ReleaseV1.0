<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="VideoSelector.ascx.cs"
    Inherits="IntelArcade.WebApp.UserControls.VideoSelector" %>
<%@ Import Namespace="IntelArcade.WebApp" %>
<script src="../Client/jquery-1.5.min.js" type="text/javascript"></script>
<script language="javascript" type="text/javascript">

    function _iac_VidSelOnClientClose(oWnd, args) {
        //get the transferred arguments
        var arg = args.get_argument();
        if (arg) {
            if (arg.ContextID) {
                var extId = '#videxdiv' + arg.ContextID;
                SetVisibility($(extId), true);
                SetVisibility($('#vidstatdiv' + arg.ContextID), false);

                var s = $(extId + ' a');
                s.each(function () {
                    this.href = $(this).attr('href').replace('novidtag', arg.ResourceID);
                });

                var btnId = '#largButton' + arg.ContextID;
                __doPostBack($(btnId + ' a').attr('id'), 'uploadvideo');

            }
        }
    }

    function SetVisibility(control, show) {
        if (show) {
            control.removeClass('hidden');
            control.addClass('visible');
        }
        else {
            control.removeClass('visible');
            control.addClass('hidden');
        }
    }

    function _onVideoDelete_WindowClose(oWnd, args) {
        if (args == null) return;
        var arg = args.get_argument();
        if (arg.DoPostback) {
            handleResponse_VideoResponseHandler(arg.ServiceResponse, arg.Argument);
        }
    }
        
</script>
<style type="text/css">
    .hidden
    {
        visibility: hidden;
    }
    .visible
    {
        visibility: visible;
    }
</style>
<iac:ClientResponseHandler runat="server" ID="VideoResponseHandler" />
<table>
    <tr>
        <td style="padding-right:5px">
            <div class="<%# SetVisibility(false) %>">
                <span title="Play Video" class="playButton">
                    <iac:DialogCommand runat="server" ID="DialogWatch" Argument="<%# GetVideoArgTag()%>"
                        Type="WatchVideo" Text="" />
                </span>
            </div>
        </td>
        <td style="padding-right:5px">
            <div title="<%# GetUploadButtonText() %>" class="videoUploadButton" id="largButton<%# ContextID%>"
                style="padding-left: 0px">
                <iac:DialogCommand runat="server" ID="DialogCommand1" OnClientClose="" Type="UploadVideo"
                    Text="" Argument="<%# GetContextualVideoID() %>">
                </iac:DialogCommand>
            </div>
        </td>
        <td>
            <div id="videxdiv<%# ContextID %>" class="<%# SetVisibility(false) %>" style="display: inline;">
                <span title="Remove Video" class="videoDeleteButton">
                <iac:ConfirmationLink runat="server" OnClientClose="_onVideoDelete_WindowClose" ReturnValue='<%# ContextID%>'></iac:ConfirmationLink> 
                </span>
            </div>
        </td>
    </tr>
</table>
<div id="divText">
<div id="vidstatdiv<%# ContextID %>" class="<%#SetVisibility(true) %>" style="margin-left: 32px;">
    <p> <asp:Label ID="Label1" runat="server" Text="You have not yet uploaded a video."></asp:Label>
        </p>
</div>
   
</div>
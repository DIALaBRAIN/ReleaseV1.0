<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ImageSelector.ascx.cs"
    Inherits="IntelArcade.WebApp.UserControls.ImageSelector" %>
<script src="../Client/jquery-1.5.min.js" type="text/javascript"></script>
<script language="javascript" type="text/javascript">
    function _iac_ImgSelOnClientClose(oWnd, args) {
        //get the transferred arguments
        var arg = args.get_argument();
        if (arg) {
            if (arg.ContextID) {
                var extId = '#exdiv' + arg.ContextID;
                SetVisibility($(extId), true);

                var s = $(extId + ' a');
                s.each(function () {
                    this.href = $(this).attr('href').replace('noimgidtag', arg.ResourceID);

                    var i = document.getElementById("<%= HiddenImageContextID.ClientID %>");
                    i.value = arg.ResourceID;

                    var pageRequestManager = Sys.WebForms.PageRequestManager.getInstance();
                    pageRequestManager._doPostBack('<%= ImageRedrawPanel.ClientID %>', '');
                });
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
<asp:HiddenField ID="HiddenImageContextID" runat="server" />
<asp:UpdatePanel ID="ImageRedrawPanel" runat="server" OnLoad="UpdatePanel1_Load"
    UpdateMode="Conditional" ChildrenAsTriggers="true">
    <ContentTemplate>
            <span title="<%# GetUploadButtonText()%>" class="<%# GetUploadButtonclass() %>" style="cursor: pointer; float: right; position: absolute; padding-left:116px; padding-top:2px;">
                <iac:DialogCommand  runat="server" ID="DialogCommand1"  OnClientClose="_iac_ImgSelOnClientClose"
                    Type="UploadPhoto"  Argument="<%# GetContextualResourceReferenceID() %>" Text="">
                </iac:DialogCommand>
            </span>
            <img style="display: block; float: none; width: 145px;" id="ImageDisplay" src="<%# SetImagePath() %>"
                class="leftImage" alt="Big Image" runat="server" />
    </ContentTemplate>
</asp:UpdatePanel>

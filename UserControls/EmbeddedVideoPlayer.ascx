<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="EmbeddedVideoPlayer.ascx.cs"
    Inherits="IntelArcade.WebApp.UserControls.EmbeddedVideoPlayer" %>
<script type="text/javascript">

</script>
<div class="embeddedVideoContainer" style="width: 500px; margin-left: auto; margin-right: auto;">
    <div class="dialogHeader" style="margin-bottom: 0;">
        <div style="width: 100%;">
            <span class="companyName" style="padding: 0px;"><b>DIALa<span class="highlight">BRAIN</span></b></span>&nbsp;</div>
    </div>
    <div style="text-align: center; max-height: 295px;">
        <asp:Label runat="server" ID="lblNovideo" Visible="false"><div style="height:290px;padding-top:100px;"><h1>No video available</h1></div> </asp:Label>
        <asp:Panel runat="server" ID="videoPanel">
            <video src="<%=VideoURL%>" height="260" id="container" width="498">
        </video>
        </asp:Panel>
    </div>
    <div class="dialogFooter" style="margin-top: 0; padding-top: 0;">
    </div>
</div>

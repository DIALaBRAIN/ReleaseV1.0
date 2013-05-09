<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmbeddedContent.aspx.cs" Inherits="IntelArcade.WebApp.EmbeddedContent" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title runat="server" id="PageTitleElement"></title>
    <link rel="stylesheet" href="Styles/Default-100.css" type="text/css" />
    <link rel="stylesheet" href="Styles/Controls-100.css" type="text/css" />
    <meta http-equiv="content-type" content="text/html;charset=iso-8859-1" />
    <style type="text/css"> 
        html, body { margin: 0; padding: 0; height: 100%; } 
        #bar { height: 32px; background: red; } 
        iframe { 
            position: absolute; 
            top: 0; left: 0; width: 100%; height: 100%; 
            border: none; padding-top: 32px; 
            box-sizing: border-box; -moz-box-sizing: border-box; -webkit-box-sizing: border-box; 
        } 
    </style> 
</head>
<body>    
 
    <form id="form1" runat="server">
     <asp:hiddenfield ID="HiddenfieldTimer" runat="server" value="5000"></asp:hiddenfield>

    <iac:IAScriptManager ID="ScriptManager" runat="server" EnablePartialRendering="true" EnableScriptGlobalization="true" EnableScriptLocalization="true" EnablePageMethods="true" >
        <Scripts>
            <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.Core.js" />
            <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.jQuery.js" />
            <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.jQueryInclude.js" />
        </Scripts>
    </iac:IAScriptManager>

    <asp:HiddenField ID="hfMeetingID" runat="server" />

    <link href="Styles/MegameetingNotify.css" rel="stylesheet" type="text/css" />

    <script type="text/javascript" src="Client/notification.js"></script>
    <script src="client/countdown.js"></script>

     <div class="notification sticky hide" style="z-index:10000">
        <div style="margin-left:380px;font-weight:bold;font-size:13px;color:#fff">
        <table><tr>
        <td>  <span>Your meeting will end in another</span> </td>
        <td>
         <span style="display:inline;top:-13px;position:relative">
             <script type="application/javascript">

                 function convertMS(ms) {
                     var d, h, m, s;
                     s = Math.floor(ms / 1000);
                     m = Math.floor(s / 60);
                     s = s % 60;
                     h = Math.floor(m / 60);
                     m = m % 60;
                     d = Math.floor(h / 24);
                     h = h % 24;
                     return { d: d, h: h, m: m, s: s };
                 };
                 function countdownComplete() {

                     window.location.href = "SignIn.aspx";
                 }

                 var tempTime = parseInt(document.getElementById("<%= HiddenfieldTimer.ClientID %>").value);
                 var tempNotifyTime = tempTime - 60 * 10000;
                 var secondstotal = parseInt(tempTime / 1000);
                 var myCountdown2 = new Countdown({ time: secondstotal, width: 124, height: 35, rangeHi: "minute", onComplete: countdownComplete, style: "flip" });

                 var myVar;
                 if (tempNotifyTime > 0) {
                    myVar = setInterval(function () { Timer() }, tempNotifyTime);
                  }
                 else { 
                 $('.notification.sticky').notify();

                }      
                 function Timer() {
                     $('.notification.sticky').notify();
                     clearInterval(myVar);

                 }

</script></span>
        
        </td>
        <td>
        <span style="margin-left:126px;">time  and you will be redirected to <b style="color: #ffffff; font-weight: bold">DIALa<b  style="color: #FF6600; font-weight: bold;font-size:14px;">BRAIN</b></b></span>
  
        
        </td>
        </tr></table>
         
          
        
          
            </div>
        <a class="close" href="javascript:">
            <img src="images/icon-close.png" /></a>
    </div>

    <div class="header" style="height:40px;width:100%;">
            <div class="companyName" style="padding-top:5px;float:left; height:auto;"><b>DIALa<span class="highlight">BRAIN</span></b><sup>Illuminate Others...</sup></div>
            <div style="padding-left:10px;padding-top:10px;float:left;" class="subtext"><asp:Literal runat="server" ID="HeaderTextLiteral" /></div>
    </div>

    <iframe runat="server" id="ContentIFrame"  scrolling="auto" src="" >
    
    </iframe>
    </form>

</body>
   <script type="text/javascript">
      
 
       //////// call web method

       setInterval(function () { callUpdate() }, 30000);

       function callUpdate() {
           var id = document.getElementById('<%=hfMeetingID.ClientID %>').value;
           PageMethods.JoinMeetingLog(id);
       }

       //////// End call web method

    </script>

</html>

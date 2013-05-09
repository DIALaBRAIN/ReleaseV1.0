<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TestRanjana2.aspx.cs" Inherits="IntelArcade.WebApp.TestRanjana2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
        <iac:IAScriptManager ID="ScriptManager" runat="server" EnablePartialRendering="true" EnableScriptGlobalization="true" EnableScriptLocalization="true">
        <Scripts>
            <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.Core.js" />
            <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.jQuery.js" />
            <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.jQueryInclude.js" />
        </Scripts>
    </iac:IAScriptManager>
        <iframe runat="server" id="ContentIFrame" scrolling="auto" 
        src="/MemberPages/MeetingFeedback.aspx" />
    <div>
    
    </div>
    </form>
</body>
</html>

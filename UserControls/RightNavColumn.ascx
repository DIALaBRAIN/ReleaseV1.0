<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="RightNavColumn.ascx.cs" Inherits="IntelArcade.WebApp.RightNavColumn" %>
<%@ Register src="../InfoBoxes/Appointments.ascx" tagname="Appointments" tagprefix="uc1" %>
<%@ Register src="../InfoBoxes/SystemCredit.ascx" tagname="SystemCredit" tagprefix="uc2" %>
<%@ Register src="../InfoBoxes/SystemTime.ascx" tagname="SystemTime" tagprefix="uc3" %>
<%@ Register Src="~/InfoBoxes/StayAhead.ascx" TagName="StayAhead" TagPrefix="ia" %>

<uc1:Appointments ID="Appointments1" runat="server" />
<uc2:SystemCredit ID="SystemCredit1" runat="server" />
<uc3:SystemTime ID="SystemTime1" runat="server" Visible="false" />
<ia:StayAhead runat="server" />

			
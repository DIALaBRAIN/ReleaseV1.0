<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ServiceCategoryCloud.ascx.cs" Inherits="IntelArcade.WebApp.UserControls.ServiceCategoryCloud" %>
 <style type="text/css">
     .rtcTagItem {
    color: #336699 !important;
       }
    </style>
<table style="width:100%;">
<tr>
<td style="width:180px; color:#FF9148; font-weight:bold; font-family:'Trebuchet MS', Arial, sans-serif; font-size:1.4em; vertical-align:top; padding-top:5px;">Service Categories</td>
<td><div style="vertical-align:top;">
    <iac:LabelledText runat="server" ID="BackLink" LabelStyle="padding-left:10px;" />
    <tel:RadTagCloud runat="server" ID="TagCloud" BorderStyle="None" EnableViewState="false" Sorting="WeightedDsc" RenderItemWeight="true" MinFontSize="14px" MaxFontSize="14px" />
</div></td>
</tr>
</table>


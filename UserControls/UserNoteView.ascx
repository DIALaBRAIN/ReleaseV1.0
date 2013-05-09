<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UserNoteView.ascx.cs" Inherits="IntelArcade.WebApp.UserControls.UserNoteView" %>
<div class="rptItem">
<div class="itemHeader"><div class="inner">&nbsp;</div></div>
<div class="itemBody">
    <div class="inner">
        <table border="0" cellpadding="0" cellspacing="0" style="width:100%;" >
            <tr>
                <td rowspan="3" style="background-color:#f5f5f5;"><img style="width:50px;height:50px;" src="/images/userNote128x.gif" alt="" class="leftImage" /></td>
                <td style="text-align:left;white-space:nowrap;background-color:#f5f5f5;width:100%;"><label>User:</label>&nbsp;<%=UserName%></td>
            </tr>
        </table>
    </div>
</div>
<div class="itemFooter"><div class="inner">&nbsp;</div></div>
</div>
<hr style="clear:both;" />

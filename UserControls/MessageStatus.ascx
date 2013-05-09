<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MessageStatus.ascx.cs"
    Inherits="IntelArcade.WebApp.UserControls.MessageStatus" %>
<asp:Timer ID="Timer1" runat="server" Interval="50000">
</asp:Timer>
<asp:UpdatePanel runat="server" ID="upMessage" UpdateMode="Conditional" ChildrenAsTriggers="true">
    <ContentTemplate>
        <asp:PlaceHolder runat="server" ID="HasMessage" Visible="false"><a href="/MemberPages/Messages.aspx">
            <div style="position: relative; width:auto;">
                 
                 
<div style=" position: absolute;  top: 0px; right: 0;text-align:center;  font-size:x-small; font-weight: bold; color:white;  "> 
<span style="background-color:red;-moz-border-radius: 2px;-webkit-border-radius: 2px; border-radius: 2px;  border-right-width:2px;" >
<asp:Label BackColor=""  runat="server" ID="msgCount"></asp:Label>
</span>
</div> 




                 
                 
                
                <div style="padding-top: 5px;">
                    <asp:Image runat="server" ID="imghasMessage" ImageUrl="/images/ico/Mail-No.png" OnMouseOver="src='/images/ico/Mail-No-ro.png';" OnMouseOut="src='/images/ico/Mail-No.png';" />
                </div>
            </div>
        </a></asp:PlaceHolder>
        <asp:PlaceHolder runat="server" ID="NoMessage" Visible="true">
            <table border="0" cellpadding="0" cellspacing="0">
                <tr>
                    <td>
                        <a href="/MemberPages/Messages.aspx?folder=i">
                            <asp:Image runat="server" ToolTip="You have no new messages" ImageUrl="/images/ico/Mail-Yes.png" OnMouseOver="src='/images/ico/Mail-Yes-ro.png';" OnMouseOut="src='/images/ico/Mail-Yes.png';" />
                        </a>
                    </td>
                </tr>
            </table>
        </asp:PlaceHolder>
    </ContentTemplate>
    <Triggers>
        <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
    </Triggers>
</asp:UpdatePanel>

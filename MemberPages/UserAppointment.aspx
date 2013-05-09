<%@ Page Title="" Language="C#" MasterPageFile="~/StandardMaster.master" AutoEventWireup="true"
    CodeBehind="UserAppointment.aspx.cs" Inherits="IntelArcade.WebApp.MemberPages.UserAppointment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHead" runat="server">
    <script type="text/javascript">
        //<![CDATA[
        function OnClientClose(oWnd, args) {
            if (args == null) return;

            var arg = args.get_argument();
            if (arg != null && arg.DoPostback) {
                handleResponse_DialogResponseHandler(arg.ServiceResponse, arg.Argument);
            }
        }
        //]]>
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
    <iac:ClientResponseHandler runat="server" ID="DialogResponseHandler" />
    <h2>
        <%=PageTitle %>
    </h2>
    <iac:WindowManagerProxy runat="server" />
    <div class="rptHeader" style="margin-bottom: 10px;">
        <div style="width: inherit; padding: 5px;">
            <label style="color:#ffffff !important">
                Filter:</label>&nbsp;
            <tel:RadComboBox  runat="server" ID="FilterList" AutoPostBack="true" Width="240px">
            <Items>
            <tel:RadComboBoxItem Value="A" Text="All Appointments"></tel:RadComboBoxItem>
              <tel:RadComboBoxItem Value="R" Text="Requested Appointments Only"></tel:RadComboBoxItem>
            <tel:RadComboBoxItem Value="C" Text="Confirmed Appointments Only"></tel:RadComboBoxItem>
            </Items>
            </tel:RadComboBox>
         <%--   <asp:DropDownList runat="server" ID="FilterList" AutoPostBack="true">
                <asp:ListItem Value="A" Text="All Appointments" />
                <asp:ListItem Value="R" Text="Requested Appointments Only" />
                <asp:ListItem Value="C" Text="Confirmed Appointments Only" />
            </asp:DropDownList>--%>
        </div>
    </div>
    <asp:Timer ID="Timer1" runat="server" Interval="50000">
    </asp:Timer>
    <asp:UpdatePanel runat="server">
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
        </Triggers>
        <ContentTemplate>
            <asp:Repeater runat="server" ID="AppointmentRepeater">
                <HeaderTemplate>
                </HeaderTemplate>
                <SeparatorTemplate>
                </SeparatorTemplate>
                <ItemTemplate>
                    <div class="rptItem">
                        <div class="itemHeader">
                            <div class="inner">
                                <span>
                                    <%# GetSubjectPath(Container.DataItem) %></span> <a href="<%#GetServiceUrl(Container.DataItem)%>">
                                        <h1 style="padding-bottom: 4px;">
                                            <%#GetTitle(Container.DataItem)%></h1>
                                    </a>
                            </div>
                        </div>
                        <div class="itemBody">
                            <div class="inner">
                                <table border="0" cellpadding="0" cellspacing="0" style="width: 100%;">
                                    <tr>
                                        <td rowspan="7" valign="top">
                                            <img style="width: 50px; height: 50px; padding-top: 6px;" src="<%# GetImagePath(Container.DataItem) %>"
                                                alt="" class="leftImage" />
                                        </td>
                                        <td style="text-align: left; white-space: nowrap;">
                                            <label>
                                                <%# GetContextLabel(Container.DataItem) %></label>
                                        </td>
                                        <td style="text-align: left; white-space: nowrap; width: 70%;">
                                            <a href="<%# GetProviderUrl(Container.DataItem) %>">
                                                <%# GetAppointmentUserName(Container.DataItem) %></a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: left; white-space: nowrap;">
                                            <label>
                                                Type</label>
                                        </td>
                                        <td style="text-align: left; white-space: nowrap;">
                                            <%# GetSessionType(Container.DataItem) %>
                                        </td>
                                    </tr>
                                    <asp:Panel runat="server" Visible="<%# IsDateVisible(Container.DataItem) %>">
                                        <tr style="text-align: left; white-space: nowrap;">
                                            <td>
                                                <label>
                                                    Date</label>
                                            </td>
                                            <td style="text-align: left; white-space: nowrap;">
                                            <%# GetDate(Container.DataItem)%>
                                            </td>
                                        </tr>
                                        <tr style="text-align: left; white-space: nowrap;">
                                            <td>
                                                <label>
                                                    Start Time</label>
                                            </td>
                                            <td style="text-align: left; white-space: nowrap;">
                                                <%# GetStartTime(Container.DataItem) %>
                                            </td>
                                        </tr>
                                        <tr style="text-align: left; white-space: nowrap;">
                                            <td>
                                                <label>
                                                    End Time</label>
                                            </td>
                                            <td style="text-align: left; white-space: nowrap;">
                                            <%# GetEndTime(Container.DataItem) %>
                                            </td>
                                        </tr>
                                    </asp:Panel>
                                    <tr>
                                        <td style="text-align: left; white-space: nowrap;">
                                            <label>
                                                Duration</label>
                                        </td>
                                        <td style="text-align: left; white-space: nowrap;">
                                            <%# GetDuration(Container.DataItem) %>
                                        </td>
                                    </tr>
                                    <asp:Panel runat="server" Visible="<%# IsAvailabilityVisible(Container.DataItem) %>">
                                        <tr>
                                            <td valign="top">
                                                <label>
                                                    My Availability</label>
                                            </td>
                                            <td>
                                                <%# GetMyAvailability(Container.DataItem)%>
                                            </td>
                                        </tr>
                                    </asp:Panel>
                                    <tr>
                                        <td>
                                            <label>
                                                Status</label>
                                        </td>
                                        <td>
                                            <%# GetStatus(Container.DataItem) %>
                                            <div style="float: right;">
                                                <%# GetCommandLinks(Container.DataItem) %></div>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
                <FooterTemplate>
                </FooterTemplate>
            </asp:Repeater>
            <div style="padding-left: 10px">
                <asp:Label ID="lblMsg" runat="server"></asp:Label>
            </div>
            <iac:PageableItemProxy runat="server" ID="PageingProxy" />
            <tel:RadDataPager ID="Pager" runat="server" PagedControlID="PageingProxy">
                <Fields>
                    <tel:RadDataPagerButtonField FieldType="FirstPrev" FirstButtonText="<%$Resources:Buttons,First%>"
                        PrevButtonText="<%$Resources:Buttons,Previous%>" />
                    <tel:RadDataPagerButtonField FieldType="Numeric" PageButtonCount="10" />
                    <tel:RadDataPagerButtonField FieldType="NextLast" NextButtonText="<%$Resources:Buttons,Next%>"
                        LastButtonText="<%$Resources:Buttons,Last%>" />
                </Fields>
            </tel:RadDataPager>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentRightAbove" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentRightBelow" runat="server">
    <%/*
    <asp:Repeater runat="server" ID="AppointmentRepeater">
        <HeaderTemplate>
                <table cellspacing="0" style="border:0px; padding:0px; margin:0px;width:100%;" >
        </HeaderTemplate>
        <SeparatorTemplate><tr><td colspan="3"><hr /></td></tr></SeparatorTemplate>
        <ItemTemplate>
            <tr>
                <td colspan="2" style="padding-left:5px;padding-right:5px;border-bottom:1px dotted #9f9f9f;"><label>Title:</label>&nbsp;<iac:NotImp ID="NotImp14" runat="server">An Introduction to Civil Engineering</iac:NotImp></td>
            </tr>          
            <tr>
                <td rowspan="4" style="background-color:#f5f5f5;"><img style="width:50px;height:50px;" src="/images/requestedApt128x.gif" alt="" class="leftImage" /></td>
                <td></td>
            </tr>
            <tr>
                <td style="text-align:left;white-space:nowrap;background-color:#f5f5f5;"><label>Subject:</label>&nbsp;<iac:NotImp ID="NotImp1" runat="server">Engineering&nbsp;|&nbsp;Civil</iac:NotImp></td><td></td>
            </tr>
            <tr>
                <td style="text-align:left;white-space:nowrap;background-color:#f5f5f5;"><label>Seeker:</label>&nbsp;<iac:NotImp ID="NotImp2" runat="server">Joseph B. Bloggs</iac:NotImp>&nbsp;&nbsp;&nbsp;<label>Type:</label>&nbsp;Group Session</td><td></td>
            </tr>
            <tr>
                <td style="text-align:left;white-space:nowrap;background-color:#f5f5f5;"><label>Date:</label>&nbsp;Saturday, 5 March 2011&nbsp;&nbsp;&nbsp;<label>Start Time:</label>&nbsp;7:30PM&nbsp;&nbsp;&nbsp;<label>End Time:</label>&nbsp;8:00PM&nbsp;&nbsp;&nbsp;<label>Duration:</label>&nbsp;30 minutes</td>
            </tr>
            <tr>
                <td colspan="2" style="padding-left:5px;padding-right:5px;border-top:1px dotted #9f9f9f;"><div style="float:left;"><label>Status:</label>&nbsp;Unconfirmed</div><div style="float:right;"><span style="padding-right:5px;"><iac:NotImp ID="NotImp3" runat="server">Confirm</iac:NotImp></span><span style="padding-right:5px;"><iac:NotImp ID="NotImp4" runat="server">Decline</iac:NotImp></span><span style="padding-right:5px;"><iac:NotImp ID="NotImp5" runat="server">Cancel</iac:NotImp></span></div></td>
            </tr>
        </ItemTemplate>
        <FooterTemplate>
                <tr><td colspan="3"><hr /></td></tr>
            </table>
        </FooterTemplate>
    </asp:Repeater>   

   */ %>
    <%/*
    <asp:Repeater runat="server" ID="AppointmentRepeater">
        <HeaderTemplate>                
        </HeaderTemplate>
        <SeparatorTemplate></SeparatorTemplate>
        <ItemTemplate>
            <div>
            <div style="width:100%;background-color:White;"><div style="padding-left:5px;padding-right:5px;"><label>Title:</label>&nbsp;<iac:NotImp ID="NotImp4" runat="server">An Introduction to Civil Engineering</iac:NotImp></div></div>
            <div style="background-color:#f5f5f5;width:100%;border-top:1px dotted #9f9f9f;border-bottom:1px dotted #9f9f9f;">
                <table cellpadding="0" cellspacing="0" style="width:100%;" >
                    <tr>
                        <td rowspan="3" style="background-color:#f5f5f5;"><img style="width:50px;height:50px;" src="/images/requestedApt128x.gif" alt="" class="leftImage" /></td>
                        <td style="text-align:left;white-space:nowrap;background-color:#f5f5f5;"><label>Subject:</label>&nbsp;<iac:NotImp ID="NotImp5" runat="server">Engineering&nbsp;|&nbsp;Civil</iac:NotImp></td>
                    </tr>
                    <tr>
                        <td style="text-align:left;white-space:nowrap;background-color:#f5f5f5;"><label>Seeker:</label>&nbsp;<iac:NotImp ID="NotImp6" runat="server">Joseph B. Bloggs</iac:NotImp>&nbsp;&nbsp;&nbsp;<label>Type:</label>&nbsp;Group Session</td>
                    </tr>
                    <tr>
                        <td style="text-align:left;white-space:nowrap;background-color:#f5f5f5;"><label>Date:</label>&nbsp;Saturday, 5 March 2011&nbsp;&nbsp;&nbsp;<label>Start Time:</label>&nbsp;7:30PM&nbsp;&nbsp;&nbsp;<label>End Time:</label>&nbsp;8:00PM&nbsp;&nbsp;&nbsp;<label>Duration:</label>&nbsp;30 minutes</td>
                    </tr>
                </table>
            </div>
            <div style="padding-left:5px;padding-right:5px;width:100%;"><div style="float:left;padding:0px;"><label>Status:</label>&nbsp;Unconfirmed</div><div style="float:right;padding-right:5px;"><span style="padding-right:5px;"><iac:NotImp ID="NotImp7" runat="server">Confirm</iac:NotImp></span><span style="padding-right:5px;"><iac:NotImp ID="NotImp8" runat="server">Decline</iac:NotImp></span><span style="padding-right:5px;"><iac:NotImp ID="NotImp9" runat="server">Cancel</iac:NotImp></span></div></div>
            </div>
            <hr style="clear:both;" />
        </ItemTemplate>
        <FooterTemplate>
        </FooterTemplate>
    </asp:Repeater>
      
      */ %>
</asp:Content>

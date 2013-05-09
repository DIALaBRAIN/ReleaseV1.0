<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SubjectLong.ascx.cs" Inherits="IntelArcade.WebApp.SearchControls.SubjectLong" %>
<%@ Register TagPrefix="iac" TagName="ServiceCategoryCloud" Src="~/UserControls/ServiceCategoryCloud.ascx" %>
<%@ Import Namespace="IntelArcade.Common" %>

    <script language="javascript" type="text/javascript">
        function OnClientClosed(oWnd, args) {
            alert('test');
        }


    </script>
<iac:ServiceCategoryCloud runat="server" ID="CategoryCloud"  />
<br />
<asp:Repeater runat="server" ID="SubjectRepeater" EnableViewState="false">
    <HeaderTemplate>
    </HeaderTemplate>
    <SeparatorTemplate>
    </SeparatorTemplate>
    <ItemTemplate>
        <div class="rptItem">
            <div class="itemHeader"><div class="inner"><label>Title:</label>&nbsp;<a href="<%# GetSubjectPostbackRef(Container.DataItem) %>"><%# GetTitle(Container.DataItem) %></a></div></div>
            <div class="itemBody">
                <div class="inner">
                    <table border="0" cellpadding="0" cellspacing="0" style="width:100%;" >
                        <tr style="vertical-align:top;">
                            <td rowspan="3" style="background-color:#f5f5f5;"><img style="width:50px;height:50px;" src="<%# GetProviderImageUrl(Container.DataItem) %>" alt="" title="<%# GetProviderName(Container.DataItem) %>" class="leftImage" /></td>
                            <td style="text-align:left;white-space:nowrap;background-color:#f5f5f5;width:100%;"><label>Subject Category:</label>&nbsp;<%# GetSubject(Container.DataItem) %></td>
                            <td rowspan="3"><iac:ProfileFlagRenderer runat="server" ID="ProfileFlagRenderer1" EnableViewState="false" OnClientDialogClosed="_iac_SbjSchOnClientClose" Mode="Icons" UserFlags="<%# GetUserFlags(Container.DataItem) %>" ServiceProfileFlags="<%# GetSubjectFlags(Container.DataItem) %>" ServiceProfileID="<%# ((ServiceProfileResultItem)Container.DataItem).ServiceProfileID %>" ProviderID="<%# ((ServiceProfileResultItem)Container.DataItem).ProviderUserID %>" /></td>
                        </tr>
                        <tr>
                            <td style="text-align:left;white-space:nowrap;background-color:#f5f5f5;"><label>Provider:</label>&nbsp;<a href="<%# GetProviderPostbackRef(Container.DataItem) %>"><%# GetProviderName(Container.DataItem) %></a></td>
                        </tr>
                        <tr>
                            <td style="text-align:left;white-space:nowrap;background-color:#f5f5f5;">&nbsp;</td>
                        </tr>
                    </table>
                </div>
            </div>
            <div class="itemFooter">
                <div class="inner">
                    <div style="padding-bottom:4px;">
                        <label>Summary:</label>
		                <p><%# GetSummary(Container.DataItem) %></p>
                    </div>
                    <div style="padding-bottom:4px;">
                        <label>Description:</label>
		                <p><%# GetDescription(Container.DataItem) %></p>
                    </div>
                </div>
                <hr style="clear:both;border-top:1px dotted #afafaf;" />
                <div class="inner">
                    <div style=""><iac:ProfileFlagRenderer runat="server" ID="ProfileFlagRenderer2" EnableViewState="false" OnClientDialogClosed="_iac_SbjSchOnClientClose" Mode="Text" UserFlags="<%# GetUserFlags(Container.DataItem) %>" ServiceProfileFlags="<%# GetSubjectFlags(Container.DataItem) %>" ServiceProfileID="<%# ((ServiceProfileResultItem)Container.DataItem).ServiceProfileID %>" ProviderID="<%# ((ServiceProfileResultItem)Container.DataItem).ProviderUserID %>" /></div>
                 </div>
                <hr style="clear:both;margin-bottom:5px;" />        
            </div>
        </div>
    </ItemTemplate>
    <FooterTemplate>
    </FooterTemplate>
</asp:Repeater>

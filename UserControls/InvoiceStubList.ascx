<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="InvoiceStubList.ascx.cs" Inherits="IntelArcade.WebApp.UserControls.InvoiceStubList" %>
<%@ Import Namespace="IntelArcade.Common" %>
<iac:PostBackProxy runat="server" ID="CommandProxy" />
<div runat="server" id="div_InvoiceStubList"  class="messageList">
    <asp:Repeater runat="server" ID="InvoiceRepeater" EnableViewState="false">
        <HeaderTemplate>
        </HeaderTemplate>
        <SeparatorTemplate>
        </SeparatorTemplate>
        <ItemTemplate>
            <div class="rptItem">
            <div class="itemHeader">
               <div class="inner">
               </div>
            </div>
            <div class="itemBody">
                <div class="inner">
                    <table style="width: 100%">
                        <tr>
                            <td colspan="2" style="text-align:left"><span style="font-weight:bold;font-size:larger;"><%# GetDisplayName((IInvoiceHeader)Container.DataItem)%></span></td>
                        <td style="text-align:right"><a target="_blank" href="<%# GetCommandLink((IInvoiceHeader)Container.DataItem) %>"><%# GetInvoiceNumber((IInvoiceHeader)Container.DataItem)%></a></td>
                         
                        </tr>
                        <tr>        
                        <td colspan="2"><span><%# GetTitle((IInvoiceHeader)Container.DataItem)%></span></td>        
                              <td align="right" style="text-align:right;white-space:nowrap;float:right"><b style="float:right"><%# GetDate((IInvoiceHeader)Container.DataItem)%></b>
                              </td>
                        </tr>
                        <tr>
                            <td style="text-align:left" colspan="2"></td><td></td>
                        </tr>
                    </table>
                </div>
            </div>
            <div class="itemFooter" style="clear:both;padding-top:5px;margin-bottom:10px;"><div class="inner"></div></div>
            </div>
        </ItemTemplate>
        <FooterTemplate>
        </FooterTemplate>
    </asp:Repeater>
    <h2 runat="server" id="NoResultsMessage"><%= global::Resources.Strings.NoInvoices %></h2>
</div>

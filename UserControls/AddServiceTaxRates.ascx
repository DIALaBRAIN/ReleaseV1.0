<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AddServiceTaxRates.ascx.cs" Inherits="IntelArcade.WebApp.UserControls.AddServiceTaxRates" EnableViewState="true"  %>
   <table style="width: 100%">
                            <tr>
                                <td style="border-top: 1px solid #cfcfcf; border-bottom: 1px solid #cfcfcf; padding: 5px 0px 5px 0;">
                                    <h3 style="color: #FF9148;">
                                        Services</h3>
                                    <div title="Add Service" class="addButton" style="margin-bottom: 5px; float: right;margin-right:-2px;">
                                      <%--  <asp:LinkButton ID="Add_Link" CommandName="Add" CommandArgument="" runat="server"
                                            Text=""></asp:LinkButton>--%>
                                    </div>
                                    <div style="clear: both">

                                        <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional" ChildrenAsTriggers="true">
                                        <ContentTemplate>
                                        <asp:Repeater runat="server" ID="SubjectRepeater" 
                                            OnItemDataBound="rpt_ItemDataBound" >
                                            <HeaderTemplate>
                                            </HeaderTemplate>
                                            <SeparatorTemplate>
                                            </SeparatorTemplate>
                                            <ItemTemplate>
                                                <div style="clear: both; padding-top: 5px; margin-bottom: 1px;margin-right:-4px; float: right">
                                                    <div class="inner">
                                                    
                                                    </div>
                                                </div>
                                                <div class="rptItem">
                                                    <div class="itemHeader">
                                                        <div class="inner">
                                                        </div>
                                                    </div>
                                                    <div class="itemBody">
                                                        <div class="inner" style="padding-bottom: 2px;">
                                                            <img id="Img1" src="~/images/providerOnline-32x.png" alt="Image" title="Image" class="leftImage"
                                                                style="width: 50px; height: 50px;" runat="server" />
                                                                  <asp:Label Visible="false" runat="server" ID="LabelserviceProfileID" Text="<%# ((IntelArcade.Common.ServiceProfile)Container.DataItem).ServiceProfileID%>"></asp:Label>
                                                           
                                                               <asp:Label Visible="false" runat="server" ID="txtServiceSubjectID" Text="<%# ((IntelArcade.Common.ServiceProfile)Container.DataItem).SubjectID%>"></asp:Label>
                                                              <table>
                                                                
                                                                <tr>
                                                                
                                                                <td width="300px">
                                                                
                                                                                 <span><%# IntelArcade.WebApp.FormatHelper.GetSubjectPath((IntelArcade.Common.ServiceProfile)Container.DataItem)%></span>
                                                                </td>
                                                                 <td  align="center" style="text-align:center;width:200px;">
                                                                     <asp:DropDownList    ID="DropDownListVAT" ViewStateMode="Enabled"  runat="server">
                                                                      </asp:DropDownList>                         

                        &nbsp;<iac:IARequiredFieldValidator runat="server" ID="rfvalVAT" ControlToValidate="DropDownListVAT"
                            RenderAsBlockElement="false" />
                                                                 </td>
                                                                </tr>

                                                                <tr>
                                                                
                                                                <td>
                                                                
                                                                 <h1 style="padding-bottom: 4px; line-height: 19px; font-size: 13px;color:#006C9E;">
                                                                <%#((IntelArcade.Common.ServiceProfile)Container.DataItem).Title%></h1>
                                                                </td>
                                                                 <td></td>
                                                                </tr>


                                                                <tr>
                                                                
                                                                <td >
                                                                <span style="font-size: 11px">
                                                               <%# IntelArcade.WebApp.FormatHelper.FormatRate((IntelArcade.Common.ServiceProfile)Container.DataItem)%>
                                                                </span></td>
                                                                 <td></td>
                                                                </tr>
                                                                </table>
                                           
                                                            
                                               
                                                    
                                                           
                                                            <div>
                                 
                                                            </div>
                                                       <br />
                                                        </div>
                                    
                                                    </div>
                                                </div>
                                            </ItemTemplate>
                                            <FooterTemplate>
                                            </FooterTemplate>
                                        </asp:Repeater>
                                        </ContentTemplate>
                                        </asp:UpdatePanel>

                                        <script>

                                            function asyncServerCall(rate,val) {

                                                //alert(rate);
                                                _iac_usercontrol_call(rate);
                                              
                                            }
                                           
                                        </script>
                                    </div>
                                </td>
                            </tr>
                        </table>
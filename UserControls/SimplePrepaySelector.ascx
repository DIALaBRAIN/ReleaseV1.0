<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SimplePrepaySelector.ascx.cs"
    Inherits="IntelArcade.WebApp.UserControls.SimplePrepaySelector" %>
<div class="rptItem">
    <div runat="server" id="TargetPanel">
        <div class="inner">
            <table border="0" cellpadding="0" cellspacing="0">
                <tr>
                    <td>
                        <img id="Img2" runat="server" src="/images/systemTime-50x.png" alt="Image" title="Image"
                            class="leftImage" style="height: 50px; width: 50px" />
                    </td>
                    <td style="vertical-align: top; padding-top: 5px;">
                        <table>
                            <tr>
                                <td style="padding-right: 20px;">
                                 <span><b>d<span class="highlight">b</span></b>-<i>Time</i> : </span>
                                    <asp:DropDownList ID="PrepayAmount" AutoPostBack="true" runat="server" ValidationGroup="PrepayAmount" />
                                    &nbsp;&nbsp;&nbsp;<iac:IARequiredFieldValidator runat="server" ID="rfvalPrepayAmount"
                                        ControlToValidate="PrepayAmount" ValidationGroup="PrepayAmount" />
                                </td>
                                <td style="border-bottom: 1px solid #3f3f3f;">
                                    <asp:Label runat="server" ID="lblPrepayTotelAmount"></asp:Label>      
                                
                            </tr>
                            <tr>
                                </td>
                                <td>
                                </td>
                                <td style="border-top: 1px solid #3f3f3f;">
                                </td>
                            </tr>
                            <tr>
                             <td style="padding-left:65px;">
                                 <span class="paynowButton"> 
                               <asp:LinkButton ID="Confirm_AndPay" runat="server" OnClick="ConfirmAndPay_Click"
                                ValidationGroup="PrepayAmount" Text=""></asp:LinkButton>
                        </span>
                            </tr>
                        </table>
                        
                    </td>
                </tr>
            </table>
        </div>
    </div>
</div>

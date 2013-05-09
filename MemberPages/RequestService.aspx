<%@ Page Title="" Language="C#" MasterPageFile="~/StandardMaster.master" AutoEventWireup="true"
    CodeBehind="RequestService.aspx.cs" Inherits="IntelArcade.WebApp.MemberPages.RequestService" ValidateRequest="false" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
    <h2>
        Request a Service</h2>
    <div style="margin-top: 20px">
       <%-- <div style="text-align:center; padding-bottom:10px;">
        If we currently do not have a service <span style="font-style:italic">Provider</span> with the expertise you seek, don't worry! Just tell us what you need and we will try and find professionals to help you.
        </div>--%>
           <div style="width: 100%; text-align: center; font-size: 17px;margin-top:30px;font-weight:bold;color:#000;">
            Request a Service <br /><span style="font-size: 13px;color:#6f6f6f">Let the Providers know what you need !</span></div>
        <div style="">
            <table style="width: 300px; margin-left: 28%; margin-right: 30%;">
                <tr>
                    <td style="vertical-align: top;">
                    </td>
                    <td>
                        <tel:RadComboBox runat="server" ID="cbParentSubjectCategorys" Skin="Web20" EmptyMessage="Main Subject" DataTextField="SubjectName"
                            AllowCustomText="true" DataValueField="SubjectID" ToolTip="If the service area is not listed, please type in a new one."
                            AutoPostBack="true" OnSelectedIndexChanged="cbParentSubjectCategorys_SelectedIndexChanged">
                        </tel:RadComboBox>
                    </td>
                    <td>
                        <tel:RadComboBox runat="server" AllowCustomText="true" EmptyMessage="Sub-topic" ID="cbSubjectCategorys" Skin="Web20" DataTextField="SubjectName"
                            DataValueField="SubjectID" Enabled="false" MaxLength="100" ToolTip="If the service area is not listed, please type in a new one.">
                        </tel:RadComboBox>
                     
                    </td>
                    <td>
                    </td>
                </tr>
                <tr><td></td><td>   <iac:IARequiredFieldValidator ID="IARequiredFieldValidator1" runat="server" ControlToValidate="cbSubjectCategorys"
                            ValidationGroup="RequestService"></iac:IARequiredFieldValidator></td></tr>
            </table>
      <table style="width: 300px; margin-left: 28.2%; margin-right: 30%;">   <tr>
                    <td style="vertical-align: top;">
               
            <iac:TextBox runat="server" ID="tbNote" Width="323px" Height="80px" TextMode="MultiLine"
                EmptyMessage="Please write a brief note describing the specific knowledge that you are looking for.">
            </iac:TextBox>
            <iac:IARequiredFieldValidator ID="IARequiredFieldValidator2" runat="server" ControlToValidate="tbNote"
                ValidationGroup="RequestService"></iac:IARequiredFieldValidator>
                  </td>
                </tr>
            </table>
        </div>
          
        <div class="buttonContainer" style="float: left;  margin-left: 40%; margin-right: 30%;">
            <table>
                <tr>
                    <td class="requestService">
                        <asp:LinkButton ID="btnRequestService" runat="server" Text="" ValidationGroup="RequestService"></asp:LinkButton>
                    </td>
                </tr>
                <tr></tr>
            </table>
        </div>

          <div style="float: left; ">
            <table style="width: 350px; margin-left: 28%; margin-right: 30%;padding-top:15px;">
                <tr>
                <td>
                <span runat="server" visible="false" id="span_wantedtab" style="font-size:12px">Go to the <a href="../" style="font-weight:bold;font-size:12px">WANTED tab</a> on the home page to see your request</span>
                </td>
                </tr>
                </table>
          </div>
    </div>
</asp:Content>

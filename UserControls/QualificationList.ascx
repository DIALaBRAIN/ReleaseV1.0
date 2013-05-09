<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="QualificationList.ascx.cs"
    Inherits="IntelArcade.WebApp.UserControls.QualificationList" %>
<asp:Repeater runat="server" ID="QualificationRepeater">
    <HeaderTemplate>
        <table border="0" cellpadding="0" cellspacing="0">
    </HeaderTemplate>
    <SeparatorTemplate>
        <tr>
            <td colspan="2" style="border-top: 1px solid #cfcfcf;">
                <br />
            </td>
        </tr>
    </SeparatorTemplate>
    <ItemTemplate>
        <tr>
            <td style="width: 100%; padding-left: 5px;">

            <table>
            <tr>
            
            <td align="right"><b><label>Country:</label></b></td>
             <td align="left">

             <span><%# GetCountry(((IntelArcade.Common.Qualification)Container.DataItem).CountryCode)%></span>
             
             </td>
            </tr>
            <tr>
            
            <td align="right"><b><label>Body/College:</label></b></td>
             <td align="left">

          <span><%# ((IntelArcade.Common.Qualification)Container.DataItem).QualificationAuthority%></span>
             
             </td>
            </tr>


                <tr>
            
            <td align="right"><b><label>Course Attended:</label></b></td>
             <td align="left">

<span><%# ((IntelArcade.Common.Qualification)Container.DataItem).QualificationCourse%></span>             
             </td>
            </tr>

                   <tr>
            
            <td align="right"><b><label>Graduation Date:</label></b></td>
             <td align="left">

<span><%# GetDate(((IntelArcade.Common.Qualification)Container.DataItem).IssuedDate)%></span>          
   </td>
            </tr>

                 <tr>
            
            <td align="right"><b><label>Qualification:</label></b></td>
             <td align="left">

<span><%# ((IntelArcade.Common.Qualification)Container.DataItem).QualificationName%></span>   </td>
            </tr>
            </table>
              
            </td>
            <td style="vertical-align: top;" rowspan="2">
                <img src="<%# GetImageUrl(((IntelArcade.Common.Qualification)Container.DataItem).QualificationType) %>"
                    alt="" style="width: 50px; height: 50px;" />
            </td>
        </tr>
        <tr>
            <td style="padding-left: 5px; padding-top: 5px; padding-bottom: 10px;">
                <p>
                    <span><i>
                        <%# ((IntelArcade.Common.Qualification)Container.DataItem).Notes%></i></span></p>
            </td>
        </tr>
    </ItemTemplate>
    <FooterTemplate>
        </table>
    </FooterTemplate>
</asp:Repeater>
<h2 runat="server" id="NoResultMessage">
    There are no qualifications to display</h2>

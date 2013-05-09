<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SubjectCategorySelector.ascx.cs"
    Inherits="IntelArcade.WebApp.UserControls.SubjectCategorySelector" %>
<asp:Repeater runat="server" ID="reParentSubjects">
    <ItemTemplate>
       <%# GetDivStart() %>
        <div style="margin-right:20px; margin-bottom:10px">
        <b style="margin-left:5px;">
            <img src="/images/arrow.gif" alt=">"/>
            <span style="font-weight:bold; text-decoration: none; color: #414141; cursor: default; ">
                <%#GetSubjectName(Container.DataItem) %></span>
        </b>
        
            <div style="margin-left: 25px; color:#006C9E">
                  <ul style="color:#444444;"> 
                <asp:Repeater runat="server" ID="reSubject" DataSource="<%# GetSubjects(Container.DataItem) %>">
                   
                    <ItemTemplate>
                    
                   
                     <li style="list-style-type: square;">
                        <asp:LinkButton runat="server" OnClick="Subject_Click" Text="<%#GetSubjectName(Container.DataItem) %>"
                            CommandArgument="<%#GetSubjectID(Container.DataItem) %>"> 
                    
                            </asp:LinkButton> </li>
                   
                   
                    
                    </ItemTemplate>
                  
                </asp:Repeater>  <ul>
                 
            </div>
        </div>
        <%# GetDivEnd() %>
         
    </ItemTemplate>
</asp:Repeater>


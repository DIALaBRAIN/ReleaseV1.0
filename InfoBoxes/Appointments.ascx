<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Appointments.ascx.cs"
    Inherits="IntelArcade.WebApp.InfoBoxes.Appointments"  %>
    
	<script type="text/javascript">

	   function pageLoad(sender, args) {
	       var timeoutbool = false;
	       $("#app1").mouseenter(function () {
	           if (timeoutbool == false) {
	               $(this).stop(true, true).animate({ height: 62 }, 200); $("#appspan").stop(true, true).fadeIn(1000);
	               timeoutbool = true;
	               setTimeout(foo, 500);
	           }
	       });
	       function foo() {
	        timeoutbool = false;
	       }

	     
	        $("#app1").mouseleave(function () { $(this).stop(true, true).animate({ height: 22 }, 200); $("#appspan").stop(true, true).hide();});

	        var timeoutbool2 = false;

	        $("#app2").mouseenter(function () {
                 if (timeoutbool2 == false) {
	            $(this).stop(true, true).animate({ height: 63 }, 200); $("#appspan2").stop(true, true).fadeIn(1000);
	            timeoutbool2 = true;
	            setTimeout(foo2, 500);
	        }
            });

            function foo2() {
                timeoutbool2 = false;
            }
           
            $("#app2").mouseleave(function () { $(this).stop(true, true).animate({ height: 22 }, 200); $("#appspan2").stop(true, true).hide(); });

            var timeoutbool3 = false;
            $("#app3").mouseenter(function () {
             if (timeoutbool3 == false) {
                $(this).stop(true, true).animate({ height: 67 }, 200); $("#appspan3").stop(true, true).fadeIn(1000);
                timeoutbool3 = true;
                setTimeout(foo3, 500);
            }
            });

            function foo3() {
                timeoutbool3 = false;
            }
           
           
            $("#app3").mouseleave(function () { $(this).stop(true, true).animate({ height: 22 }, 200); $("#appspan3").stop(true, true).hide(); });
	        $('#<%= Img234.ClientID %>').mouseover(function () {$(this).stop(true, true).animate({ "opacity": 0.5 });});
	        $('#<%= Img234.ClientID %>').mouseout(function () { $(this).stop(true, true).animate({ "opacity": 1 }); });
	        $('#<%= Img1231.ClientID %>').mouseover(function () { $(this).stop(true, true).animate({ "opacity": 0.5 }); });
	        $('#<%= Img1231.ClientID %>').mouseout(function () { $(this).stop(true, true).animate({ "opacity": 1 }); });
	        $('.imms').mouseover(function () { $(this).stop(true, true).animate({ "opacity": 0.5 }); });
	        $('.imms').mouseout(function () { $(this).stop(true, true).animate({ "opacity": 1 }); });
	          
        }


    </script>
<asp:UpdatePanel runat="server">
    <ContentTemplate>
  
<div id="lessdetailsg">
<div id="app1"  class="bluebar_radious" style="background-color:#336699;
     height:22px;color: White;font: bold 0.9em Arial; margin: 0 0 5px 0;padding: 4px 0 4px 10px;">Appointments
<span  class="rightHeaderInfo4" >
<asp:Literal  runat="server" id="DefaultContainer2" visible="false" />  
<asp:Literal runat="server" ID="TotalRequested2"  />&nbsp;R &nbsp;  &nbsp; <asp:Literal runat="server" ID="TotalConfirmed2" />
&nbsp;C<asp:PlaceHolder runat="server" id="TotalsContainer2" visible="false"></asp:PlaceHolder>
</span>
<br />
<span class="rightHeaderInfo4" id="appspan" style="width:100%;display:none;border-top: 1px solid #4275a7;">

<asp:Literal  runat="server" id="DefaultContainer" visible="false" />
<asp:PlaceHolder runat="server" id="TotalsContainer" visible="false">

<span class="rightHeaderInfo3" style="line-height:36px;float:left" >
<table>
<tr>
<td>
<img id="Img234" src="~/images/RightNav/aptRequested-50x.png" 
style="width:30px;height:30px;margin-top:6px; padding-left:6px;" alt="Requested" title="Requested" runat="server"/>
</td>
<td style="vertical-align:top;padding-top:0px;">
    <span style="margin-top:-25px;text-align:left;vertical-align:middle;line-height:36px;font-size:11px" >
   <span style="font-size:11px;line-height:36px;"> <asp:Literal runat="server" ID="TotalRequested" /> Requested </span>&nbsp;&nbsp;&nbsp;
</span>
    </td>
</tr></table>
</span>

<span  style="color: #fff;line-height:36px;float:right;margin-right:10px">
<table>
<tr>
<td>
<img id="Img1231" src="~/images/RightNav/aptConfirmed-50x.png" 
style="width:30px;height:30px;margin-top:6px; padding-left:6px;" alt="Requested" title="Confirmed" runat="server"/>
</td>
<td style="vertical-align:top;padding-top:0px;">
    <span style="text-align:left;vertical-align:middle;line-height:36px;font-size:11px" >
    <span style="font-size:11px;line-height:36px;"> <asp:Literal runat="server" ID="TotalConfirmed" /> Confirmed</span>
    </span>
    </td>
</tr></table>
</span>


</asp:PlaceHolder>
    </span>

</div>
</div>

        <table>
        <tr>
        <td >

        <div  class="rightArticle">
            <span class="tooltip1">
                         
              <a  href="/MemberPages/UserAppointment.aspx?mode=r">
              <img style="width: 50px; height: 50px;" src="/images/RightNav/aptRequested-50x.png" onmouseover="this.src='/images/RightNav/aptRequested-50x-RO.png'" onmouseout="this.src='/images/RightNav/aptRequested-50x.png'"   alt="" title="" class="leftImage"  /></a>
               <a  href="/MemberPages/UserAppointment.aspx?mode=r"><p style="margin-top:12px;font-size:12px;width:230px;font-weight:bold">Requested Appointments</p></a><br /></a>
             
             <span class="custom info">Lists all pending appointments. Please confirm or reject any requests. See all your pending meetings.  </span>
             </span> 
        </div>
       
        </td>
        </tr>
        <tr>
        <td>
        <div class="rightArticle">
            <span class="tooltip1">
                          
              <a  href="/MemberPages/UserAppointment.aspx?mode=c">
              <img style="width: 50px; height: 50px;" src="/images/RightNav/aptConfirmed-50x.png" onmouseover="this.src='/images/RightNav/aptConfirmed-50x-ro.png'" onmouseout="this.src='/images/RightNav/aptConfirmed-50x.png'" alt="" title="" class="leftImage" /></a>
              <a  href="/MemberPages/UserAppointment.aspx?mode=c"><p style="margin-top:12px;font-size:12px;width:230px;font-weight:bold">Confirmed Appointments</p></a><br /></a>
             
             <span class="custom info">You may also join the meetings from here.</span>
             </span> </div>  
        </td>
        </tr>
        
        </table>
    </ContentTemplate>
</asp:UpdatePanel>

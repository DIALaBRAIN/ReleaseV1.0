<%@ Page Title="" Language="C#" MasterPageFile="~/InteractiveBase.master" AutoEventWireup="true"
    CodeBehind="Consultants.aspx.cs" Inherits="IntelArcade.WebApp.Consultants" %>

<%@ Register Src="~/UserControls/Ticker.ascx" TagName="Ticker" TagPrefix="uc1" %>
<%@ Register Src="UserControls/SelectedProfiles.ascx" TagName="SelectedProfiles"
    TagPrefix="uc2" %>
<%@ Register Src="UserControls/VideoPlayer.ascx" TagName="VideoPlayer" TagPrefix="uc1" %>
<%@ Register Src="InfoBoxes/WhyRegister.ascx" TagName="WhyRegister" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentHead" runat="server">
 <style> a {color: #00a9f7;font-size: 0.8em;text-decoration: none;font-weight:bold;} a p.titleslide{font-size:11px;margin-top:-10px;}
      p.titlevideo{color:#00a9f7;cursor:pointer;position:absolute;top:85px;left:393px}
 p.titlevideo1{color:#00a9f7;cursor:pointer;position:absolute;top:85px;left:433px;}
 p.titlevideo2{color:#00a9f7;cursor:pointer;position:absolute;top:85px;left:475px;}
 </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
    <script language="javascript" type="text/javascript" src="/Client/jquery.tools.min.js"></script>
    <link rel="stylesheet" type="text/css" href="Styles/consultantgrid_images.css" />
		<script type="text/javascript" src="Client/modernizr.custom.26633.js"></script>
		<noscript>
			<link rel="stylesheet" type="text/css" href="Styles/fallback.css" />
		</noscript>
		<!--[if lt IE 9]>
			<link rel="stylesheet" type="text/css" href="css/fallback.css" />
		<![endif]-->
        <img src="images/loading.gif" style="display:none;"/>
  <%--  <div class="tickerBar" style="width: auto; height: 60px; clear: both; line-height: 15px;
        margin-bottom: 10px;">
        <uc1:Ticker runat="server" ID="Ticker" />
    </div>--%>
<div>
    <div class="container" id="header">
    <a href="/Register.aspx" id="register">Register</a>
    <img id="free" src="images/free1.png" style="display: inline; float:right; margin-right:10px; ">
    </div>
    
    <div id="scroll">

  <!-- scrollable items Just fix an appointment and have a meeting without the need to travel.-->
  <div id="tools">

    <!-- tabs -->
    <div class="tool" id="tab1">

		<a><img src="images/bg1.png"><p class="titleslide">A place to speak face-to-face with consultants, advisors and tutors. Video  </p>

        <span class="video" style=""><uc1:VideoPlayer ID="VideoPlayer3" runat="server" Width="450" Hight="250" ImageUrl="/images/video1.png" ResourceSettingName="FrontPageVideo1" /></span><img src="images/shadow.png" class="shadow"></a>
   
    	<p class="titlevideo" >   <iac:DialogCommand runat="server" ID="DialogWatchConsultant"    Type="WatchVideo" Text="Intro1" /></p>
        <p class="titlevideo1" >   <iac:DialogCommand runat="server" ID="DialogWatchConsultant2"  Type="WatchVideo" Text="Intro2" /></p>
        <p class="titlevideo2" >   <iac:DialogCommand runat="server" ID="DialogWatchConsultant3"  Type="WatchVideo" Text="Intro3" /></p>

        <div id="ri-grid" class="ri-grid ri-grid-size-2" style="">
					<img class="ri-loading-image" src="images/loading.gif"/>
					<ul>
               		<li ><a href="#"><img src="images/grid/1.jpg"/></a></li>
						<li><a href="#"><img src="images/grid/2.jpg"/></a></li><li><a href="#"><img src="images/grid/3.jpg"/></a></li>
						<li><a href="#"><img src="images/grid/4.jpg"/></a></li><li><a href="#"><img src="images/grid/5.jpg"/></a></li>
						<li><a href="#"><img src="images/grid/6.jpg"/></a></li><li><a href="#"><img src="images/grid/7.jpg"/></a></li>
						<li><a href="#"><img src="images/grid/8.jpg"/></a></li><li><a href="#"><img src="images/grid/9.jpg"/></a></li>
						<li><a href="#"><img src="images/grid/10.jpg"/></a></li><li><a href="#"><img src="images/grid/11.jpg"/></a></li>
						<li><a href="#"><img src="images/grid/12.jpg"/></a></li><li><a href="#"><img src="images/grid/13.jpg"/></a></li>
						<li><a href="#"><img src="images/grid/14.jpg"/></a></li><li><a href="#"><img src="images/grid/15.jpg"/></a></li>
						<li><a href="#"><img src="images/grid/16.jpg"/></a></li><li><a href="#"><img src="images/grid/17.jpg"/></a></li>
                        <li><a href="#"><img src="images/grid/18.jpg"/></a></li><li><a href="#"><img src="images/grid/19.jpg"/></a></li>
						<li><a href="#"><img src="images/grid/20.jpg"/></a></li><li><a href="#"><img src="images/grid/21.jpg"/></a></li>
						<li><a href="#"><img src="images/grid/22.jpg"/></a></li><li><a href="#"><img src="images/grid/23.jpg"/></a></li>
						<li><a href="#"><img src="images/grid/24.jpg"/></a></li><li><a href="#"><img src="images/grid/25.jpg"/></a></li>
						<li><a href="#"><img src="images/grid/26.jpg"/></a></li><li><a href="#"><img src="images/grid/27.jpg"/></a></li>
                        <li><a href="#"><img src="images/grid/28.jpg"/></a></li><li><a href="#"><img src="images/grid/29.jpg"/></a></li>
						<li><a href="#"><img src="images/grid/30.jpg"/></a></li>                     
                        <li><a href="#"><img src="images/grid/31.jpg"/></a></li>
						<li><a href="#"><img src="images/grid/32.jpg"/></a></li><li><a href="#"><img src="images/grid/33.jpg"/></a></li>
						<li><a href="#"><img src="images/grid/34.jpg"/></a></li><li><a href="#"><img src="images/grid/35.jpg"/></a></li>
						<li><a href="#"><img src="images/grid/36.jpg"/></a></li><li><a href="#"><img src="images/grid/37.jpg"/></a></li>
                        <li><a href="#"><img src="images/grid/38.jpg"/></a></li><li><a href="#"><img src="images/grid/39.jpg"/></a></li>
						<li ><a href="#"><img src="images/grid/40.jpg"/></a></li><li><a href="#"><img src="images/grid/41.jpg"/></a></li>
                     
						<li><a href="#"><img src="images/grid/42.jpg"/></a></li><li><a href="#"><img src="images/grid/43.jpg"/></a></li>
						<li><a href="#"><img src="images/grid/44.jpg"/></a></li><li><a href="#"><img src="images/grid/45.jpg"/></a></li>
						<li><a href="#"><img src="images/grid/46.jpg"/></a></li><li><a href="#"><img src="images/grid/47.jpg"/></a></li>
						<li><a href="#"><img src="images/grid/48.jpg"/></a></li> <%--<li><a href="#"><img src="images/grid/49.jpg"/></a></li>
						<li><a href="#"><img src="images/grid/50.jpg"/></a></li><li><a href="#"><img src="images/grid/51.jpg"/></a></li>
                        <li><a href="#"><img src="images/grid/52.jpg"/></a></li><li><a href="#"><img src="images/grid/53.jpg"/></a></li>
						<li><a href="#"><img src="images/grid/54.jpg"/></a></li><li><a href="#"><img src="images/grid/55.jpg"/></a></li>
                        <li><a href="#"><img src="images/grid/56.jpg"/></a></li><li><a href="#"><img src="images/grid/57.jpg"/></a></li>
						<li><a href="#"><img src="images/grid/58.jpg"/></a></li><li><a href="#"><img src="images/grid/59.jpg"/></a></li>
                        <li><a href="#"><img src="images/grid/60.jpg"/></a></li><li><a href="#"><img src="images/grid/61.jpg"/></a></li>
                        <li><a href="#"><img src="images/grid/62.jpg"/></a></li><li><a href="#"><img src="images/grid/63.jpg"/></a></li>
                        <li><a href="#"><img src="images/grid/64.jpg"/></a></li><li><a href="#"><img src="images/grid/65.jpg"/></a></li>
                        <li><a href="#"><img src="images/grid/70.jpg"/></a></li><li><a href="#"><img src="images/grid/71.jpg"/></a></li>
                        <li><a href="#"><img src="images/grid/72.jpg"/></a></li>                             
                        <li><a href="#"><img src="images/grid/66.jpg"/></a></li><li><a href="#"><img src="images/grid/67.jpg"/></a></li>
                        <li><a href="#"><img src="images/grid/68.jpg"/></a></li><li><a href="#"><img src="images/grid/69.jpg"/></a></li>
--%>








</ul>
				</div>
    </div>
    
    <div class="tool" id="tab2">
		<a><img src="images/bg2.png">
        <ul>
        	<li>Registration is Free.</li>
            <li>Access to knowledgeable providers.</li>
            <li>No traveling required.</li>
            <li>Video conferencing tools included.</li>
        </ul>
        <span class="video"><uc1:VideoPlayer ID="VideoPlayer1" runat="server" Width="450" Hight="250" ImageUrl="/images/video2.png"  ResourceSettingName="FrontPageVideo2" /></span><img src="images/shadow.png" class="shadow"></a>
    </div>
    
    <div class="tool" id="tab3">
		<a><img src="images/bg3.png"><p>We are looking for professional consultants, those with specific expertise, tutors and expert witnesses. As a service Provider, you are contacted directly for your services. The site is not a bidding site where the lowest bid wins. State your "price per hour", and if the client is interested they contact you.</p>
        <span class="video"><uc1:VideoPlayer ID="VideoPlayer2" runat="server" Width="450" Hight="250" ImageUrl="/images/video3.png" ResourceSettingName="FrontPageVideo3" /><img src="images/shadow.png" class="shadow"></a>
    </div>
    
  </div>

 

  <!-- required for IE6/IE7 -->
  <br clear="all">

  <!-- thumbnails -->
  <div class="t" id="thumbs">

    <!-- intro page navi button -->

    <!-- scrollable navigator root element -->
    <div class="navi">
      <a id="t1" ></a>
      <a id="t2"></a>
      <a id="t3"></a>
    </div>
  </div>
</div>


    <div class="contentBody">
    <div class="selectedprofiles">
        <div>
            <uc2:SelectedProfiles ID="SelectedProfiles1" ProfileType="Consultant" runat="server" />
        </div>
        <div>
            <uc2:SelectedProfiles ID="SelectedProfiles2" ProfileType="Tutor" runat="server" />
        </div>
        <div>
            <uc2:SelectedProfiles ID="SelectedProfiles3" ProfileType="Expert" runat="server" />
        </div>
    </div>
        <script type='text/javascript'>

            $('.trigger').tooltip({
                position: 'bottom center',
                relative: true,
                predelay: 300,
                effect: 'slide',
                slideOffset: 30
            });
            var api = $("#scroll").scrollable({
                items: '#tools'

                // use the navigator plugin
            }).navigator().data("scrollable");


        </script>
                <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
        	<script type="text/javascript" src="Client/jquery.gridrotator.js"></script>
		<script type="text/javascript">

		    $(function () {
		  

		        $('#ri-grid').gridrotator({
		            rows: 4,
		            columns: 7,
		            animType: 'fadeInOut',
		            animSpeed: 1000,
		            interval: 300,
		            step: 1,
		            w320: {
		                rows: 4,
		                columns: 7
		            },
		            w240: {
		                rows: 4,
		                columns: 7
		            }
		        });

		    });

		</script>
    </div>
    <div class="contentRight">
    <uc1:WhyRegister ID="WhyRegister1" runat="server" />
    </div>
</asp:Content>



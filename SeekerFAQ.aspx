<%@ Page Title="" Language="C#" MasterPageFile="~/StandardMaster.master" AutoEventWireup="true" CodeBehind="SeekerFAQ.aspx.cs" Inherits="IntelArcade.WebApp.SeekerFAQ" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
<div>
<iac:MoreLess2 ID="MoreLess30" runat="server"> 
<Less>
<p class="headingsNew">Seeker</p>

 <iac:MoreLess ID="MoreLess1" runat="server">
    <Less>
       <p style="font-weight:bold;padding-left:15px;" class="msgHeader2">What areas of expertise do the <i>Providers</i> cover?</p>
    </Less>
    <More>
       <p style="font-weight:bold;padding-left:15px;padding-right:10px;" class="msgHeader2">What areas of expertise do the <i>Providers</i> cover?</p>
       <p style="padding-left:15px;padding-right:10px;">The site is designed as a professional resource for companies and individuals alike. <i>Providers</i> are welcome from most any field of expertise. The main areas we are initially developing are: Business, Finance, Legal, Medical, Education, Engineering, IT, Science, Writing & Translation. We also have created a "Miscellaneous" section for knowledge and expertise areas that fall outside of these core areas. </p><br/>
       <p style="padding-left:15px;padding-right:10px;"><b>DIALa<span class="highlight2">BRAIN</span></b> does not premit services related to: religion, gaming, fortune-telling, pornography, or any service that could otherwise be deemed unlawful or vice related. Please inform us if you see anything of this nature.</p><br/><%--<hr style="color:#cccccc"/>--%><br/>
    </More>
 </iac:MoreLess>
 <iac:MoreLess ID="MoreLess2" runat="server">
     <Less>
       <p style="font-weight:bold;padding-left:15px;" class="msgHeader1">What information can I find about a <i>Provider</i> before engagement?</p>
     </Less>
     <More>
       <p style="font-weight:bold;padding-left:15px;" class="msgHeader1">What information can I find about a <i>Provider</i> before engagement?</p>
       <p style="padding-left:15px;">Most of the following information should be available on each <i>Provider</i> / company:</p><br/>
       <p style="padding-left:15px;"><ol style="padding-left:50px;padding-right:10px;">
         <li>A <i>Provider</i> / company overviews<ul style="padding-left:50px"><li>Includes introductory text, static photo, company logo and video profile.</li></ul></li>
         <li>Service overviews <ul style="padding-left:50px"><li>Includes introductory text, supplementary information and service specific videos.</li></ul></li>
         <li>Your work history and qualifications.<ul style="padding-left:50px">
         <li>Includes relevant license details and expiration dates.</li></ul></li>
         <li>Examples of work<ul style="padding-left:50px"><li>E.g. a marketing professional may want to show an example of previous branding work.</li></ul></li>
         <li><i>Products:</i><ul style="padding-left:50px"><li>E.g. course materials, programs, templates, recoded webinars etc.</li></ul></li>
         <li><i>Web Presence:</i><ul style="padding-left:50px"><li>I.e. links to: Linkedin, company sites, blogs, etc. The idea being that you can create a more convincing picture of who you are to the <i>Seekers</i>.</li></ul></li>
         <li><i>Feedback</i> history:<ul style="padding-left:50px"><li>Each service and <i>Product</i> is rated has its own independent <i>Feedback</i> score.</li></ul></li>
         <li><i>Recommendations:</i><ul style="padding-left:50px"><li>Only <i>Seekers</i> that have a substantial purchase history with the <i>Provider</i> can leave these.</li></ul></li>
       
       </ol></p><br/><br/>
     </More>
 </iac:MoreLess>
 <iac:MoreLess ID="MoreLess3" runat="server">
     <Less>
         <p style="font-weight:bold;padding-left:15px;" class="msgHeader2">What benefits does video offer a <i>Seeker</i>?</p>
     </Less>
     <More>
         <p style="font-weight:bold;padding-left:15px;" class="msgHeader2">What benefits does video offer a <i>Seeker</i>?</p>
         <p style="padding-left:15px;padding-right:10px;">In addition to being a rich medium for communication, video can help <i>Seekers</i> evaluate a service <i>Provider</i> before engagement. Video helps to provide a better answer the following questions: </p><br/>
         <p style="padding-left:15px;"><ul style="padding-left:50px">
              <li>can I understand the person and are they articulate?</li>
              <li>do I have a positive vibe about him or her?</li>
              <li>does the person seem to have the right background?</li>
         </ul></p><br/>
         <p style="padding-left:15px;padding-right:10px;">Once in a meeting, both parties will be able to assess body language, which is very useful for seeing if you are understood. If "a picture paints a thousand words", video reveals much more again!</p>
         <br/><br/>
     </More>
 </iac:MoreLess>
 <iac:MoreLess ID="MoreLess4" runat="server">
     <Less>
        <p style="font-weight:bold;padding-left:15px;" class="msgHeader1">Do all <i>Providers</i> offer live services?</p>
     </Less>
     <More>
        <p style="font-weight:bold;padding-left:15px;" class="msgHeader1">Do all <i>Providers</i> offer live services?</p>
        <p style="padding-left:15px;padding-right:10px;">Though many of our <i>Providers</i> offer live face-to-face services, not all of them do. Where the work is project oriented or if the <i>Provider</i> has poor bandwidth, live services are less appropriate. Additionally, some <i>Providers</i> developed <i>Products</i> that do not require a live service to support them, e.g. legal advice may be written.</p><br/><br/>
     </More>
 </iac:MoreLess>
 <iac:MoreLess ID="MoreLess5" runat="server">
     <Less>
        <p style="font-weight:bold;padding-left:15px;" class="msgHeader2">How can I trust a service <i>Provider</i> that I have never met?</p>
     </Less>
     <More>
        <p style="font-weight:bold;padding-left:15px;" class="msgHeader2">How can I trust a service <i>Provider</i> that I have never met?</p>
        <p style="padding-left:15px;padding-right:10px;">At <b>DIALa<span class="highlight2">BRAIN</span></b>, we know that trust is critical to successful relationships. Before you, incur costs, we feel that it is important that you know whom you are dealing with. Check the <i>Providers</i> online profile, work experience and qualifications. If they have links to their company, personal blog, LinkedIn accounts, then check these too and see that everything seems consistent. Additionally, body language or "non-verbal" communication provides between 40% and 90% of the meaning we derive from personal interactions. In view of this, we recommend that if a <i>Provider</i> has loaded a video, watch it, or if they offer a free introductory period, take advantage of that to interview them and make up your own mind.</p><br/><br/>
     </More>
 </iac:MoreLess>
 <iac:MoreLess ID="MoreLess6" runat="server">
     <Less>
        <p style="font-weight:bold;padding-left:15px;" class="msgHeader1">What is the difference between <i>Feedback</i> and a <i>Recommendation</i>?</p>
     </Less>
     <More>
        <p style="font-weight:bold;padding-left:15px;" class="msgHeader1">What is the difference between <i>Feedback</i> and a <i>Recommendation</i>?</p>
        <p style="padding-left:15px;padding-right:10px;">Whenever a <i>Provider's</i> service or <i>Products</i> are purchased, Feedback can be left on the <i>Provider's</i> knowledge, communication skills, professionalism or on the <i>Product</i> itself. However, a <i>Recommendation</i> is much harder for the <i>Provider</i> to earn. We require one of the following three conditions to be met:</p><br/>
        <p style="padding-left:15px;"><ul style="padding-left:50px">
             <li>A minimum of 5 hours of the service <i>Provider's</i> time to have been purchased. </li>
             <li>A minimum fee of 250 GBP, USD or Euro to have been spent on the service <i>Provider.</i></li>
             <li>A minimum fee of 1,000 GBP, USD or Euro if the <i>Provider</i> introduced the <i>Seeker</i> to <b>DIALa<span class="highlight2">BRAIN</span> </b>(i.e. they are a <a href="#">Referral</a> contact). </li>
        </ul></p><br/><br/>
     </More>
 </iac:MoreLess>
 <p style="height:15px"></p></Less>
<More>
<p class="headingsNew">Seeker</p>

 <iac:MoreLess ID="MoreLess111" runat="server">
    <Less>
       <p style="font-weight:bold;padding-left:15px;" class="msgHeader2">What areas of expertise do the <i>Providers</i> cover?</p>
    </Less>
    <More>
       <p style="font-weight:bold;padding-left:15px;" class="msgHeader2">What areas of expertise do the <i>Providers</i> cover?</p>
       <p style="padding-left:15px;padding-right:10px;">The site is designed as a professional resource for companies and individuals alike. <i>Providers</i> are welcome from most any field of expertise. The main areas we are initially developing are: Business, Finance, Legal, Medical, Education, Engineering, IT, Science, Writing & Translation. We also have created a "Miscellaneous" section for knowledge and expertise areas that fall outside of these core areas. </p><br/>
       <p style="padding-left:15px;padding-right:10px;"><b>DIALa<span class="highlight2">BRAIN</span></b> does not premit services related to: religion, gaming, fortune-telling, pornography, or any service that could otherwise be deemed unlawful or vice related. Please inform us if you see anything of this nature.</p><br/><%--<hr style="color:#cccccc"/>--%><br/>
    </More>
 </iac:MoreLess>
 <iac:MoreLess ID="MoreLess211" runat="server">
     <Less>
       <p style="font-weight:bold;padding-left:15px;" class="msgHeader1">What information can I find about a <i>Provider</i> before engagement?</p>
     </Less>
     <More>
       <p style="font-weight:bold;padding-left:15px;" class="msgHeader1">What information can I find about a <i>Provider</i> before engagement?</p>
       <p style="padding-left:15px;padding-right:10px;">Most of the following information should be available on each <i>Provider</i> / company:</p><br/>
       <p style="padding-left:15px;"><ol style="padding-left:50px;padding-right:10px;">
         <li>A <i>Provider</i> / company overviews<ul style="padding-left:50px"><li>Includes introductory text, static photo, company logo and video profile.</li></ul></li>
         <li>Service overviews <ul style="padding-left:50px"><li>Includes introductory text, supplementary information and service specific videos.</li></ul></li>
         <li>Your work history and qualifications.<ul style="padding-left:50px"><li>Includes relevant license details and expiration dates.</li></ul></li>
         <li>Examples of work<ul style="padding-left:50px"><li>E.g. a marketing professional may want to show an example of previous branding work.</li></ul></li>
         <li><i>Products:</i><ul style="padding-left:50px"><li>E.g. course materials, programs, templates, recoded webinars etc.</li></ul></li>
         <li><i>Web Presence:</i><ul style="padding-left:50px"><li>I.e. links to: Linkedin, company sites, blogs, etc. The idea being that you can create a more convincing picture of who you are to the <i>Seekers</i>.</li></ul></li>
         <li><i>Feedback</i> history:<ul style="padding-left:50px"><li>Each service and <i>Product</i> is rated has its own independent <i>Feedback</i> score.</li></ul></li>
         <li><i>Recommendations:</i><ul style="padding-left:50px"><li>Only <i>Seekers</i> that have a substantial purchase history with the <i>Provider</i> can leave these.</li></ul></li>
       
       </ol></p><br/><br/>
     </More>
 </iac:MoreLess>
 <iac:MoreLess ID="MoreLess311" runat="server">
     <Less>
         <p style="font-weight:bold;padding-left:15px;" class="msgHeader2">What benefits does video offer a <i>Seeker</i>?</p>
     </Less>
     <More>
         <p style="font-weight:bold;padding-left:15px;" class="msgHeader2">What benefits does video offer a <i>Seeker</i>?</p>
         <p style="padding-left:15px;padding-right:10px;">In addition to being a rich medium for communication, video can help <i>Seekers</i> evaluate a service <i>Provider</i> before engagement. Video helps to provide a better answer the following questions: </p><br/>
         <p style="padding-left:15px;"><ul style="padding-left:50px">
              <li>can I understand the person and are they articulate?</li>
              <li>do I have a positive vibe about him or her?</li>
              <li>does the person seem to have the right background?</li>
         </ul></p><br/>
         <p style="padding-left:15px;padding-right:10px;">Once in a meeting, both parties will be able to assess body language, which is very useful for seeing if you are understood. If "a picture paints a thousand words", video reveals even more!</p>
         <br/><br/>
     </More>
 </iac:MoreLess>
 <iac:MoreLess ID="MoreLess411" runat="server">
     <Less>
        <p style="font-weight:bold;padding-left:15px;" class="msgHeader1">Do all <i>Providers</i> offer live services?</p>
     </Less>
     <More>
        <p style="font-weight:bold;padding-left:15px;" class="msgHeader1">Do all <i>Providers</i> offer live services?</p>
        <p style="padding-left:15px;padding-right:10px;">Though many of our <i>Providers</i> offer live face-to-face services, not all of them do. Where the work is project oriented or if the <i>Provider</i> has poor bandwidth, live services are less appropriate. Additionally, some <i>Providers</i> developed <i>Products</i> that do not require a live service to support them, e.g. legal advice may be written.</p><br/><br/>
     </More>
 </iac:MoreLess>
 <iac:MoreLess ID="MoreLess511" runat="server">
     <Less>
        <p style="font-weight:bold;padding-left:15px;" class="msgHeader2">How can I trust a service <i>Provider</i> that I have never met?</p>
     </Less>
     <More>
        <p style="font-weight:bold;padding-left:15px;" class="msgHeader2">How can I trust a service <i>Provider</i> that I have never met?</p>
        <p style="padding-left:15px;padding-right:10px;">At <b>DIALa<span class="highlight2">BRAIN</span></b>, we know that trust is critical to successful relationships. Before you, incur costs, we feel that it is important that you know whom you are dealing with. Check the <i>Providers</i> online profile, work experience and qualifications. If they have links to their company, personal blog, LinkedIn accounts, then check these too and see that everything seems consistent. Additionally, body language or "non-verbal" communication provides between 40% and 90% of the meaning we derive from personal interactions. In view of this, we recommend that if a <i>Provider</i> has loaded a video, watch it, or if they offer a free introductory period, take advantage of that to interview them and make up your own mind.</p><br/><br/>
     </More>
 </iac:MoreLess>
 <iac:MoreLess ID="MoreLess611" runat="server">
     <Less>
        <p style="font-weight:bold;padding-left:15px;" class="msgHeader1">What is the difference between <i>Feedback</i> and a <i>Recommendation</i>?</p>
     </Less>
     <More>
        <p style="font-weight:bold;padding-left:15px;" class="msgHeader1">What is the difference between <i>Feedback</i> and a <i>Recommendation</i>?</p>
        <p style="padding-left:15px;padding-right:10px;">Whenever a <i>Provider's</i> service or <i>Products</i> are purchased, Feedback can be left on the <i>Provider's</i> knowledge, communication skills, professionalism or on the <i>Product</i> itself. However, a <i>Recommendation</i> is much harder for the <i>Provider</i> to earn. We require one of the following three conditions to be met:</p><br/>
        <p style="padding-left:15px;"><ul style="padding-left:50px;padding-right:10px;">
             <li>A minimum of 5 hours of the service <i>Provider's</i> time to have been purchased.</li>
             <li>A minimum fee of 250 GBP, USD or Euro to have been spent on the service <i>Provider.</i>
             <li>A minimum fee of 1,000 GBP, USD or Euro if the <i>Provider</i> introduced the <i>Seeker</i> to <b>DIALa<span class="highlight2">BRAIN</span></b> (i.e. they are a <a href="#">Referral</a> contact). </li>
        </ul></p><br/><br/>
     </More>
 </iac:MoreLess>
 <iac:MoreLess ID="MoreLess711" runat="server">
     <Less>    
         <p style="font-weight:bold;padding-left:15px;" class="msgHeader2">How do I find my <i>Providers</i> and what is <i>Pinning</i>?</p>
     </Less>
     <More>
         <p style="font-weight:bold;padding-left:15px;" class="msgHeader2">How do I find my <i>Providers</i> and what is <i>Pinning</i>?</p>
         <p style="padding-left:15px;padding-right:10px;">Whenever you find someone or something you don't want to lose, you can stick a <i>Pin</i> in it. There is a little <i>pin</i> icon that will appear when you do this. 
          The system will automatically stick a <i>Pin</i> next to any <i>Provider</i> that you have dealt with. Thus, if you use the Account menu and then select <i>"Pinned Providers Products"</i>, you will get a shortlist of all the Pinned entries.
          </p><br/><br/>
     </More>
 </iac:MoreLess>
 <iac:MoreLess ID="MoreLess8" runat="server">
     <Less>
         <p style="font-weight:bold;padding-left:15px;" class="msgHeader1">Can I interview service <i>Providers</i>?</p>
     </Less>
     <More>
         <p style="font-weight:bold;padding-left:15px;" class="msgHeader1">Can I interview service <i>Providers</i>?</p>
         <p style="padding-left:15px;padding-right:10px;">Yes, although this process may not be free. Initially we suggest that you message the <i>Provider</i> with a brief outline of your issue. If it is not their field, they should be able to tell you. It is not in their interest to get negative <i>Feedback</i>, so they should be careful about accepting work for which they are not qualified.</p><br/>
         <p style="padding-left:15px;padding-right:10px;">The next step is to talk to the <i>Providers</i>. Check to see if the first session is free or you can limit the call to 10 -15 minutes so that you can evaluate if you want to fully engage the <i>Provider</i>.</p><br/><br/>
     </More>
 </iac:MoreLess>
 <iac:MoreLess ID="MoreLess9" runat="server">
     <Less>
         <p style="font-weight:bold;padding-left:15px;" class="msgHeader2">How does a <i>Seeker</i> know when a <i>Provider</i> is available?</p>
     </Less>
     <More>
         <p style="font-weight:bold;padding-left:15px;" class="msgHeader2">How does a <i>Seeker</i> know when a <i>Provider</i> is available?</p>
         <p style="padding-left:15px;padding-right:10px;">All <i>Providers</i> are given a scheduling facility so that they can indicate the times that they are generally available. This acts only as a guide for the <i>Seekers</i>, so that they can book an appointment. While <i>Providers</i> may be logged in, they may not always be at their desk, or they may be on another call. The etiquette is that a <i>Seeker</i> should first send a brief private mail to the <i>Provider</i> so the subject and a mutually convenient time for a session can be arranged.</p><br/><br/>
     </More>
 </iac:MoreLess>
 <iac:MoreLess ID="MoreLess10" runat="server">
     <Less>
         <p style="font-weight:bold;padding-left:15px;" class="msgHeader1">What if a <i>Provider</i> is not available at the requested time?</p>
     </Less>
     <More>
         <p style="font-weight:bold;padding-left:15px;" class="msgHeader1">What if a <i>Provider</i> is not available at the requested time?</p>
         <p style="padding-left:15px;padding-right:10px;">The <i>Provider</i> is the host of the meeting, but all meetings must be either requested or accepted by both parties. If a <i>Provider</i> rejects a meeting, then no meeting will occur. If a <i>Provider</i> suggests a new time, the <i>Seeker</i> must accept this before the meeting can be scheduled. No <b>d<span class="highlight2">b</span></b>-<i>Credits</i> will be deducted until both parties agree the scheduled time and provisional duration.</p><br/><br/>
     </More>
 </iac:MoreLess>
 <iac:MoreLess ID="MoreLess11" runat="server">
     <Less>
         <p style="font-weight:bold;padding-left:15px;" class="msgHeader2">What if the <i>Provider</i> is poorly prepared or incompetent?</p>
     </Less>
     <More>
         <p style="font-weight:bold;padding-left:15px;" class="msgHeader2">What if the <i>Provider</i> is poorly prepared or incompetent?</p>
         <p style="padding-left:15px;padding-right:10px;"><b>DIALa<span class="highlight2">BRAIN</span></b> cannot vouch for the quality of <i>Providers'</i> services. We strongly advise you to both read the <i>Feedback</i> and <i>Recommendations</i>, and to check their credentials and links to other sites before engaging them. If a <i>Provider</i> offers a free introductory period, take advantage of that so that you can better judge the <i>Provider</i>.</p><br/>
         <p style="padding-left:15px;padding-right:10px;">If, once you are in a call, the <i>Provider</i> falls short of the mark, then simply end the call so that you are not continuing to spend money on a poor service. Think of it as if you were buying a service from the high street. If you did not like the service you would get up and walk out; this is no different. You may then leave poor <i>Feedback</i> so that you protect others.
However, be aware that you are legally responsible for what you say about a <i>Provider</i>.</p><br/>
         <p style="padding-left:15px;padding-right:10px;">If the situation is that you must rely on the advice given by the <i>Provider</i>, then you may record the session as evidence of the advice given. If a session is recorded then both parties are informed. Thus if you wish to pursue a refund, you have evidence for the dispute. Please see our solving disputes and complaints section.</p><br/><br/>
     </More>
 </iac:MoreLess>
 <iac:MoreLess ID="MoreLess12" runat="server">
     <Less>
         <p style="font-weight:bold;padding-left:15px;" class="msgHeader1">What if I booked an hour session and the meeting ends early?</p>
     </Less>
     <More>
         <p style="font-weight:bold;padding-left:15px;" class="msgHeader1">What if I booked an hour session and the meeting ends early?</p>
         <p style="padding-left:15px;padding-right:10px;">The cost of the session is calculated based on the duration that the <i>Seeker</i> is actually online. Thus, if the meeting concludes early for whatever reason, the <i>Seeker</i> only pays for the time connected. Any remaining credit that was put in escrow for the session is returned to the <i>Seeker's</i> account. To see how the cost is calculated, please look at the following <a href="#">calculations</a>.</p><br/><br/>
     </More>
 </iac:MoreLess>
 <iac:MoreLess ID="MoreLess13" runat="server">
     <Less>
         <p style="font-weight:bold;padding-left:15px;" class="msgHeader2">What is a <i>Product</i>?</p>
     </Less>
     <More>
         <p style="font-weight:bold;padding-left:15px;" class="msgHeader2">What is a <i>Product</i>?</p>
         <p style="padding-left:15px;padding-right:10px;">A <i>Product</i> is any document, file or media that has been loaded to the site for distribution, regardless of its price. All <i>Products</i> have their own <i>Feedback</i> ratings and their own individual pricing.</p><br/><br/>
     </More>
 </iac:MoreLess>
 <iac:MoreLess ID="MoreLess14" runat="server">
     <Less>
         <p style="font-weight:bold;padding-left:15px;" class="msgHeader1">How do I register as a <i>Seeker</i>?</p>
     </Less>
     <More>
         <p style="font-weight:bold;padding-left:15px;" class="msgHeader1">How do I register as a <i>Seeker</i>?</p>
         <p style="padding-left:15px;padding-right:10px;">Just click on the Register link and you are almost there. As someone seeking a service, we need very little of your information. However, as this is a site for professionals, we ask that you register with your real name. </p><br/>
         <p style="padding-left:15px;padding-right:10px;">When you actually come to buy a service, if you are VAT or Sales Tax registered you will also be asked for the relevant details. This is a requirement as the VAT / Sales Tax rules often effect how the TAX is calculated and represented on an invoice.</p><br/><br/>
     </More>
 </iac:MoreLess>
 <iac:MoreLess ID="MoreLess15" runat="server">
     <Less>
         <p style="font-weight:bold;padding-left:15px;" class="msgHeader2">Can I also register as a <i>Provider</i>?</p>
     </Less>
     <More>
         <p style="font-weight:bold;padding-left:15px;" class="msgHeader2">Can I also register as a <i>Provider</i>?</p>
         <p style="padding-left:15px;padding-right:10px;">Yes. The registration process for a <i>Seeker</i> and a <i>Provider</i> are basically the same, the only difference is that the <i>Provider</i> completes more of the registration process. </p><br/><br/>
     </More>
 </iac:MoreLess>
 <iac:MoreLess ID="MoreLess16" runat="server">
     <Less>
         <p style="font-weight:bold;padding-left:15px;" class="msgHeader1">How do I find my <i>Providers</i>?</p>
     </Less>
     <More>
         <p style="font-weight:bold;padding-left:15px;" class="msgHeader1">How do I find my <i>Providers</i>?</p>
         <p style="padding-left:15px;padding-right:10px;">Click the home button and in your carousel there is a “My Providers” tab.</p><br/><br/>
     </More>
 </iac:MoreLess>
 <iac:MoreLess ID="MoreLess17" runat="server">
     <Less>
         <p style="font-weight:bold;padding-left:15px;" class="msgHeader2">Why as a <i>Seeker</i> do you need my VAT or Sales Tax details?</p>
     </Less>
     <More>
         <p style="font-weight:bold;padding-left:15px;" class="msgHeader2">Why as a <i>Seeker</i> do you need my VAT or Sales Tax details?</p>
         <p style="padding-left:15px;padding-right:10px;">As <b>DIALa<span class="highlight2">BRAIN</span></b> allows cross border transactions, the TAX and/or instructions on the TAX that are included on the invoices may vary. In order to know what we have to include on the invoice, we need to know the TAX status of both the <i>Provider</i> and <i>Seeker</i>.</p><br/><br/>
     </More>
 </iac:MoreLess>

 </More></iac:MoreLess2>
 <br />
 <p class="headingsNew"><a name="Guidance" style="color:White; text-decoration:none;">Guidance</a></p>
		<div class="contentBody_leftSide" style="padding-left:10px">
            <b><img src="/images/arrow.gif" alt=">" /> <span class="title"  style="text-decoration:none; color:#414141; cursor:default">Frequently Asked Questions</span></b><br />
            <ul style="padding-left:30px">
			<li><a href="UsageFAQ.aspx">Using this site</a></li><li><a href="ProviderFAQ.aspx">Service Providers</a></li><li><a href="SeekerFAQ.aspx">Service Seekers</a></li><li><a href="BillingFAQ.aspx">Billing and Payments</a></li><li><a href="DIALaBRAINFAQ.aspx" >What is <span style="color:#414141; font-weight:bold">DIALa<span class="highlight2">BRAIN</span></span>?</a></li></ul><br/>
            
			<b><img src="/images/arrow.gif" alt=">" /> <span class="title"  style="text-decoration:none; color:#414141; cursor:default">Guides for Seekers and Providers</span></b><br />
			<ul style="padding-left:30px"><li><a href="PrePayGuide.aspx"><span style="color:#414141; font-weight:bold">d<span class="highlight2">b</span></span>-<i>Time</i> and PrePay</a></li><li><a href="InvoiceGuide.aspx">Making and receiving Payments</a></li><li><a href="FeedbackGuide.aspx">Recommendations and Feedback</a></li><li><a href="RegistrationGuide.aspx">Registering with <span style="color:#414141; font-weight:bold">DIALa<span class="highlight2">BRAIN</span></span></a></li></ul><br/>
			<b><img src="/images/arrow.gif" alt=">" /> <span class="title"  style="text-decoration:none; color:#414141; cursor:default">Service Seeker Guides</span></b><br />
			<ul style="padding-left:30px"><li><a href="TrustGuide.aspx">Building trust</a></li><li><a href="SelectionGuide.aspx">Selecting a Provider and Having a Meeting</a></li></ul>

		</div>
		<div class="contentBody_rightSide">
			<b><img src="/images/arrow.gif" alt=">" /> <span class="title"  style="text-decoration:none; color:#414141; cursor:default">Service Provider and Company Guides</span></b><br />
			<ul style="padding-left:30px"><li><a href="P_BenenfitsGuide.aspx">The benefits for Providers</a></li><li><a href="ConferencingGuide.aspx">Web conferencing tools</a></li><li><a href="ProviderGuide.aspx">Becoming a service Provider</a></li><li><a href="ReferredGuide.aspx">How to pay almost no commission</a></li><li><a href="ProfileGuide.aspx">Writing a profile</a></li><li><a href="PhotographGuide.aspx">Photos and creating the right image</a></li><li><a href="MarketGuide.aspx">How to market yourself</a></li><li><a href="FeesGuide.aspx">What are my costs as a Provider</a></li></ul><br/>
			<b><img src="/images/arrow.gif" alt=">" /> <span class="title"  style="text-decoration:none; color:#414141; cursor:default"><span style="color:#414141; font-weight:bold">DIALa<span class="highlight2">BRAIN</span></span> &amp; Policies </span></b><br />
			<ul style="padding-left:30px"><li><a href="OverviewGuide.aspx">An overview of <span style="color:#414141; font-weight:bold">DIALa<span class="highlight2">BRAIN</span></span></a></li><li><a href="PrivacyGuide.aspx">Privacy Policy</a></li><li><a href="SeekerTermsGuide.aspx">Seeker Terms and Conditions</a></li><li><a href="ProviderTermsGuide.aspx">Provider Terms and Conditions</a></li><li><a href="ContactUsGuide.aspx">Contact Us</a></li></ul>
		</div>
</div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentRightAbove" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentRightBelow" runat="server">
</asp:Content>

A modern, multi-megabit, IP-based, digital network for amateur radio use!
=========================================================================
HamWAN is a non-profit organization (501c3) developing best practices for high speed amateur radio data networks. HamWAN also runs the Puget Sound Data Ring, which is a real-world network implementation of the proposed designs.

So far, HamWAN networks have been used for things like low-latency repeater linking, real-time video feeds from distant locations, serving APRS I-gates, providing redundant internet access to emergency operations centers, and more. Any licensed radio amateur in the service area can connect their shack directly to the network with just a small investment in equipment and no reoccurring cost. Since many traditional uses for Internet at home are not compatible with [Part 97 rules](/Internet and Part 97.html), this won't replace your home Internet connection. However, it works and acts just like one.

State of the Puget Sound Data Ring
==================================
HamWAN cells have been deployed to six sites. Each site is interconnected with 5.9 GHz modems and fully routed with OSPF. HamWAN provides routing to all existing AMPRNet systems. Examine the map below to determine if you're within the current HamWAN coverage area!

<style>
@import url("/map.css")
</style>
<script src="http://maps.googleapis.com/maps/api/js?v=3.exp&amp;libraries=places"></script>
<script src="/map.js"></script>
<div id="map_container" class="map_container">
    <div id="map_canvas" style="width:100%;height:100%;"></div>
</div>
<br />
Red "coverage areas" indicate a signal level of -70 dBm or better when using the 30 dBi recommended client antenna. A signal level of -70 dBm or stronger will support full speed, about 10 Mbps in areas with clear line of sight and no interference. Other areas with line of sight may have intermittent coverage or decreased speeds.

Click on any of the nodes on the map for detail about that node.

Blue lines indicate current connections to the HamWAN network. Line width indicates bandwidth.

Other Regions
=============
HamWAN is not just in Western Washington! There are a handful of networks around the United States implementing the HamWAN standard. Learn more about them at [Certification](/Certification.html).

Get Connected
=============
<div style="float: right;"><img src="/portable setup.jpg" alt="HamWAN portable setup" /><p>HamWAN portable setup</p></div>

I'm in the coverage area
------------------------
It only takes about $200 of equipment to connect—that's less than a typical 2 meter mobile setup! Our coverage map is based on the following radio and antenna combination:

 * [Poynting 5.9 GHz 30 dBi grid](http://www.titanwirelessonline.com/Poynting-5-8GHz-31dBi-Grid-p/at-30gr-58.htm) or [2 ft solid dish](http://www.titanwirelessonline.com/ARC-4-9-5-8GHz-30db-DualPOL-Dish-p/at-da5830sd1-arc.htm) antenna
 * [Mikrotik RouterBOARD Metal 5SHPn wifi radio](http://www.balticnetworks.com/routerboard-metal-5shpn.html)

For more information on what to buy, see the [Client Hardware](/Client Hardware.html) comparison page.

See [Client Node Configuration](/Client Node Configuration.html) for instructions on configuring your modem. Join the IRC channel or mailing list for help.

I'm not in the coverage area
----------------------------
The coverage map is a rough estimate based on a computer model. In some areas coverage is worse than predicated, and in other it is better than predicated. You might still have coverage! Jump in the IRC channel or mailing list and ask about coverage in your area. We may be able to make it work.

Radio Sites
===========
Due to their excellent line of sight, mountain-top radio sites in western Washington have a very high chance of getting HamWAN coverage. If you would like to connect your repeater to HamWAN for linking, IRLP, Echolink, or an APRS igate, ask in the IRC channel or email list and we may be able to help you.

If you think your site would make a good HamWAN cell site, let us know! If it's a good location, we'll fund the deployment with HamWAN donations at no expense to you.

Mailing List
============
Sign up to the mailing list by [clicking here](http://mail.hamwan.org/mailman/listinfo/psdr) or sending an email to [psdr-join@HamWAN.org](mailto:psdr-join@HamWAN.org). The subject and body are not important. [Archives](http://mail.hamwan.org/pipermail/psdr/) of the distribution list are also available.

Online Chat Room
================
Participate in the conversation, ask for help or just follow along in real time. Hang out in the project's IRC channel #HamWAN on irc.freenode.org.

Use your own IRC client or [click here](http://webchat.freenode.net/?nick=HamWAN..&channels=%23HamWAN) for a web version.

Volunteer
=========
If you would like to volunteer for any of the work required (see the wiki table of contents for areas that need attention), please send an email to the mailing list to let us know. We'll set you up with the right access to make changes to the website and keep track of progress.

Supporting Organizations
========================
We would like to thank the following organizations for their generous support of the HamWAN project and the local HamWAN standard network.

[![Digital Fortress](/digital fortress.png)](http://dfcolo.com/)
[![Microhams](/microhams.gif)](http://microhams.com/)
[![NGC457](/ngc457.gif)](http://ngc457.com/)
[![Threshold Communications](/threshold.gif)](http://thresholdcommunications.com/)

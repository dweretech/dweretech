<!-- 
<script src="/http://www.invisiblechildren.com/displaceMe/includes/jsbin/prototype.js" type="text/javascript"></script>
<script src="/http://www.invisiblechildren.com/displaceMe/includes/jsbin/scriptaculous.js" type="text/javascript"></script>
<script src="/http://www.invisiblechildren.com/displaceMe/includes/jsbin/js_library.js" type="text/javascript"></script>
<script src="/http://www.invisiblechildren.com/displaceMe/includes/jsbin/ajax.js" type="text/javascript"></script>

<script src="/http://www.invisiblechildren.com/displaceMe/includes/jsbin/techteam.js" type="text/javascript"></script>
<script src="/http://www.invisiblechildren.com/displaceMe/includes/jsbin/sign_up.js" type="text/javascript"></script>
<script src="/http://www.invisiblechildren.com/displaceMe/includes/jsbin/commit.js" type="text/javascript"></script>
<script src="/http://www.invisiblechildren.com/displaceMe/includes/jsbin/mo_email.js" type="text/javascript"></script>
<script src="/http://www.invisiblechildren.com/displaceMe/includes/jsbin/flashobject.js" type="text/javascript"></script>

<script language="javascript">
		getDaysLeft();
		getDaysLeftLoop();
		
		//Displace Me Subscribers
		var savedData = '67,835';
		
		function checkData(id){
			if(ajax.readyState == 4 && ajax.status == 200)
			{
				var el = document.getElementById(id);
				if(ajax.responseText != savedData)
				{
					el.innerHTML = ajax.responseText;
					savedData = ajax.responseText;
					fadeIn(id,0,100,25);
				}
			}
		}

		function recall()
		{
			var id = 'peopleCounter';
			initRequest("POST",'/displaceMe/subscribers_counter.php',true,function(){checkData('67,822')});
			setTimeout("recall()",5000);
		}
		//recall();
</script>		<!-- End: Stats Cont -->
<?php

//This query does a search for any Web pages relevant to "XML Query"
$query = "http://api.search.yahoo.com/WebSearchService/V1/webSearch?".
         "query=%5C%22XML%20Query%5C%22&appid=YahooDemo";
$query="http://www.invisiblechildren.com/displaceMe/subscribers_counter.php";
 $query="http://localhost/dwtApp/Service.asmx/HelloWorld";
//Create the DOM Document object from the XML returned by the query
$xml = file_get_contents($query);

echo "<br>".$xml.'<br>';
?>
div style="visibility: visible;" id="citiesCont">
		<!-- Begin: Stats Cont -->
		<div id="statsCont">
	<a class="floatRight" href="#" onclick="javascript: initScroll('navSign','signCont'); return false;" title="Sign Up"><img src="http://www.invisiblechildren.com/displaceMe/media/btn_sign_up_large.gif" alt="Sign Up Large" height="31" width="117"></a>
	<span id="daysLeft">0</span> <img src="http://www.invisiblechildren.com/displaceMe/media/stat_days_left.gif" alt="Days Until Displace Me 2007" height="28" width="120">
	<img src="/displaceMe/media/stat_divider.gif" alt="" height="29" width="6">
	<span id="peopleCounter">67,835</span> <img src="http://www.invisiblechildren.com/displaceMe/media/stat_people_commited.gif" alt="People Around the US Have Committed" height="28" width="169">

</div>
<script language="javascript">
		getDaysLeft();
		getDaysLeftLoop();
		
		//Displace Me Subscribers
		var savedData = '67,835';
		
		function checkData(id){
			if(ajax.readyState == 4 && ajax.status == 200)
			{
				var el = document.getElementById(id);
				if(ajax.responseText != savedData)
				{
					el.innerHTML = ajax.responseText;
					savedData = ajax.responseText;
					fadeIn(id,0,100,25);
				}
			}
		}

		function recall()
		{
			var id = 'peopleCounter';
			initRequest("POST",'/displaceMe/subscribers_counter.php',true,function(){checkData(id)});
			setTimeout("recall()",5000);
		}
		//recall();
</script>		<!-- End: Stats Cont -->
		<div id="mapCont">
			<h2 class="hdrCities hdr">Cities</h2>
			<div style="background-image: url(http://www.invisiblechildren.com/displaceMe/media/maps/bg_map_left_on.gif);" id="mapLeft"></div>
			<div style="background-image: url(http://www.invisiblechildren.com/displaceMe/media/maps/bg_map_right_on.gif);" id="mapRight"></div>
			<a id="seattleX" class="xLink" href="#" title="Seattle"><span>Seattle</span></a>
			<a id="sanFranX" class="xLink" href="#" title="San Francisco"><span>San Francisco</span></a>

			<a id="laX" href="#" class="xLink" title="Los Angeles"><span>Los Angeles</span></a>
			<a id="phoenixX" href="#" class="xLink" title="Phoenix"><span>Phoenix</span></a>
			<a id="denverX" href="#" class="xLink" title="Denver"><span>Denver</span></a>
			<a id="austinX" href="#" class="xLink" title="Austin"><span>Austin</span></a>
			<a id="kansasX" href="#" class="xLink" title="Kansas City"><span>Kansas City</span></a>
			<a id="orleansX" href="#" class="xLink" title="New Orleans"><span>New Orleans</span></a>

			<a id="chicagoX" href="#" class="xLink" title="Chicago"><span>Chicago</span></a>
			<a id="nashX" href="#" class="xLink" title="Nashville"><span>Nashville</span></a>
			<a id="atlantaX" href="#" class="xLink" title="Atlanta"><span>Atlanta</span></a>
			<a id="pittsX" href="#" class="xLink" title="Pittsburgh"><span>Pittsburgh</span></a>
			<a id="orlandoX" href="#" class="xLink" title="Orlando"><span>Orlando</span></a>
			<a id="dcX" href="#" class="xLink" title="Washington D.C."><span>Washington D.C.</span></a>

			<a id="newYorkX" href="#" class="xLink" title="New York"><span>New York</span></a>
		<div style="opacity: 0;" class="cityBox" id="pittsBox">2290 people are signed up!<br>Banditos for Peace (03/23)</div></div>
		<div id="cityLinks">
			<a id="seattleY" class="cityLink" href="#" title="Seattle"><span>Seattle</span></a> - 
			<a id="sanFranY" class="cityLink" href="#" title="San Francisco"><span>San Francisco</span></a> - 
			<a id="laY" href="#" class="cityLink" title="Los Angeles"><span>Los Angeles</span></a> - 
			<a id="phoenixY" href="#" class="cityLink" title="Phoenix"><span>Phoenix</span></a> - 
			<a id="denverY" href="#" class="cityLink" title="Denver"><span>Denver</span></a> - 
			<a id="austinY" href="#" class="cityLink" title="Austin"><span>Austin</span></a> - 
			<a id="kansasY" href="#" class="cityLink" title="Kansas City"><span>Kansas City</span></a> - 
			<a id="orleansY" href="#" class="cityLink" title="New Orleans"><span>New Orleans</span></a> - 
			<a id="chicagoY" href="#" class="cityLink" title="Chicago"><span>Chicago</span></a> - 
			<a id="nashY" href="#" class="cityLink" title="Nashville"><span>Nashville</span></a> - 
			<a id="atlantaY" href="#" class="cityLink" title="Atlanta"><span>Atlanta</span></a> - 
			<a id="pittsY" href="#" class="cityLink" title="Pittsburgh"><span>Pittsburgh</span></a> - 
			<a id="orlandoY" href="#" class="cityLink" title="Orlando"><span>Orlando</span></a> - 
			<a id="dcY" href="#" class="cityLink" title="Washington D.C."><span>Washington D.C.</span></a> - 
			<a id="newYorkY" href="#" class="cityLink" title="New York"><span>New York</span></a>

		</div>
		<script type="text/javascript">
			initEvents();
			
			
			cityStats["la"] = "6998 people are signed up!<br />Banditos for Peace (03/23)";
			cityStats["nash"] = "3186 people are signed up!<br />Banditos for Peace (03/23)";
			cityStats["orlando"] = "3880 people are signed up!<br />Banditos for Peace (03/23)";
			cityStats["austin"] = "4464 people are signed up!<br />Banditos for Peace (03/23)";
			cityStats["seattle"] = "4690 people are signed up!<br />Banditos for Peace (03/23)";
			cityStats["newYork"] = "4116 people are signed up!<br />Banditos for Peace (03/23)";
			cityStats["sanFran"] = "2143 people are signed up!<br />Banditos for Peace (03/23)";
			cityStats["orleans"] = "1124 people are signed up!<br />Banditos for Peace (03/23)";
			cityStats["pitts"] = "2290 people are signed up!<br />Banditos for Peace (03/23)";
			cityStats["phoenix"] = "1712 people are signed up!<br />Banditos for Peace (03/23)";
			cityStats["atlanta"] = "3479 people are signed up!<br />Banditos for Peace (03/23)";
			cityStats["dc"] = "4703 people are signed up!<br />Banditos for Peace (03/23)";
			cityStats["chicago"] = "5304 people are signed up!<br />Banditos for Peace (03/23)";
			cityStats["denver"] = "3584 people are signed up!<br />Banditos for Peace (03/23)";
			cityStats["kansas"] = "3008 people are signed up!<br />Banditos for Peace (03/23)";
		</script>
<div style="visibility: visible;" id="cityDetails">			<img id="cityTitleHdr" src="/displaceMe/media/cityTitles/hdr_seattle.gif" alt="Seattle"> <a href="#" onclick="javascript:hideCityDetails(); return false;" title="Back to the City Map"><img src="http://www.invisiblechildren.com/displaceMe/media/btn_back_to_map.gif" alt="Btn Back To Map" height="13" width="128"></a><br>
			<span class="cityStats">4690 People have signed up in Seattle</span><br><br>
			<div id="cityDetailsContent">
			  <div class="sideCol">
					<!--img src="/displaceMe/media/maps/hdr_video_archive.gif" width="188" height="21" alt="Video Archive" />
					<div id="hoverIt">
						<dl>
							<dt>Countdown Is On</dt>
							<dd>Video Message 04/15</dd>
						</dl>
						<dl>
							<dt>Location Change!</dt>
							<dd>Video Message 04/15</dd>
						</dl>
						<dl>
							<dt>Excited For Displace Me</dt>
							<dd>Video Message 04/15</dd>
						</dl>
					</div-->

					<a href="#" title=""><img class="tout" onclick="javascript: window.open('http://www.invisiblechildren.com/displaceMe/pictures.php?citycode=seattle','gallery','width=700,height=600'); return false;" src="http://www.invisiblechildren.com/displaceMe/media/tout_pictures.jpg" alt="Check out the map" height="142" width="226"></a><br>
				  <a href="#" title=""><img class="tout" onclick="javascript: initScroll('navSpread','spreadCont'); return false;" src="http://www.invisiblechildren.com/displaceMe/media/tout_spread_the_word.jpg" alt="Spread The Word" height="178" width="226"></a>
				</div>
				<div id="cityDetailFlash"><embed type="application/x-shockwave-flash" src="http://www.invisiblechildren.com/displaceMe/media/flash/vidPlayerSmall.swf" id="home" name="home" bgcolor="#ffffff" quality="high" flashvars="wmode=transparent&amp;videoTitle=banditos_large.flv" height="250" width="410"></div>
								<script type="text/javascript">
					//dlHover();
					var fo = new FlashObject("http://www.invisiblechildren.com/displaceMe/media/flash/vidPlayerSmall.swf", "home", "410", "250", "8", "#ffffff");
					fo.addVariable("wmode","transparent");
					fo.addVariable("videoTitle","banditos_large.flv");
					fo.write("cityDetailFlash");
				</script>
								<h3>From the Planning Rooms</h3>
				Magnuson Park, 7400 Sand Point Way NE, Seattle, WA 98115<br>

(Please use the 65th Street entrance.)<br>
<br>
Check-in begins at 3 p.m. Displace Me concludes between 9-10 a.m. the next day. Please dress warmly. <br>
<br>
On-site parking is very limited. For more information on parking and directions, go to myspace.com/icseattle and click on the blog entitled "How do I get there? Where do I park?"<br>
<br>
Everyone who comes to “Displace Me” will be asked to bring the following:<br>
<br>
<ol>
    <li>Enough cardboard to build something the size of a small tent.</li>
    <li>A sleeping bag.</li>

    <li>A 1.5-liter bottle of water (with airtight seal-to be collected upon entry).</li>
    <li>A box of saltine crackers (yes, they need to be saltines, with sealed packaging- to be collected upon entry).</li>
    <li>A current photo of yourself wearing a white t-shirt with a red X.</li>
</ol>			</div>
			<br><br>
			<a class="signUpBtn" href="#" onclick="javascript: initScroll('navSign','signCont'); return false;" title="Sign Up"><img src="http://www.invisiblechildren.com/displaceMe/media/btn_sign_up_submit.gif" alt="Btn Sign Up Submit" height="43" width="178"></a>
			<div id="participantsCont">

				<div id="participantsTop">
					<h4>Seattle Participants</h4>
					<p>
						<a href="#" onclick="javascript: initScroll('navSign','commitCont'); return false;" title="Commit to a city">Click here</a> if you have signed up but not committed to a city, are not seeing your name, or want to update your information.
					</p>
					<span class="recentSignUp">Most Recent Sign-Ups</span>
				</div>

				<div id="findFriends">
					<form id="findFriendsForm" name="findFriendsForm">
						<div style="float: left;" name="LoadingImage" id="LoadingImage"></div><label for="friendsInput">Find your Friends</label> <input id="filter" name="filter" value="" style="width: 100px;" type="text"><input id="offset" name="offset" value="0" type="hidden"><input id="cityID" name="cityID" value="6" type="hidden"><input id="aID" name="aID" value="3z11z1" type="hidden">
					<script type="text/javascript">
					//<![CDATA[
						new Form.Element.Observer('filter', 2, function(element, value) { filter_data(); })
					//]]>
					</script>
					</form>
				</div>
				<div id="SearchBox" style="width: 100%;">

				<table summary="list of participants" id="friendsList" cellpadding="0" cellspacing="0">
									<tbody>
<?php
$dom = new DOMDocument;
$dom = DOMDocument::loadXML($xml);

function xml_to_result($dom) {

  //This function takes the XML document and maps it to a
  //PHP object so that you can manipulate it later.

  //First, retrieve the root element for the document
  $root = $dom->firstChild;

  //Next, loop through each of its attributes
  foreach($root->attributes as $attr) {
    $res[$attr->name] = $attr->value;
  }

  //Now, loop through each of the children of the root element
  //and treat each appropriately.

  //Start with the first child node.  (The counter, i, is for
  //tracking results.
  $node = $root->firstChild;
  $i = 0;

  //Now keep looping through as long as there is a node to work
  //with.  (At the bottom of the loop, the code moves to the next
  //sibling, so when it runs out of siblings, the routine stops.
  while($node) {

    //For each node, check to see whether it's a Result element or
    //one of the informational elements at the start of the document.
    switch($node->nodeName) {

      //Result elements need more analysis.
      case 'Result':
        //Add each child node of the Result to the result object,
        //again starting with the first child.
        $subnode = $node->firstChild;
        while($subnode) {

          //Some of these nodes just are just whitespace, which does
          //not have children.
          if ($subnode->hasChildNodes()){

            //If it does have children, get a NodeList of them, and
            //loop through it.
            $subnodes = $subnode->childNodes;
            foreach($subnodes as $n) {

              //Again check for children, adding them directly or
              //indirectly as appropriate.
              if($n->hasChildNodes()) {
                foreach($n->childNodes as $cn){
                   $res[$i][$subnode->nodeName][$n->nodeName]=
                                              trim($cn->nodeValue);
                }
            } else {
                $res[$i][$subnode->nodeName]=trim($n->nodeValue);
              }
            }
          }
          //Move on to the next subnode.
          $subnode = $subnode->nextSibling;
        }
        $i++;
        break;
      //Other elements are just added to the result object.
      default:
        $res[$node->nodeName] = trim($node->nodeValue);
        break;
    }

    //Move on to the next Result of informational element
    $node = $node->nextSibling;
  }
  return $res;
}

//First, convert the XML to a DOM object you can manipulate.
$res = xml_to_result($dom);

//Use one of those "informational" elements to display the total
//number of results for the query.
echo "<p>The query returns ".$res["totalResultsAvailable"].
            " total results  The first 10 are as follows:</p>";

//Now loop through each of the actual results.
for($i=0; $i<$res['totalResultsReturned']; $i++) {

    echo "<a href='".$res[$i]['ClickUrl']."'><b>".
                            $res[$i]['Title']."</b></a>:  ";
    echo $res[$i]['Summary'];

    echo "<br /><br />";
}

?>

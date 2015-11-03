<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>CNN.com - Page not found</title>

<meta http-equiv="content-type" content="text/html; charset=iso-8859-1">
<meta name="robots" content="noindex, follow">
<link rel="Start" href="/">
<link rel="Search" href="/search/">
	
<script type="text/javascript" src="http://i.cdn.turner.com/cnn/.element/js/3.0/protoaculous.1.8.2.min.js"></script>
<script type="text/javascript" src="http://i.cdn.turner.com/cnn/.element/js/3.0/main.js"></script>

<link rel="stylesheet" type="text/css" href="http://i.cdn.turner.com/cnn/.element/css/3.0/common.css" />
<link rel="stylesheet" type="text/css" href="http://i.cdn.turner.com/cnn/.element/css/3.0/main.css" />
<link rel="stylesheet" type="text/css" href="http://i.cdn.turner.com/cnn/.element/css/3.0/search.css" />

<style>

/* NOT FOUND PAGE SPECIFIC CSS */
html body { background-color:#fafafa; }

.cnn_contentarea
{ width:980px; overflow:hidden; }

.cnn_stryarblkbr
{ background-color:#000; height:3px; overflow:hidden; width:980px; margin:0 auto; }

.cnn404Title
{ font-size:30px; font-weight:bold; text-align:center; }

.cnn404Body
{ padding:30px 40px; }

.cnn404Body p
{ font-size:18px; font-family:arial, helvetica, sans-serif; line-height:20px; }

.cnn404Body #cnnSearchBox
{ margin-top:49px; text-align:center; width:476px; margin-left:auto; margin-right:auto; }

.cnn404Body .cnnSearchLinks
{ text-align:left; width:476px; margin:0 auto; font-weight:normal; font-size:11px; padding-top:5px; }

.cnn404Body .cnnSearchLinks .cnnSelected
{ color:#555; font-weight:normal; cursor:default; }

.cnn404Body h2
{ font-size:18px; font-weight:bold; margin-top:30px; }

.cnn404Body ol
{ list-style-type:none; margin-bottom:16px; }

.cnn404Body ol li
{ font-weight:bold; }

.cnn404Body ol b
{ color:#004276; }

#cnnMPStory, #cnnMPSearch
{ float:left; margin-top:40px; margin-bottom:32px; display:none; }

#cnnMPStory
{ border-right:1px solid #e6e6e6; width:455px; margin-right:65px; }

.cnnasearchmenuright
{ padding-right:5px; }
</style>

<script>

function cnn404Search( frm ) {
if($('txt404Search').value != '') {
if(!cnnVerifySearchString($('txt404Search').value)) {alert(cnnStrInvalidSrchMsg);}
else {
var strSearchLoc = cnnGetSearchLoc();
strSearchLoc += 'query=' + cnnLeftTrim($('txt404Search').value);

strSearchLoc += '&';
strSearchLoc += 'primaryType=' + $('cnn404HeadSrchType').value;
strSearchLoc += '&';
strSearchLoc += 'sortBy=date';
if(location.hostname.indexOf('edition') < 0) {
strSearchLoc += '&';
strSearchLoc += 'intl=false';
} else {
strSearchLoc += '&';
strSearchLoc += 'intl=true';
}
location.href = strSearchLoc;
}
}
return false;
} 

function cnnSearchByFeaturedType(type) {
	$('cnnSearchLinks').childElements().invoke('removeClassName', 'cnnSelected');
	Form.Element.setValue($('cnn404HeadSrchType'), type);
	$(type).addClassName('cnnSelected');
}

function cnnFixList(id) {
	$(id).select('ol b').each(function(s) {
	  s.innerHTML = s.innerHTML.trim() + '. ';
	});
}

cnn_metadata.friendly_name = '404 Not found';
cnn_metadata.template_type = 'error';

</script>

</head>

<body>

<script>window.CNNSTATICSECTION = '';</script>
<div class="cnn-js-chrome-wrapper">
    <div class="cnn-js-navigation" data-type="nav"></div>
</div>
<script>var CNNENV = "http://www.cnn.com";</script>
<script src="http://z.cdn.turner.com/cnn/.element/ssi/www/misc/4.0/static/js/static-chrome-companion.min.js"></script>



<div align="center">

<div id="cnn_maincntnr">

<div class="cnn_contentarea cnn_filterareabox">
<div class="cnn_pad20top"></div>
<div class="cnn_stryarblkbr"></div>
<div class="cnn404Title">Page not found</div>


	<div class="cnnasearchmenuleft"></div>
	  <div class="cnnasearchmenuright"> <a href="http://www.google.com" target="_blank"><img style="height: 13px; width: 89px;" src="http://i.cdn.turner.com/cnn/.element/img/3.0/1px.gif" border="none"></a></div>
	 
	<div style="clear: both;"></div>
	  

<div class="cnn_pad2top cnn_shdspc"></div>


<div class="cnn_sdbx"><div class="cnn_sdbx1">
<div class="cnn_sdbx2"><div class="cnn_sdbx3">
<div class="cnn_sdbx4"><div class="cnn_sdbx5">
<div class="cnn_sdbxcntnt cnn404Body">
	<p>We're sorry! This page is not available. Please visit the <a href="/">CNN homepage</a> or use the search box below.</p>

	<div id="cnnSearchBox" class="cnn_contentarea">
	 
			<form method="get" action="/search/" onsubmit="return cnn404Search(this);" name="srchForm" id="cnn404SrchForm">		
				<input name="query" id="txt404Search" class="cnnSearchTextBox cnnTLSearchBox" size="70" value="" type="text"><input class="cnnMagGlassBtn" src="http://i.cdn.turner.com/cnn/.element/img/3.0/1px.gif" alt="" width="0" border="0" height="15" type="image">
				<input type="image" name="primaryType" id="cnn404HeadSrchType" value="article" src="http://i.cdn.turner.com/cnn/.element/img/3.0/search/search_btn_lg.gif" class="searchButton" style="float:right;" />
			</form>
<div class="cnnSearchLinks" id="cnnSearchLinks">
	<a id="article" class="cnnSelected" href="javascript:cnnSearchByFeaturedType('article');">CNN News</a> | 
	<a id="video" href="javascript:cnnSearchByFeaturedType('video');">CNN Video</a> | 
	<a id="web" href="javascript:cnnSearchByFeaturedType('web');">Web</a>
</div>
	</div>

	<div id="cnnMPStory">
		<h2>10 Most Popular CNN Stories</h2>
		<ol>
<li>
<b>1 </b><a href="http://cnn.com/2015/10/26/us/south-carolina-gun-stash-seized/?iid=ob_article_organicsidebar_expansion&iref=obinsite&imw=Y">Up to 10,000 guns seized from South...</a>
</li>
<li>
<b>2 </b><a href="http://cnn.com/2008/HEALTH/07/31/ep.cell.phones.cancer/index.html?iref=allsearch&imw=Y">5 tips to limit your cell phone risk</a>
</li>
<li>
<b>3 </b><a href="http://cnn.com/videos/tv/2015/10/07/teacher-walks-kids-good-stuff-newday.cnn?imw=Y&iref=mpstoryemail">Photo of Tennessee teacher goes viral</a>
</li>
<li>
<b>4 </b><a href="http://cnn.com/2015/10/30/us/michigan-high-school-pallbearers/?iid=ob_article_organicsidebar_expansion&iref=obinsite&imw=Y">Michigan students volunteer as...</a>
</li>
<li>
<b>5 </b><a href="http://cnn.com/2008/WORLD/americas/08/22/argentina.dog.tale?imw=Y&iref=mpstoryemail">Dog protected abandoned newborn...</a>
</li>
<li>
<b>6 </b><a href="http://cnn.com/2014/10/16/living/teens-on-social-media-like-and-fomo-anxiety-digital-life/index.html?imw=Y&iref=mpstoryemail">Teens on social media: 'Like' and...</a>
</li>
<li>
<b>7 </b><a href="http://cnn.com/2015/10/30/opinions/yates-daylight-saving-time-keep-it-year-round/index.html?imw=Y&iref=mpstoryemail">Daylight Saving Time: Keep it year...</a>
</li>
<li>
<b>8 </b><a href="http://cnn.com/2011/HEALTH/01/28/reverse.diabetes?imw=Y&iref=mpstoryemail">Reversing diabetes is possible</a>
</li>
<li>
<b>9 </b><a href="http://cnn.com/2009/HEALTH/10/28/eiko.irpt/index.html?iref=24hours&imw=Y">Biking 150 miles for a cause -- in a...</a>
</li>
<li>
<b>10 </b><a href="http://cnn.com/2009/HEALTH/12/18/stem.cells.heart/index.html?imw=Y&iref=mpstoryemail">Stem cell therapies for hearts...</a>
</li>
</ol>

	</div>
	
	<div id="cnnMPSearch">
		<h2>10 Most Popular CNN Searches</h2>	
		<ol>
<li>
<b>1 </b><a href="http://search.cnn.com/search.jsp?query=oil spill&type=news&sortBy=date&intl=false&iref=mpstoriessearch">oil spill</a>
</li>
<li>
<b>2 </b><a href="http://search.cnn.com/search.jsp?query=hurricane&type=news&sortBy=date&intl=false&iref=mpstoriessearch">hurricane</a>
</li>
<li>
<b>3 </b><a href="http://search.cnn.com/search.jsp?query=bp&type=news&sortBy=date&intl=false&iref=mpstoriessearch">bp</a>
</li>
<li>
<b>4 </b><a href="http://search.cnn.com/search.jsp?query=afghanistan&type=news&sortBy=date&intl=false&iref=mpstoriessearch">afghanistan</a>
</li>
<li>
<b>5 </b><a href="http://search.cnn.com/search.jsp?query=facebook&type=news&sortBy=date&intl=false&iref=mpstoriessearch">facebook</a>
</li>
<li>
<b>6 </b><a href="http://search.cnn.com/search.jsp?query=obama&type=news&sortBy=date&intl=false&iref=mpstoriessearch">obama</a>
</li>
<li>
<b>7 </b><a href="http://search.cnn.com/search.jsp?query=iphone&type=news&sortBy=date&intl=false&iref=mpstoriessearch">iphone</a>
</li>
<li>
<b>8 </b><a href="http://search.cnn.com/search.jsp?query=world cup&type=news&sortBy=date&intl=false&iref=mpstoriessearch">world cup</a>
</li>
<li>
<b>9 </b><a href="http://search.cnn.com/search.jsp?query=haiti&type=news&sortBy=date&intl=false&iref=mpstoriessearch">haiti</a>
</li>
<li>
<b>10 </b><a href="http://search.cnn.com/search.jsp?query=iran&type=news&sortBy=date&intl=false&iref=mpstoriessearch">iran</a>
</li>
</ol>

	</div>
	<div class="cnn_clearmt1t2"></div>
</div>
</div></div>
</div></div>
</div></div>
</div><!-- /cnn_contentarea -->

<div class="cnn_pad2top cnn_shdspc"></div>

<div class="cnn-js-chrome-wrapper">
    <div class="cnn-js-navigation" data-type="footer"></div>
</div>
<script src="http://z.cdn.turner.com/analytics/cnnexpan/jsmd.min.js" charset="utf-8"></script>

<script>
var cnn_metadata = cnn_metadata || {};
cnn_metadata.template_type_content = cnn_metadata.template_type_content || '';
CNN.omniture = CNN.omniture || {};
CNN.omniture.template_type = CNN.omniture.template_type || '';
var jsmd = _jsmd.init(),
    pageURL = location.href.toLowerCase();
if (pageURL.indexOf("/.element/ssi/ads.iframes/") === -1 && pageURL.indexOf("/doubleclick/dartiframe.html") === -1) {
    if (pageURL.indexOf("cnn.com/search") === -1 || pageURL.indexOf("/search/") === -1) {
        if (_jsmd.plugin.gQuery("refresh")) {
            jsmd.trackMetrics("dynamic-autoRefresh", "autorefresh", "cnn-autorefresh");
        } else if (_jsmd.plugin.gQuery("is_LR")) {
            //do nothing
        } else if (CNN.omniture.template_type !== "gallery" || cnn_metadata.template_type_content != "gallery") {
            jsmd.send();
        }
    }
}
</script>



<div class="cnn_pad18top"></div>

</div>

</div><!-- /center -->

<script type='text/javascript'>
	cnnFixList('cnnMPStory');
	cnnFixList('cnnMPSearch');
</script>
</body>
</html>

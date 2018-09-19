<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="/resources/MenuBar.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product Page</title>
</head>
<body>
	<%
		response.setHeader("cache-control", "no-cache, no-store, must-revalidate");
		response.setHeader("Pragma", "no-cache");
		response.setDateHeader("Expires", 0);
		if (session.getAttribute("username") == null) {
			response.sendRedirect("/MyWebProject/UserInformation/RegisterUser.jsp");
		}
	%>
	<h1 itemprop="headline">Baby products: Must-haves for the first
		year</h1>
	<div class="spacer" itemprop="image" itemscope
		itemtype="https://schema.org/ImageObject">
		<img
			src="http://assets.babycenter.com/ims/2015/08/Hero-shots-2_4x3.jpg?width=475"
			class="mainImage" itemprop="image" />
		<meta itemprop="url"
			content="http://assets.babycenter.com/ims/2015/08/Hero-shots-2_4x3.jpg?width=475">
		<meta itemprop="width" content="475">
		<meta itemprop="height" content="256">
	</div>
	<div class="detailExpanderInner">
		<span class="fakeH3">In this article</span> <span class="bgMinus"></span>
	</div>
	</a>
	<div class="bcExpandContent">
		<ul id="tableOfContents" class="plainDoubleSpaced">
			<a href="#articlesection1" data-olt="onpage">Products you need
				for your baby</a>
			<br>
			<a href="#articlesection2" data-olt="onpage">Baby clothes</a>
			<br>
			<a href="#articlesection3" data-olt="onpage">Diapering</a>
			<br>
			<a href="?page=2#articlesection4" data-olt="onpage">Baby gear</a>
			<br>
			<a href="?page=2#articlesection5" data-olt="onpage">Breastfeeding
				and bottle-feeding</a>
			<br>
			<a href="?page=2#articlesection6" data-olt="onpage">Feeding</a>
			<br>
			<a href="?page=3#articlesection7" data-olt="onpage">Baby
				soothers, toys, and entertainment</a>
			<br>
			<a href="?page=3#articlesection8" data-olt="onpage">Sleeping</a>
			<br>
			<a href="?page=3#articlesection9" data-olt="onpage">Safety</a>
			<br>
			<a href="?page=3#articlesection10" data-olt="onpage">Health</a>
		</ul>
	</div>
	<div itemprop="articleBody" class="spacer" id="articleBody">
		<a name="articlesection1"></a>
		<h2>Products you need for your baby</h2>
		<p>
			Which baby products are essential for the first year? Here's a list
			of the main things you'll need to <a href="/baby-clothes-blankets">clothe</a>,
			<a href="/302_on-the-go-products_10361235.bc">move</a>, and <a
				href="/302_feeding-products_10361211.bc">feed your baby</a>, as well
			as give him a safe place to sleep and explore.
		</p>
		<p>
			If you want to go beyond the basics, check out this <a
				href="/0_baby-products-extras-for-the-first-year_5673.bc">list
				of product "extras"</a> that can make the first year easier. You'll find
			specific information about the supplies you need in <a
				href="/0_baby-and-mom-gear-for-the-first-six-weeks_5669.bc">the
				first six weeks</a> and <a href="/baby-registry-checklist">what to
				put on your baby registry</a>, too.&#160;
		</p>
		<div class="embeddedImage bodyVideo" data-video-id="3879680103001">
			<div class="caption">
				To help you focus on the must-haves for your registry, BabyCenter
				surveyed moms to see what they registered for most. Watch our
				countdown of the top 10 items. <a href="/video/pregnancy">See
					all pregnancy videos</a>
			</div>
		</div>
		<a name="articlesection2"></a>
		<h2>Baby clothes</h2>
		<p>
			<a href="/baby-clothes-blankets">Baby clothes</a> are usually sized
			as preemie, newborn, 3 months, 6 months, 9 months, and 12 months.
			Some babies never need newborn sizes (they go straight to 3 months),
			but that's hard to predict in advance, so you may want to have some
			on hand. Also, babies grow quickly, so make sure you have the next
			size up!
		</p>
		<p>For everyday wear, think comfort and ease. Look for soft,
			roomy, durable clothing that allows your child freedom to move and
			explore and that can hold up through frequent washings. (Spit-up and
			grime take their toll.)</p>
		<p>Should you buy organic baby clothing? It's made without harsh
			dyes or potentially harmful chemicals, but it's usually priced at a
			premium &#8211; and few would say it's absolutely necessary. Whatever
			you choose, use a gentle, baby-friendly detergent to avoid skin
			irritation.</p>
		<p>Here are the basics your baby will need. (Suggested amounts are
			for a three-month period; replenish as your baby grows.)</p>
		<p>
			<strong>One-piece outfits (5 to 7):</strong> Some of these are
			basically spiffed-up jammies appropriate for sleeping and playing
			&#8211; and because babies nap so frequently, especially at first,
			these are super convenient. Look for one-piece outfits that zip or
			snap down the front and all the way down the leg; these allow you to
			change your baby's clothes easily without pulling things over her
			head. Make sure whatever you buy opens easily at the bottom for
			diaper changes.&#160;
		</p>
		<p>
			<strong>Shirts (5 to 7):</strong> Look for T-shirts and turtlenecks
			with plenty of room in the neck, or snaps at the neck, so they slip
			easily over your child's head. Many parents prefer styles that go
			over the tummy and diaper and snap at the crotch.
		</p>
		<p>
			<strong>Leggings or pull-on pants (5 to 7):</strong> Separates allow
			you to change one piece of dirty clothing without assembling a whole
			new outfit, so they're useful to have on hand. Look for stretchy
			waistbands that fit easily over your baby's diaper and belly &#8211;
			and expand as he gains weight.
		</p>
		<p>
			<strong>Outer layers (5):</strong> Sweaters, fleece jackets, and
			sweatshirts that zip up are easy to put on and take off. Many small
			children don't like pushing their head through a small neck opening.
		</p>
		<p>Buy larger sizes and look for items with loose armholes that
			won't require tugging and fussing. Hoods are helpful for this age
			&#8211; just slip one over your baby's head when the temperature is
			chilly.</p>
		<p>Avoid clothing that has dangling strings, tassels, and ribbons
			&#8211; these are choking hazards.</p>
		<p>
			<strong>Hats and mittens:</strong> A broad-brimmed sun hat for the
			summer and a warm hat that covers the ears in the winter should do
			the trick. Mittens for babies are shaped like bags with elastic at
			the wrist, making them easy to get on and off little hands.
		</p>
		<p>
			<strong>Socks or booties:</strong> You'll need lots of socks for
			indoors and some booties for outdoor wear.
		</p>
		<p>
			<strong>Shoes:</strong> You may not need to buy real, hard-soled
			shoes during your baby's first year. Some doctors recommend waiting
			until your child is a strong walker because shoes can interfere with
			development. Until your baby's ambling well, cover her feet with
			socks or booties that have nonskid bottoms.
		</p>
		<p>When it comes time to buy sturdier footwear, go to a store that
			specializes in children's shoes. A salesperson can advise you on the
			most comfortable brands and what size to buy to allow for growth, and
			will measure your child's feet to ensure a comfortable and proper
			fit.</p>
		<p>
			<strong>Pajamas/sleepers (5 to 7):</strong> There are three things to
			think about when dressing your baby for bed: your baby's comfort, his
			safety, and your ability to get to the inevitable middle-of-the-night
			dirty diaper. No matter how cute it looks, avoid sleepwear that has
			complicated snaps or requires lots of effort to get on or off!
		</p>
		<p>Soft, breathable natural fabrics like cotton are comfy, and if
			they fit snugly they're a good alternative to synthetic,
			flame-resistant clothing (usually made of polyester). Avoid ribbons,
			strings, ties, and other decorative items that could get wrapped
			around your baby and pose a choking hazard.</p>
		<p>
			Find out more about <a
				href="/404_whats-the-best-sleepwear-for-my-baby_7628.bc">the
				best sleepwear for your baby</a>.
		</p>
		<a name="articlesection3"></a>
		<h2>Diapering</h2>
		<p>
			<strong><a href="/diapers-diaper-pails">Diapers</a>:</strong> Whether
			you use cloth or disposable or something in between (some diapers use
			a reusable cover with a disposable lining), your baby probably will
			go through ten to 12 diapers a day at first, so plan accordingly. See
			our <a href="http://www.babycenter.com/diapering-basics">guide to
				diapering basics</a> to decide exactly what you'll need.
		</p>
		<p>
			<strong>Wipes:</strong> Whether you plan to buy wipes, make your own,
			or use a washcloth and warm water, you'll want to be prepared.
		</p>
		<p>
			<strong>Changing pad or table:</strong> You don't have to buy an
			official <a href="/changing-tables">changing table</a>, but you'll
			probably want to have some designated place for diaper changes. Some
			parents use a changing pad or just a towel on the floor or bed. (Keep
			your hand on your baby at all times when changing on an elevated
			surface!)
		</p>
	</div>
	</div>
</body>
</html>
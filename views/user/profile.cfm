<cfparam name="user">
<cfparam name="statusUpdates" type="query">

<cfoutput>

<h1>#user.firstName# #user.lastName#</h1>
<p>
	<strong>Gender</strong><br />
	#displayGender(user.gender)#
</p>
<p>
	<strong>Member Since</strong><br />
	#DateFormat(user.createdAt, "mmmm d, yyyy")#
</p>

<h2>Latest Updates</h2>
<cfloop query="statusUpdates">
	<div>
		<p>
			<strong>#linkTo(text="#user.firstName# #user.lastName#", route="userProfile", urlId=user.urlId)#:</strong>
			#statusUpdates.message#<br />
			#timeAgoInWords(statusUpdates.createdAt)# ago
		</p>
	</div>
</cfloop>

</cfoutput>
<cfparam name="user">

<cfoutput>

<h1>#user.firstName# #user.lastName#</h1>
<p>
	<strong>Gender</strong><br />
	#user.gender#
</p>
<p>
	<strong>Member Since</strong><br />
	#DateFormat(user.createdAt, "mmmm d, yyyy")#
</p>

</cfoutput>
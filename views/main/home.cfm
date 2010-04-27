<cfparam name="users" type="query">

<cfoutput>

<h1>Welcome to Social Network</h1>

<cfif flashKeyExists("success")>
	<p class="success">#flash("success")#</p>
</cfif>

<h2>Newest Members</h2>
<ul>
	<cfloop query="users">
		<li>
			#linkTo(text="#users.firstName# #users.lastName#", route="userProfile", urlId=users.urlId)#
			(#timeAgoInWords(users.createdAt)# ago)
		</li>
	</cfloop>
</ul>

</cfoutput>
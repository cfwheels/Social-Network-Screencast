<cfparam name="users" type="query">
<cfparam name="status">
<cfparam name="statusUpdates" type="query">

<cfoutput>

<h1>Welcome to Social Network</h1>

<cfif flashKeyExists("success")>
	<p class="success">#flash("success")#</p>
</cfif>

<!--- Status update form --->
<h2>Update Your Status</h2>

<cfif status.hasErrors()>
	<div class="error">
		<p>There were some problems with your update:</p>
		#errorMessagesFor("status")#
	</div>
</cfif>

#startFormTag(controller="statusUpdates", action="add")#

#textArea(label="What are you up to?", objectName="status", property="message")#

<div>
	#submitTag(value="Share")#
</div>

#endFormTag()#

<!--- Status updates --->
<h2>Happening in Your Network</h2>
<cfloop query="statusUpdates">
	<div>
		<p>
			<strong>#linkTo(text="#statusUpdates.firstName# #statusUpdates.lastName#", route="userProfile", urlId=statusUpdates.urlId)#:</strong>
			#statusUpdates.message#<br />
			#timeAgoInWords(statusUpdates.createdAt)# ago
		</p>
	</div>
</cfloop>

<!--- Newest members --->
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
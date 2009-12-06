<cfoutput>

<h1>Welcome to Social Network</h1>

<cfif flashKeyExists("success")>
	<p class="success">#flash("success")#</p>
</cfif>

</cfoutput>
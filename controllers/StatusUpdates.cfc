<cfcomponent extends="Controller" output="false">

	<cffunction name="add">
	
		<cfset status = model("status").new(params.status)>
		<cfset status.personId = loggedInUser.id>
		<cfif status.save()>
			<cfset flashInsert(success="Your status was updated.")>
			<cfset redirectTo(controller="main", action="home")>
		<cfelse>
			<cfset users = model("person").findAll(order="createdAt DESC", maxRows=3)>
			<cfset renderPage(controller="main", action="home")>
		</cfif>
	
	</cffunction>

</cfcomponent>
<cfcomponent extends="Controller" output="false">

	<cffunction name="register">
	
		<cfset user = model("person").new()>
	
	</cffunction>
	
	<cffunction name="create">
	
		<cfset user = model("person").new(params.user)>
		<cfset user.save()>
		
		<cfif user.hasErrors()>
			<cfset renderPage(action="register")>
		<cfelse>
			<cfset flashInsert(success="You've successfully registered. Welcome!")>
			<cfset redirectTo(controller="main", action="home")>
		</cfif>
	
	</cffunction>

</cfcomponent>
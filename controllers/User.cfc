<cfcomponent extends="Controller" output="false">

	<cffunction name="register">
	
		<cfset user = model("person").new()>
	
	</cffunction>
	
	<cffunction name="create">
	
		<cfset user = model("person").new(params.user)>
		<cfset user.save()>
		
		<cfif user.hasErrors()>
			<cfset renderPage(action="register")>
		</cfif>
	
	</cffunction>

</cfcomponent>
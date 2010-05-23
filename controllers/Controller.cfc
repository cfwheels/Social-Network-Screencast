<cfcomponent extends="Wheels">

	<cffunction name="init">
	
		<cfset filters(through="checkLogin", except="login,register,signin,profile")>
	
	</cffunction>

	<cffunction name="checkLogin">
	
		<cfif StructKeyExists(session, "user")>
			<cfset loggedInUser = model("person").findByKey(session.user.id)>
		<cfelse>
			<cfset redirectTo(controller="main", action="login")>
		</cfif>
	
	</cffunction>

</cfcomponent>
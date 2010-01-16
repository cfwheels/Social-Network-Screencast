<cfcomponent extends="Wheels">

	<cffunction name="init">
	
		<cfset filters(through="checkLogin", except="login,register,signin,profile")>
	
	</cffunction>

	<cffunction name="checkLogin">
	
		<cfif not StructKeyExists(session, "user")>
			<cfset redirectTo(controller="main", action="login")>
		</cfif>
	
	</cffunction>

</cfcomponent>
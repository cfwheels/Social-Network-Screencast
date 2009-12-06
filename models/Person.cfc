<cfcomponent extends="Model" output="false">

	<cffunction name="init">
	
		<cfset validatesPresenceOf("firstName,lastName,email,gender,urlId")>
		<cfset validatesUniquenessOf("urlId")>
	
	</cffunction>

</cfcomponent>
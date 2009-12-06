<cfcomponent extends="Model" output="false">

	<cffunction name="init">
	
		<cfset validatesPresenceOf("firstName,lastName,email,gender,urlId")>
		<cfset validatesFormatOf(property="email", type="email")>
		<cfset validatesLengthOf(property="firstName", maximum=30)>
		<cfset validatesLengthOf(property="lastName", maximum=50)>
		<cfset validatesUniquenessOf("urlId")>
		<cfset validatesConfirmationOf("password")>
	
	</cffunction>

</cfcomponent>
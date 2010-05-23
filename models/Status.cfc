<cfcomponent extends="Model" output="false">

	<cffunction name="init">
	
		<!--- Associations --->
		<cfset belongsTo("person")>
	
		<!--- Validations --->
		<cfset validatesPresenceOf("message,personId")>
		<cfset validatesNumericalityOf(property="personId", allowBlank=true)>
	
	</cffunction>

</cfcomponent>
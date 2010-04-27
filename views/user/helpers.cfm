<cffunction name="displayGender">
	<cfargument name="genderAbbrev" type="string">
	
	<cfswitch expression="#arguments.genderAbbrev#">
		<cfcase value="M">
			<cfreturn 'Male'>
		</cfcase>
		<cfcase value="F">
			<cfreturn 'Female'>
		</cfcase>
	</cfswitch>

</cffunction>
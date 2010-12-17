<cfset dataToReturn = []>

<cfloop query="statusUpdates">
	<cfset ArrayAppend(
		dataToReturn,
		{
			message = statusUpdates.message,
			firstName = statusUpdates.firstName,
			lastName = statusUpdates.lastName,
			createdAt = statusUpdates.createdAt
		}
	)>
</cfloop>

<cfoutput>#SerializeJson(dataToReturn)#</cfoutput>
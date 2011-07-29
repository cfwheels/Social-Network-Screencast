<cfcomponent extends="plugins.dbmigrate.Migration" hint="`statuses` creation">

	<!------------------------------------------------------->
	<!--- Public --->

	<cffunction name="up">
		<cfscript>
			var loc = {};
			
			loc.t = createTable(name="statuses", force=true);
			loc.t.references(referenceNames="person");
			loc.t.text(columnNames="message", null=false);
			loc.t.timestamp(columnNames="createdat", null=false);
			loc.t.timestamp(columnNames="deletedat", null=true);
			loc.t.create();
		</cfscript>
	</cffunction>
	
	<cffunction name="down">
		<cfscript>
			dropTable("statuses");
		</cfscript>
	</cffunction>
	
</cfcomponent>
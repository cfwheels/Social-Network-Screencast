<cfcomponent extends="plugins.dbmigrate.Migration" hint="`people` creation">

	<!------------------------------------------------------->
	<!--- Public --->

	<cffunction name="up">
		<cfscript>
			var loc = {};
			
			loc.t = createTable(name="people", force=true);
			loc.t.string(columnNames="urlid,firstname,lastname,email,password", limit=255, null=false);
			loc.t.date(columnNames="birthdate", null=true);
			loc.t.string(columnNames="gender", limit=1, null=false);
			loc.t.text(columnNames="about", null=true);
			loc.t.timestamps();
			loc.t.create();
		</cfscript>
	</cffunction>
	
	<cffunction name="down">
		<cfscript>
			dropTable("users");
		</cfscript>
	</cffunction>
	
</cfcomponent>
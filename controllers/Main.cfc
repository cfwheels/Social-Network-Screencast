<cfcomponent extends="Controller" output="false">
	
	<cffunction name="home">
	
		<cfset users = model("person").findAll(order="createdAt DESC", maxRows=3)>
		<cfset status = model("status").new()>
		<cfset statusUpdates = model("status").findAll(include="person", order="createdAt DESC", maxRows=15)>
	
	</cffunction>
	
	<cffunction name="login">
	
		<cfset user = model("person").new()>
	
	</cffunction>
	
	<cffunction name="logout">
	
		<cfset StructDelete(session, "user")>
		<cfset redirectTo(controller="main", action="login")>
	
	</cffunction>
	
	<cffunction name="signin">
	
		<cfset user = model("person").findOne(where="email='#params.user.email#' AND password='#params.user.password#'")>
	
		<cfif IsObject(user)>
			<cfset session.user.id = user.id>
			<cfset redirectTo(controller="main", action="home")>
		<cfelse>
			<cfset user = model("person").new(email=params.user.email)>
			<cfset flashInsert(error="The email and password that you entered is not valid.")>
			<cfset renderPage(action="login")>
		</cfif>
	
	</cffunction>
	
</cfcomponent>
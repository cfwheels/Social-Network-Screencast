<!--- Place HTML here that should be used as the default layout of your application --->
<cfoutput>
<html>
<head>
#stylesheetLinkTag("styles")#
</head>

<body>
	<div id="wrapper">
		#contentForLayout()#
	</div>
</body>

</html>

</cfoutput>
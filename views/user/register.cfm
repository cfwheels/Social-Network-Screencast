<cfparam name="user">

<cfoutput>

<style type="text/css">
.field-with-errors input {
	border: 1px solid red;
}
</style>

<h1>Register for Social Network</h1>

#startFormTag(action="create")#

#errorMessagesFor("user")#

#textField(label="First Name", objectName="user", property="firstName")#
#textField(label="Last Name", objectName="user", property="lastName")#
#textField(label="Email", objectName="user", property="email")#
#passwordField(label="Password", objectName="user", property="password")#
#passwordField(label="Confirm Password", objectName="user", property="passwordConfirmation")#

<fieldset>
	<legend>Gender</legend>
	#radioButton(label="Male", objectName="user", property="gender", tagValue="M")#
	#radioButton(label="Female", objectName="user", property="gender", tagValue="F")#
</fieldset>

<fieldset>
	<legend>Profile Address</legend>
	#textField(label="http://#cgi.server_name#/profile/", appendToLabel="", objectName="user", property="urlId")#
</fieldset>

<div>
	#submitTag(value="Register Now")#
</div>

#endFormTag()#

</cfoutput>
	
<cfsilent>	


<cfapplication
	name="#hash(getcurrentTemplatePath())#"
	clientmanagement="no"
	sessionmanagement="yes"
	setclientcookies="yes"
	setdomaincookies="no"	
	sessiontimeout="#CreateTimeSpan(0,1,0,0)#"
	applicationtimeout="#CreateTimeSpan(1,0,0,0)#"
	clientstorage="cookie">
	
		
	<!---	<cfset apllication.mappings["/Hoth"]="D:/ColdFusion11/cfusion/wwwroot/local/hothApplication_cfc/Hoth" >
	<cfset application.name = hash(getcurrentTemplatePath()) >--->
	
	<cfset apllication.mappings["/Hoth"]="D:/ColdFusion11/cfusion/wwwroot/local/hothApplication_cfm/Hoth" >	



		<!--- place hoth in application --->
		<cfif !structkeyExists(application,"HothTracker")>
			<cfif !structkeyExists(application,"HothTracker")>
				<cfset application.HothTracker = new Hoth.HothTracker( new Hoth.config.HothConfig() ) >
			</cfif>			
		</cfif>	
		
	
	
<!---

<cffunction name="onError" returnType="void" output="true"> 
	<cfargument name="exception" required="true"> 
	<cfargument name="eventname" type="string" required="true"> 
	
	
	<cfset local.HothTracker = (structKeyExists(application, 'HothTracker'))
			? application.HothTracker
			: new Hoth.HothTracker( new Hoth.config.HothConfig() ) >

			local.HothTracker.track(exception) >
	
</cffunction> 

--->


<!---<cferror
template = "hoth_error.cfm"
type = "exception" 
exception = "any"  
<!---mailTo = "e-mail address"--->
>--->



<cferror 
type="exception" 
exception="any" 
template="hoth_error.cfm" 
>

</cfsilent>
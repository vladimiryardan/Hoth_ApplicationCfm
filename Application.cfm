	
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


	<!--- place hoth in application --->
	<cfif !structkeyExists(application,"HothTracker")>
		<cfif !structkeyExists(application,"HothTracker")>
			<cfset application.HothTracker = new Hoth.HothTracker( new Hoth.config.HothConfig() ) >
		</cfif>			
	</cfif>	






<cferror 
type="exception" 
exception="any" 
template="hoth_error.cfm" 
>

</cfsilent>
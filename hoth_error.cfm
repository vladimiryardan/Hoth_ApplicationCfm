

<cfset local.HothTracker = (structKeyExists(application, 'HothTracker'))
		? application.HothTracker
		: new Hoth.HothTracker( new Hoth.config.HothConfig() ) >



<cfset local.HothTracker.track(error) >

<cfscript>
	
	// anything you need here...
	writeOutput('<h3>Forced Error</h3>');
	
</cfscript>

			
		
<!--- force error --->
<cfset randRange = 8 >
<cfset errorNum = RandRange(1,randRange) >


<cfoutput>
	

	<cfswitch expression="#errorNum#">  
	    <cfcase value="1">  
	        #forced1# 
	    </cfcase> 
	    <cfcase value="2">  
	        #forced2# 
	    </cfcase>
	    <cfcase value="3">  
	        #forced3# 
	    </cfcase>
	    <cfcase value="4">  
	        #forced4# 
	    </cfcase>
	    <cfcase value="5">  
	        #forced5# 
	    </cfcase>
	    <cfcase value="6">  
	        #forced6# 
	    </cfcase>
	    <cfcase value="7">  
	        #forced7# 
	    </cfcase>
	     <cfcase value="8">  
	        #forced8# 
	    </cfcase>	     
	    <cfdefaultcase>  
			#forced1000#
	    </cfdefaultcase>  
	</cfswitch> 	
	
	

	
	
	
</cfoutput>



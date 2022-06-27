<cfquery name="getAuthors" datasource="#this.datasource#" returnType="json/array">
  select authorid, lastname || ', ' || firstname as fullname 
  from authors
</cfquery>
<cfoutput>#getAuthors#</cfoutput>

<!---
<cfdump var="#getAuthors#">
--->
<cfquery name="getAuthors" datasource="#this.datasource#" returnType="json/array">
  select * from authors
</cfquery>
<cfoutput>#getAuthors#</cfoutput>
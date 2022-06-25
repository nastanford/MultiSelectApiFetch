<cfquery name="getAuthors" datasource="#request.datasource#" returnType="json/array">
  select *
  from authors
</cfquery>
<cfoutput>
  #getAuthors#
</cfoutput>
<cfquery name="getBooks" datasource="#request.datasource#" returnType="json/array">
  select *
  from Books
  where authorid = #url.id#
</cfquery>
<cfoutput>
  #getBooks#
</cfoutput>
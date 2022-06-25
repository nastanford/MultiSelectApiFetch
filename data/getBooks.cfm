<cfquery name="getBooks" datasource="#this.datasource#" returnType="json/array">
  select * from Books where authorid = #url.id#
</cfquery>
<cfoutput>#getBooks#</cfoutput>
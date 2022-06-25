<cfquery name="getAuthors" datasource="#this.datasource#">
  select *
  from authors
  order by lastname,firstname
</cfquery>
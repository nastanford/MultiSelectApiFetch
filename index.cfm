<cfset request.pageTitle="CF Book Club">
<cfinclude template="./includes/header.cfm">
  <div class="container">
    <cfoutput>
      <h1>#request.pageTitle#</h1>
    </cfoutput>
    <select name="author" id="author" OnChange="getBooks(this.id)">
      <option value=''>- - - Choose an Author - - -</option>
      <cfoutput query="getAuthors">
        <option value="#authorid#">#lastname#,#firstname#</option>
      </cfoutput>
    </select>
    <select name="books" id="books"></select>
  </div>
<cfinclude template="./includes/footer.cfm">

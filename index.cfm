<cfset request.pageTitle="CF Book Club">
<cfinclude template="./includes/header.cfm">
  <div class="container">
    <div class="row">
      <div class="col-sm-12">
        <cfoutput>
          <h1>#request.pageTitle#</h1>
        </cfoutput>
      </div>
    </div>
    <div class="row">
      <div class="col-sm-3">
        <label for="author" class="form-label fw-bold">Author</label>
        <select name="author" id="author" OnChange="getBooks(this.id)">
          <option value=''>- - - Choose an Author - - -</option>
          <cfoutput query="getAuthors">
            <option value="#authorid#">#lastname#,#firstname#</option>
          </cfoutput>
        </select>
      </div>
      <div class="col-sm-3">
        <label for="Books" class="form-label fw-bold">Books</label>
        <select name="books" id="books"></select>
      </div>
    </div>
  </div>
<cfinclude template="./includes/footer.cfm">

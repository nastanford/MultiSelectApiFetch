<cfset request.pageTitle="CF Book Club">
<cfinclude template="./includes/header.cfm">
<div class="container">
  <div class="row">
    <div class="col-sm-12 mt-5">
      <cfoutput><h1>#request.pageTitle#</h1></cfoutput>
    </div>
  </div>
  <div class="row">
    <div class="col-sm-12 mt-5">
      <cfoutput><h3>Multi-Select</h3></cfoutput>
    </div>
  </div>
  <div class="row mt-5">
    <div class="col-sm-3">
    </div>
    <div class="col-sm-3">
      <label for="author" class="form-label fw-bold">Author</label>
      <select name="author" id="author" OnChange="updateSelect(this.id,'data/getBooks.cfm?id=','books','BOOKID','TITLE')">
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

<script type="text/javascript" src="./js/main.js"></script>
<cfinclude template="./includes/footer.cfm">

<cfset request.pageTitle="CF Book Club">
<cfinclude template="./includes/header.cfm">
<div class="container">
  <div class="row">
    <div class="col-sm-12 mt-5">
      <cfoutput><h1>#request.pageTitle#</h1></cfoutput>
    </div>
  </div>
  <div class="row mt-5">
    <div class="col-12 text-center">
      <ul>
        <li><a href="multiselect.cfm">Multiselect</a></li>
      </ul>
    </div>
  </div>
</div>
<cfinclude template="./includes/footer.cfm">

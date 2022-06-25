<cfquery name="getAuthors" datasource="#request.datasource#">
  select *
  from authors
  order by lastname,firstname
</cfquery>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>CF Book Club</title>
  <script type="text/javascript" src="./js/main.js"></script>
</head>
<body>
  <h1>CF Book Club</h1>
  <select name="author" id="author" OnChange="getBooks(this.id)">
    <option value=''>- - - Choose an Author - - -</option>
    <cfoutput query="getAuthors">
      <option value="#authorid#">#lastname#,#firstname#</option>
    </cfoutput>
  </select>
  <select name="books" id="books">
  </select>
</body>
</html>
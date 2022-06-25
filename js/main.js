
function getBooks(id) {
  var e = document.getElementById(id);
  var booksOption = document.getElementById("books");
  fetch("data/getBooks.cfm?id=" + e.value).then(function (response) {
    return response.json();
  }).then(book => {
    var bookOption = "";
    bookOption += "<option value=''>- - - Choose a Book - - -</option>";
    for (let i = 0; i < book.length; i++) {
      // console.log(book[i]);
      bookOption += "<option value='" + book[i]['BOOKID'] + "'>" + book[i]['TITLE'] + "</option>";
    }
    booksOption.innerHTML = bookOption;
  })
}

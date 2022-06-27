function updateSelect(id,url,select,value,text,chooseText) {
  var e = document.getElementById(id);
  var responseOption = document.getElementById(select);
  fetch(url + e.value).then(function (response) {
    return response.json();
  }).then(option => {
    var selectOption = "";
    selectOption += "<option value=''>- - - Choose a "+chooseText+" - - -</option>";
    for (let i = 0; i < option.length; i++) {
      selectOption += "<option value='" + option[i][value] + "'>" + option[i][text] + "</option>";
    }
    responseOption.innerHTML = selectOption;
  })
}
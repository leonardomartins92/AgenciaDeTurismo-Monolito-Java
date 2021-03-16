var getUrlParameter = function getUrlParameter(sParam) {
  var sPageURL = window.location.search.substring(1),
      sURLVariables = sPageURL.split('&'),
      sParameterName,
      i;

  for (i = 0; i < sURLVariables.length; i++) {
      sParameterName = sURLVariables[i].split('=');

      if (sParameterName[0] === sParam) {
          return sParameterName[1] === undefined ? true : decodeURIComponent(sParameterName[1]);
      }
  }
};

var action = getUrlParameter('operacao');

if(action === 'Editar') {
  document.getElementById('operacao').innerHTML = 'Editar';
}
if(action === 'Excluir') {
  document.getElementById('operacao').innerHTML = 'Excluir';
  document.getElementById('botaoSubmit').innerHTML = 'Excluir';
  document.getElementById('botaoSubmit').style.background = 'red';
  
  if(document.getElementsByTagName("input") !== null){
    var inputs = document.getElementsByTagName("input");
    for (var i = 0; i < inputs.length; i++) {
      inputs[i].readonly = true;
    }
  }
  if(document.getElementsByTagName("select") !== null){
    var select = document.getElementsByTagName("select");
    for (var i = 0; i < select.length; i++) {
      select[i].readonly = true;
    }
  }
}
if(action === 'Adicionar') {
  document.getElementById('operacao').innerHTML = 'Cadastrar';
  
}

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

var action = getUrlParameter('acao');

if(action == 'editar') {
  document.getElementById('acao').innerHTML = 'Editar';
}
if(action == 'excluir') {
  document.getElementById('acao').innerHTML = 'Excluir';
  document.getElementById('botaoSubmit').innerHTML = 'Excluir';
  document.getElementById('botaoSubmit').style.background = 'red';
  document.getElementsByTagName("input").disabled = true;
  var inputs = document.getElementsByTagName("input");
  for (var i = 0; i < inputs.length; i++) {
    inputs[i].disabled = true;
  }
  var select = document.getElementsByTagName("select");
  for (var i = 0; i < select.length; i++) {
    select[i].disabled = true;
  }
}
if(action == 'adicionar') {
  document.getElementById('acao').innerHTML = 'Cadastrar';
}

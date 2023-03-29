document.getElementById('cpf').addEventListener('input', function (e) {
      var x = e.target.value.replace(/\D/g, '').match(/(\d{0,3})(\d{0,3})(\d{0,3})(\d{0,2})/);
      e.target.value = !x[2] ? x[1] : x[1] + '.' + x[2] + '.' + x[3] + '-' + x[4] + (x[5] ? '-' + x[5] : '');
    });


    $(document).ready(function(){
      $("#form-login").submit(function(event){
          event.preventDefault(); // impede que o formulário seja enviado normalmente
          var dados = $(this).serializeArray(); // converte os dados do formulário em um objeto JSON
          
          $.ajax({
              url: "processar_dados.php",
              type: "post",
              dataType: "json",
              data: {dados: JSON.stringify(dados)}, // envia os dados como um objeto JSON
              success: function(response){
                  console.log(response); // exibe a resposta do servidor no console
              },
              error: function(xhr){
                  console.log(xhr.responseText); // exibe o erro no console
              }
          });
      });
  });
  

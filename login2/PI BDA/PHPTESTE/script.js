
    $(document).ready(function(){
      $("#form-login").submit(function(event){
          event.preventDefault(); // impede que o formulário seja enviado normalmente
          var dados = $(this).serializeArray(); // converte os dados do formulário em um objeto JSON
          
          $.ajax({
              url: "index.php",
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
  


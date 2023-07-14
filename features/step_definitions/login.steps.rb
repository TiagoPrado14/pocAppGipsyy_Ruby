Dado('que realize o login com dados validos') do
    homeApp.btnConta
    contaScreen.btn_fazerLogin
    loginScreen.loginValido
end
  
Então('verifico o login com sucesso') do
    binding.pry
    nome_usuario = text("")
    wait_element(nome_usuario.displayed?).to be true
end
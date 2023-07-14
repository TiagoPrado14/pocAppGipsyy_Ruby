#language: pt
# encoding: UTF-8


Funcionalidade: Login
   
   Contexto:
   Dado que realize o onboarding no app

    @teste
    Cenário: Realizar login com dados validos
        Dado que realize o login com dados validos
        Então verifico o login com sucesso
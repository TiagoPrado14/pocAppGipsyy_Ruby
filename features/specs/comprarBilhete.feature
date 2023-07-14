#language: pt
# encoding: UTF-8

Funcionalidade: Validar fluxo de compra logado
   Contexto:
   Dado que realize o onboarding no app

Esquema do Cenário: Fluxo de compra logado pagamento PIX
   Dado que realize o onboarding do app com telefone <telefone> e insira o codigo <codigo>
   E realize o login com senha <senha>
   E procure por viagens origem <origem> destino <destino> e data de ida
   E selecione a viagem de ida
   E selecione o assento e clique em escolher
   E confirme o passageiro 
   Quando selecione a forma de pagamento pix e confirme
   Então verifico minha compra com sucesso

   Exemplos:
   | telefone        | codigo  | senha       | origem     | destino    |                               
   | "11940116463"   | "543610"| "Nova1010-" | "Brasilia - Df" | "sao paulo"|



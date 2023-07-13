# Dado('permitir localização do dispositivo') do
#     wait_element('#com.android.permissioncontroller:id/permission_allow_foreground_only_button').click
# end

Dado('que realize o onboarding do app com telefone {string} e insira o codigo {string}') do |telefone, codigo|
    
    onboardingApp.onboarding(telefone, codigo)
end
  
Dado('realize o login com senha {string}') do |senha|
    onboardingApp.onboardingLogin(senha)
end
  
Dado('procure por viagens origem {string} destino {string} e data de ida') do |origem, destino|
    homeApp.buscarViagem(origem, destino)

end
  
Dado('selecione a viagem de ida') do
    sleep 5
    wait_element(:xpath, "(//*[@resource-id='SELECT_OPTION_DATE'])[1]").click
    wait_element(:xpath, "(//*[@resource-id='PAY_ACTION_BUTTON'])[1]").click        
   
end
  
Dado('selecione o assento e clique em escolher') do
    
    sleep 8
    indexAssento = 1
        
    loop do   
        assento = "//*[@text=#{indexAssento}]"  
        begin
            @driver.manage.timeouts.implicit_wait = 0.3
            find_element(xpath: assento) 
            find_element(xpath: assento).click
            break
        rescue
        indexAssento +=1
        end
    end

    wait_element(:xpath, "//*[@resource-id='SELECT_SEATS']").click
    
end
  
Dado('confirme o passageiro') do
    wait_element(:xpath, "//*[@text='Confirmar']").click
end
  
Quando('selecione a forma de pagamento pix e confirme') do

    sleep 5
    coord = { start_y: 1639, start_x: 415, offset_y: 342, offset_x: 416, duration: 500}
    Appium::TouchAction.new.swipe(coord).perform

    wait_element(:xpath, "//*[@resource-id='SELECT_METHOD_PAYMENT_PRESS']").click
    wait_element(:xpath, "//hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[15]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup[4]/android.view.ViewGroup").click
    wait_element(:xpath, "//*[@resource-id='NEXT_CHECKOUT_PRESS']").click
end
  
Então('verifico minha compra com sucesso') do
    
end



#xpath para pagamento com cartão de crédito "//*[@resource-id='ADD_NEW_CART_PESS']"





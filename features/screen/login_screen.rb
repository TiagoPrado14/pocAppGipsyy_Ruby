class LoginApp 

    def loginValido
        wait_element(:xpath, "//*[@resource-id='EMAIL_INPUT_LOGIN']").send_keys('tiago.silva@gipsyy.com.br')
        wait_element(:xpath, "//*[@resource-id='PASSWORD_INPUT']").send_keys('Nova1010-')
        wait_element(:xpath, "//*[@resource-id='LOGIN.PASSWORD_VISIBLE']").click
        wait_element(:xpath, "//*[@text='Entrar']").click
    end
end

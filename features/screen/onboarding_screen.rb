class OnboardingApp

    def onboardingPinCode(telefone, codigo)
        wait_element(:xpath, "//*[@text='While using the app']").click # utilizado para o emulador
        #wait_element(:xpath, "//*[@text='Durante o uso do app']").click # utilizado para device fisico
        wait_element(:xpath, "//*[@resource-id='NEXT_BUTTON_ON_BOARDING']").click
        wait_element(:xpath, "//*[@resource-id='INPUT_LOGIN_PHONE_NUMBER']").send_keys(telefone)
        wait_element(:xpath, "//*[@text='Próximo']").click
        wait_element(:xpath, "//*[@resource-id='INPUT_PIN_INPUT']").send_keys(codigo)
        wait_element(:xpath, "//*[@resource-id='NEXT_PIN_PRESS']").click
      
    end

    def onboardingPular
        wait_element(:xpath, "//*[@text='While using the app']").click # utilizado para o emulador
        #wait_element(:xpath, "//*[@text='Durante o uso do app']").click # utilizado para device fisico
        wait_element(:xpath, "//*[@resource-id='NEXT_BUTTON_ON_BOARDING']").click
        wait_element(:xpath, "//hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup").click
    end


    def onboardingLogin(senha)

        wait_element(:xpath, "//*[@resource-id='PASSWORD_INPUT']").send_keys(senha)
        wait_element(:xpath, "//*[@text='Entrar']").click
        wait_element(:xpath, "//*[@resource-id='NEXT_BUTTON_ON_BOARDING']").click

    end




end
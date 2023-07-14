class HomeApp 
    
    def buscarViagem(origem, destino)

        wait_element(:xpath, "//*[@resource-id='ORIGIN_INPUT_SEARCH']").click
        wait_element(:xpath, "//*[@resource-id='INPUT_SEARCH_TRIPS']").send_keys(origem)
        wait_element(:xpath, "//*[@resource-id='SELECT_SEARCH_OPTION_MODAL']").click

        wait_element(:xpath, "//*[@resource-id='DESTINATION_INPUT_SEARCH']").click
        wait_element(:xpath, "//*[@resource-id='INPUT_SEARCH_TRIPS']").send_keys(destino)
        wait_element(:xpath, "//*[@resource-id='SELECT_SEARCH_OPTION_MODAL']").click

        wait_element(:xpath, "//*[@resource-id='INPUT_DEPARTURE']").click
        day_of_week = {0 => "Segunda",1 => "Terça", 2 => "Quarta",3 => "Quinta",4 => "Sexta",5 => "Sábado",6 => "Domingo"}  
        month =  {1 => "Janeiro",2 => "Fevereiro",3 => "Março",4 => "Abril",5 => "Maio",6 => "Junho",7 => "Julho",8 => "Agosto",9 => "Setembro",10 => "Outubro",11 => "Novembro",12 => "Dezembro"}     
        select_day = "//android.widget.Button[@content-desc='Hoje #{day_of_week[Time.now.wday]} #{Time.now.day} #{month[Time.now.month]} #{Time.now.year} ']"
    
        wait_element(:xpath, select_day).click
        sleep 5
        wait_element(:xpath, "//*[@resource-id='ONPRESS_SEARCH_BUS']").click

    end

    def btnConta
        wait_element(:xpath, "//*[@text='Conta']").click
    end


end
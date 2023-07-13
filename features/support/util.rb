
def wait_constructor
    return Selenium::WebDriver::Wait.new(timeout: 30)
end

def wait_element(type, element)
    begin
      wait = self.wait_constructor
      wait.until { find_element(type, element) }
    rescue
      $erro = "\n\nElemento não encontrado\n\n"
      raise $erro
    end
end
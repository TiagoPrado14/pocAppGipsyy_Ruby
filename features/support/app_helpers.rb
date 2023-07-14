Dir[File.join(File.dirname(__FILE__),
    '../screen/*.rb')].sort.each { |file| require file }

module AppHelpers

    def onboardingApp
        OnboardingApp.new
    end

    def homeApp
        HomeApp.new
    end
    
    def contaScreen
        ContaApp.new
    end

    def loginScreen
        LoginApp.new
    end

end
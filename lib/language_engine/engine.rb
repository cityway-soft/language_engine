module LanguageEngine
  class Engine < ::Rails::Engine
    isolate_namespace LanguageEngine

    initializer 'language_engine.app_controller' do |app|
      ActiveSupport.on_load(:action_controller) do
        require 'language_engine/language_support'
        include LanguageEngine::LanguageSupport

        helper LanguageEngine::LanguagesHelper
      end
    end
    
  end
end

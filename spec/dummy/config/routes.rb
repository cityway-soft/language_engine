Rails.application.routes.draw do

  mount LanguageEngine::Engine => "/language_engine"
end

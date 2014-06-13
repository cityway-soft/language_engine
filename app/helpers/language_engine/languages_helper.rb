module LanguageEngine::LanguagesHelper

  def selected_language?( lang)
    (session[:language].nil? && lang=="fr") || lang==session[:language].to_s
  end
 
  def language_class( lang)
    "language #{lang}".tap do |css_classes|
      css_classes << " selected" if selected_language?(lang)
    end
  end

  def link_to_language(language)
    link_to image_tag("user_interface/ui/#{language}_flag.png"), language_path(language), :method => :put
  end

end

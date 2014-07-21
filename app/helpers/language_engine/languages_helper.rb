module LanguageEngine::LanguagesHelper

  def selected_language?( lang)
    (session[:language].nil? && lang==I18n.locale) || lang==session[:language].to_s
  end

  def selected_language
    session[:language].nil? ? I18n.locale : session[:language].to_s
  end
  
  def language_class( lang)
    "language #{lang}".tap do |css_classes|
      css_classes << " selected" if selected_language?(lang)
    end
  end

  def link_to_language(language, html_options = {})
    html_options.merge( { :method => :put } )
    link_to image_tag("language_engine/#{language}_flag.png"), language_path(language), html_options
  end

end

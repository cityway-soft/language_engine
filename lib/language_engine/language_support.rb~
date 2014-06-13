module UserInterface::LanguageSupport

  def self.included(base)
    base.class_eval do 
      if respond_to?(:helper_method)
        protected :current_language, :current_language?
        helper_method :current_language, :current_language?
      end
    end
  end

  def current_language
    (session[:language] or :fr)
  end

  def current_language=(language)
    I18n.locale = language.to_sym
    session[:language] = language.to_sym unless language.blank?
  end

  def current_language?(language)
    not language.blank? and self.current_language == language.to_sym
  end

end

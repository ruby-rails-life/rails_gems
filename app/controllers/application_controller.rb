class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_locale
  protect_from_forgery with: :exception

  add_breadcrumb I18n.t("breadcrumbs.homepage"), :home_index_path

  def default_url_options(options = {})
    { locale: I18n.locale }.merge options
  end

  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
      devise_parameter_sanitizer.permit(:account_update, keys: [:name])
    end

    def set_locale
      I18n.locale = params[:locale] || I18n.default_locale
    end

end

class CountryController < ApplicationController
  def index
    @countries = Country.all
    add_breadcrumb 'Country', country_path
  end
end

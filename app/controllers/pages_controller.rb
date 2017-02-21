class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]
  layout "home_layout"
  autocomplete :sport, :name
  def home
  end

  def search
  end
end

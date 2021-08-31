class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :draft ]

  def home
  end

  def draft
  end
end

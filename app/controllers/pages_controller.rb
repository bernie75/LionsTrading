class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :transfers ]

  def home
  end

  def transfers

  end
end

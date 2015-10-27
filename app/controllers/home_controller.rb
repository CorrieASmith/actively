class HomeController < ApplicationController
  def index
    @targets = Target.all
  end
end

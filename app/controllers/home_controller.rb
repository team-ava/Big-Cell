class HomeController < ApplicationController
  http_basic_authenticate_with name: "bigcell", password: "bigcell"

  def index
  end
end

class Api::ParamsController < ApplicationController
  def capitalize
    @capitalize = params[:name].upcase
    render "capitalize.json.jb"
    #p params[:name]
  end
end

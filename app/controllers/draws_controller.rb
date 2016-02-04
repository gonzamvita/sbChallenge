class DrawsController < ApplicationController
  include HTTParty

  def index
    @draws = getDrawsFromAPI
    # TODO: ...
  end

  private
  def getDrawsFromAPI
    rawdata = HTTParty.get('http://130.206.85.53:3000/draws')
    return rawdata["objects"]
  end
end

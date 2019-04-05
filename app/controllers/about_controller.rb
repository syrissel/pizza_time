class AboutController < ApplicationController
  def index
    @info = Page.first
  end
end

class ContactController < ApplicationController
  def index
    @info = Page.first
  end
end

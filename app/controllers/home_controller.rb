class HomeController < ApplicationController
  def welcome
    @tasks = []
    @tasks << Task.new('Buy milk')
    @tasks << Task.new('Buy eggs')
    @tasks << Task.new('Buy bread')
  end
end
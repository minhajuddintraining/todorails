class TasksController < ApplicationController
  skip_before_action :verify_authenticity_token
  skip_forgery_protection

  def index
    @tasks = Task.all
  end

  def new
  end

  def create
    Task.create!(title: params["title"])
  end
end

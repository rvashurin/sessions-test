class SessionsController < ApplicationController
  def none
    binding.pry
    session[:user_id] = 1
    head :ok
  end

  def first
    binding.pry
    session[:first_user_id] = 1
    head :ok
  end

  def second
    binding.pry
    session[:second_user_id] = 2
    head :ok
  end
end

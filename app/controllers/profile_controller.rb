class ProfileController < ApplicationController
  def index
    @illnesses = Illness.where user: session[:username]
    @illness = @illnesses.find do |i| i.end.nil? end 
  end
end

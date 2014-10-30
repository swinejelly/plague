class ProfileController < ApplicationController
  def index
    illnesses = Illness.where user: session[:username]
    @past_illnesses = illnesses.select {|i| !i.end.nil? }
    @illness = illnesses.find do |i| i.end.nil? end
    @sick = true
    if !@illness then
      @sick = false
      @illness = Illness.new
    end
  end
end

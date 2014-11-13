require 'set'
class HomeController < ApplicationController
  def index
    # Categorize users by room and severity of illness if any
    users_with_room = @users.select { |u| n = u['roomNumber'].first; n && Integer(n) rescue false }
    users_by_room = users_with_room.sort_by { |u| u['roomNumber'].first }.chunk { |u| u['roomNumber'].first }
    uids = users_with_room.map { |u| u['uid'].first }
    illnesses = Illness.where(user: uids).select {|i| i.end.nil? }
    @red_rooms = Set.new
    @green_rooms = Set.new
    illnesses.each do |i|
      users_by_room.each do |r|
        if r[1].any? {|u| u['uid'].first == i.user}
          @red_rooms.add(r)
          break
        end
      end
    end

    users_by_room.each do |r|
      unless @red_rooms.include? r
        @green_rooms.add r
      end
    end
  end
end

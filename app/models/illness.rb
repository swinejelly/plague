class Illness < ActiveRecord::Base

  SYMPTOMS = [:congestion, :fever, :headache, :shits,
              :musclepains, :vomiting, :migraine, :fatigue,
              :cramps, :nausea, :chills, :noappetite]

  def Illness.hname(s)
    case s
      when :musclepains
        "Muscle Pains"
      when :noappetite
        "No Appetite"
      else
        s.to_s.capitalize
    end
  end
end

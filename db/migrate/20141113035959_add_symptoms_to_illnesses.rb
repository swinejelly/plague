class AddSymptomsToIllnesses < ActiveRecord::Migration
  def change
    add_column :illnesses, :musclepains, :boolean
    add_column :illnesses, :vomiting, :boolean
    add_column :illnesses, :migraine, :boolean
    add_column :illnesses, :fatigue, :boolean
    add_column :illnesses, :cramps, :boolean
    add_column :illnesses, :nausea, :boolean
    add_column :illnesses, :chills, :boolean
    add_column :illnesses, :noappetite, :boolean
  end
end

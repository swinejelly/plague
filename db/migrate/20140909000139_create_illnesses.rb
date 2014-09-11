class CreateIllnesses < ActiveRecord::Migration
  def change
    create_table :illnesses do |t|
      t.string :user
      t.date :start
      t.date :end
      t.boolean :congestion
      t.boolean :fever
      t.boolean :headache
      t.boolean :shits

      t.timestamps
    end
  end
end

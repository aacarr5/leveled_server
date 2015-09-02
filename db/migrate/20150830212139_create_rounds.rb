class CreateRounds < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
    	t.integer :completed_time
    	t.integer :intended_time
    	t.integer :user_id
    	t.integer :points

    	t.timestamp null:false
    end
  end
end

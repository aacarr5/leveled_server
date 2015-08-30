class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string :username
    	t.string :password
    	t.integer :level
    	t.integer :xp

    	t.timestamp null:false
    end
  end
end

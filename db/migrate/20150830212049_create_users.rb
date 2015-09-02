class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string :username
    	t.string :password
    	t.integer :level, default: 1
    	t.integer :xp, default: 1

    	t.timestamp null:false
    end
  end
end

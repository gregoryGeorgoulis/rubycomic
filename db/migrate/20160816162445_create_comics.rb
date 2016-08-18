class CreateComics < ActiveRecord::Migration
  def change
    create_table :comics do |t|
    	t.string :title
    end
  end
end

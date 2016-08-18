class AddManyComicsToUser < ActiveRecord::Migration
  def change
  	add_reference :comics, :user,index: true
  end
end

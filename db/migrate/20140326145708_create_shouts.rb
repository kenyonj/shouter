class CreateShouts < ActiveRecord::Migration
  def change
    create_table :shouts do |t|
      t.belongs_to :user, index: true
      t.string :body

      t.timestamps
    end
  end
end

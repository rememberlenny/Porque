class CreateIntros < ActiveRecord::Migration
  def change
    create_table :intros do |t|
      t.text :content
      t.belongs_to :scenario
      t.timestamps
    end
  end
end

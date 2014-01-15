class CreateQuizOrders < ActiveRecord::Migration
  def change
    create_table :quiz_orders do |t|
      t.belongs_to :scenario
      t.timestamps
    end
  end
end

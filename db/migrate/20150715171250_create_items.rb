class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :description
      t.float :regular_price
      t.float :sale_price
      t.belongs_to :user

      t.timestamps
    end

    create_table :items_purchases, id: false do |t|
      t.belongs_to :item, index: true
      t.belongs_to :purchase, index: true
    end

  end
end

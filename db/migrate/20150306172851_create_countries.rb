class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string :name
      t.string :capital
      t.integer :callingcode
      t.string :timezones
      t.string :currency
      t.string :languages
      t.timestamps null: false
    end
  end
end

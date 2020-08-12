class CreateBabythings < ActiveRecord::Migration[6.0]
  def change
    create_table :babythings do |t|
      t.string :name

      t.timestamps
    end
  end
end

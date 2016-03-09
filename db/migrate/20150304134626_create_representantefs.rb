class CreateRepresentantefs < ActiveRecord::Migration
  def change
    create_table :representantefs do |t|
      t.string :nombre

      t.timestamps
    end
  end
end

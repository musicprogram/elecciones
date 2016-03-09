class CreateRepresentantets < ActiveRecord::Migration
  def change
    create_table :representantets do |t|
      t.string :nombre

      t.timestamps
    end
  end
end

class CreateRepresentantems < ActiveRecord::Migration
  def change
    create_table :representantems do |t|
      t.string :nombre

      t.timestamps
    end
  end
end

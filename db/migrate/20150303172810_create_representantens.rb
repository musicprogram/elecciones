class CreateRepresentantens < ActiveRecord::Migration
  def change
    create_table :representantens do |t|
      t.string :nombre

      t.timestamps
    end
  end
end

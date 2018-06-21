class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.references :user, foreign_key: true
      t.integer :sender
      t.integer :recipient
      t.references :language, foreign_key: true

      t.timestamps
    end
  end
end

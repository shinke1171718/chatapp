class CreateMessages < ActiveRecord::Migration[6.1]
  def change
    create_table :messages do |t|
      t.text :message_text, null: false
      t.timestamps
    end
  end
end

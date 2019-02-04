class CreatePrivateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :private_messages do |t|
      t.belongs_to :sender, index: true
    	t.belongs_to :recipient, index: true
    	t.text :content
      t.timestamps
    end
  end
end

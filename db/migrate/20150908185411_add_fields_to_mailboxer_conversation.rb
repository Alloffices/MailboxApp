class AddFieldsToMailboxerConversation < ActiveRecord::Migration
  def change
    add_column :mailboxer_conversations, :location, :string
  end
end

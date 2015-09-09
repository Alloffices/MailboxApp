class AddFieldsToMailboxerNotification < ActiveRecord::Migration
  def change
    add_column :mailboxer_notifications, :location, :string
  end
end

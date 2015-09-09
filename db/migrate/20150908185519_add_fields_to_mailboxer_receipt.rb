class AddFieldsToMailboxerReceipt < ActiveRecord::Migration
  def change
    add_column :mailboxer_receipts, :location, :string
  end
end

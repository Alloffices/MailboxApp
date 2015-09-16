class AddBudgetToMailboxerNotification < ActiveRecord::Migration
  def change
    add_column :mailboxer_notifications, :budget, :text
  end
end

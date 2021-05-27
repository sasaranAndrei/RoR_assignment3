class AddOrderMentionsColumn < ActiveRecord::Migration[6.1]
  def change
    add_column :orders, :mentions, :text
  end
end

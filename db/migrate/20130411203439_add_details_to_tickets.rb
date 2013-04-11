class AddDetailsToTickets < ActiveRecord::Migration
  def change
    add_column :tickets, :status, :integer
  end
end

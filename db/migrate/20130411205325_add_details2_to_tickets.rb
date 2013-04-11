class AddDetails2ToTickets < ActiveRecord::Migration
  def change
    add_column :tickets, :description, :integer
    add_column :tickets, :name, :string
  end
end

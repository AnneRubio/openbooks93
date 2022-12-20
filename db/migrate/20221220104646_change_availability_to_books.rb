class ChangeAvailabilityToBooks < ActiveRecord::Migration[7.0]
  def change
    change_column :books, :availability, :boolean, default: true
  end
end

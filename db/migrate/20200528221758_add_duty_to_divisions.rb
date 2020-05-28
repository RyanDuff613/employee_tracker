class AddDutyToDivisions < ActiveRecord::Migration[5.2]
  def change
    add_column(:divisions, :duty, :string)
  end
end

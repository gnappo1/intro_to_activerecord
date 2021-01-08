# Methods: # add_column, # add_index, # change_column, # change_table, # create_table, # drop_table, # remove_column, # remove_index, # rename_column
# Supported column types: :binary, :boolean, :date, :datetime, :decimal, :float, :integer, :primary_key, :string, :text, :time, :timestamps



class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.datetime :datetime
      t.string :location
      t.belongs_to :patient, null: false, dependent: :delete
      t.belongs_to :physician, null: false, dependent: :delete
      t.boolean :scheduled, default: false
      t.timestamps
    end
  end
end

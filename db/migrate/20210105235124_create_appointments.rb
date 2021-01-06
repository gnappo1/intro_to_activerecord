# Methods: # add_column, # add_index, # change_column, # change_table, # create_table, # drop_table, # remove_column, # remove_index, # rename_column
# Supported column types: :binary, :boolean, :date, :datetime, :decimal, :float, :integer, :primary_key, :string, :text, :time, :timestamps



class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.datetime :datetime
      t.string :location
      t.string :doctor_name
      t.string :patient_name
      t.boolean :scheduled, default: false
      t.timestamps
    end
  end
end

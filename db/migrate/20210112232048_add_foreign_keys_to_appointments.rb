class AddForeignKeysToAppointments < ActiveRecord::Migration[6.1]
  def change
    add_foreign_key :appointments, :patients, on_delete: :cascade
    add_foreign_key :appointments, :physicians, on_delete: :cascade
  end
end

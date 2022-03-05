class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.integer :patient_id
      t.integer :physician_id
      t.datetime :appointment_date

      t.timestamps
    end
  end
end

class AddAppointmentAssociations < ActiveRecord::Migration[6.0]
  def change
    add_reference :physicians, :appointment, index: true
    add_reference :patients, :appointment, index: true
  end
end

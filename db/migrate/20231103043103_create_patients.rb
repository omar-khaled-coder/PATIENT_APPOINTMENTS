class CreatePatients < ActiveRecord::Migration[7.0]
  def change
    create_table :patients do |t|
      t.string :full_name
      t.string :identification_number
      t.date :date_of_birth
      t.string :birth_place
      t.string :gender
      t.string :marital_status
      t.string :country
      t.string :religion
      t.string :work
      t.string :phone_number
      t.string :email
      t.text :address
      t.text :medical_history
      t.text :allergies
      t.text :current_medications
      t.text :known_medical_conditions
      t.string :insurance_provider
      t.string :policy_number
      t.string :emergency_contact_number
      t.string :emergency_name
      t.text :last_visit
      t.text :payment_records

      t.timestamps
    end
  end
end

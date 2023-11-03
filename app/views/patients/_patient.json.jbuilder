json.extract! patient, :id, :full_name, :identification_number, :date_of_birth, :birth_place, :gender, :marital_status, :country, :religion, :work, :phone_number, :email, :address, :medical_history, :allergies, :current_medications, :known_medical_conditions, :insurance_provider, :policy_number, :emergency_contact_number, :emergency_name, :last_visit, :payment_records, :created_at, :updated_at
json.url patient_url(patient, format: :json)

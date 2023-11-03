require "application_system_test_case"

class PatientsTest < ApplicationSystemTestCase
  setup do
    @patient = patients(:one)
  end

  test "visiting the index" do
    visit patients_url
    assert_selector "h1", text: "Patients"
  end

  test "should create patient" do
    visit patients_url
    click_on "New patient"

    fill_in "Address", with: @patient.address
    fill_in "Allergies", with: @patient.allergies
    fill_in "Birth place", with: @patient.birth_place
    fill_in "Country", with: @patient.country
    fill_in "Current medications", with: @patient.current_medications
    fill_in "Date of birth", with: @patient.date_of_birth
    fill_in "Email", with: @patient.email
    fill_in "Emergency contact number", with: @patient.emergency_contact_number
    fill_in "Emergency name", with: @patient.emergency_name
    fill_in "Full name", with: @patient.full_name
    fill_in "Gender", with: @patient.gender
    fill_in "Identification number", with: @patient.identification_number
    fill_in "Insurance provider", with: @patient.insurance_provider
    fill_in "Known medical conditions", with: @patient.known_medical_conditions
    fill_in "Last visit", with: @patient.last_visit
    fill_in "Marital status", with: @patient.marital_status
    fill_in "Medical history", with: @patient.medical_history
    fill_in "Payment records", with: @patient.payment_records
    fill_in "Phone number", with: @patient.phone_number
    fill_in "Policy number", with: @patient.policy_number
    fill_in "Religion", with: @patient.religion
    fill_in "Work", with: @patient.work
    click_on "Create Patient"

    assert_text "Patient was successfully created"
    click_on "Back"
  end

  test "should update Patient" do
    visit patient_url(@patient)
    click_on "Edit this patient", match: :first

    fill_in "Address", with: @patient.address
    fill_in "Allergies", with: @patient.allergies
    fill_in "Birth place", with: @patient.birth_place
    fill_in "Country", with: @patient.country
    fill_in "Current medications", with: @patient.current_medications
    fill_in "Date of birth", with: @patient.date_of_birth
    fill_in "Email", with: @patient.email
    fill_in "Emergency contact number", with: @patient.emergency_contact_number
    fill_in "Emergency name", with: @patient.emergency_name
    fill_in "Full name", with: @patient.full_name
    fill_in "Gender", with: @patient.gender
    fill_in "Identification number", with: @patient.identification_number
    fill_in "Insurance provider", with: @patient.insurance_provider
    fill_in "Known medical conditions", with: @patient.known_medical_conditions
    fill_in "Last visit", with: @patient.last_visit
    fill_in "Marital status", with: @patient.marital_status
    fill_in "Medical history", with: @patient.medical_history
    fill_in "Payment records", with: @patient.payment_records
    fill_in "Phone number", with: @patient.phone_number
    fill_in "Policy number", with: @patient.policy_number
    fill_in "Religion", with: @patient.religion
    fill_in "Work", with: @patient.work
    click_on "Update Patient"

    assert_text "Patient was successfully updated"
    click_on "Back"
  end

  test "should destroy Patient" do
    visit patient_url(@patient)
    click_on "Destroy this patient", match: :first

    assert_text "Patient was successfully destroyed"
  end
end

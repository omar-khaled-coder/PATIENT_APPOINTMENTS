require "test_helper"

class PatientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @patient = patients(:one)
  end

  test "should get index" do
    get patients_url
    assert_response :success
  end

  test "should get new" do
    get new_patient_url
    assert_response :success
  end

  test "should create patient" do
    assert_difference("Patient.count") do
      post patients_url, params: { patient: { address: @patient.address, allergies: @patient.allergies, birth_place: @patient.birth_place, country: @patient.country, current_medications: @patient.current_medications, date_of_birth: @patient.date_of_birth, email: @patient.email, emergency_contact_number: @patient.emergency_contact_number, emergency_name: @patient.emergency_name, full_name: @patient.full_name, gender: @patient.gender, identification_number: @patient.identification_number, insurance_provider: @patient.insurance_provider, known_medical_conditions: @patient.known_medical_conditions, last_visit: @patient.last_visit, marital_status: @patient.marital_status, medical_history: @patient.medical_history, payment_records: @patient.payment_records, phone_number: @patient.phone_number, policy_number: @patient.policy_number, religion: @patient.religion, work: @patient.work } }
    end

    assert_redirected_to patient_url(Patient.last)
  end

  test "should show patient" do
    get patient_url(@patient)
    assert_response :success
  end

  test "should get edit" do
    get edit_patient_url(@patient)
    assert_response :success
  end

  test "should update patient" do
    patch patient_url(@patient), params: { patient: { address: @patient.address, allergies: @patient.allergies, birth_place: @patient.birth_place, country: @patient.country, current_medications: @patient.current_medications, date_of_birth: @patient.date_of_birth, email: @patient.email, emergency_contact_number: @patient.emergency_contact_number, emergency_name: @patient.emergency_name, full_name: @patient.full_name, gender: @patient.gender, identification_number: @patient.identification_number, insurance_provider: @patient.insurance_provider, known_medical_conditions: @patient.known_medical_conditions, last_visit: @patient.last_visit, marital_status: @patient.marital_status, medical_history: @patient.medical_history, payment_records: @patient.payment_records, phone_number: @patient.phone_number, policy_number: @patient.policy_number, religion: @patient.religion, work: @patient.work } }
    assert_redirected_to patient_url(@patient)
  end

  test "should destroy patient" do
    assert_difference("Patient.count", -1) do
      delete patient_url(@patient)
    end

    assert_redirected_to patients_url
  end
end

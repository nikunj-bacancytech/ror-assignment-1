# ROR ASSIGNMENT 1 (Nikunj)

* Details

This assignment will cover many to many relationships. We have to do this using both the associations (i.e) “has_many :through” and “has_and_belongs_to_many”.
has_many :through
	
    Patient has_many Physicians through Appointments
    Physician has_many Patients through Appointments
        
		Model 1 :- Patients (id, name, email)
		Model 2 :- Physicians (id, name, email, unique_id)
		Model 3 :- Appointments (id, patient_id, physician_id, appointment_date)

NOTE :- 
    Patient’s and Physician’s “name must be present”
    Patient’s and Physician’s “email must be present and must be unique”
    Physician will have a unique_id generated and it “must be generated and must be unique”
    Appointment’s “appointment_date must be present.”
    2. has_and_belongs_to_many
	
        Industry has_many Sectors
        Sector has_many Industries

		Model 1 :- Industry (id, name, email, registration_number)
		Model 2 :- Sector (id, name)

NOTE :-
    Industry’s and Sector’s “name must be present”
    Sector’s “name must be unique”
    Industry’s “email must be unique”
    Industry’s “registration_number must be generated and must be unique.”







First assignment will cover following concepts:-

1. Associations

    has_many :through
    has_and_belongs_to_many

2. Validations
3. Callbacks

Instance: Example-ENRICHGCS
InstanceOf: ENRICHGCS
Usage: #example
Description: "An example Observation for a Glasgow Coma Scale (GCS) assessment with a total score of 15 and its eye/verbal/motor sub-scores."

* category[survey] = $observation-category#survey
* code.coding[loinc] = $loinc#9269-2 "Glasgow coma score total"
* code.coding[snomed] = $sct#248241002 "Glasgow coma scale (assessment scale)"
* code.text = "Glasgow Coma Scale"

* status = #final
* subject = Reference(Patient/PatientinMusterfrau)
* effectiveDateTime = "2020-10-11"
* valueQuantity = 15 '1'

// Eye response (4 = spontaneous)
* component[Eye].code = $loinc#9267-6 "Glasgow coma score eye opening"
* component[Eye].valueCodeableConcept = $sct#281395000 "Eyes open spontaneously"

// Verbal response (5 = oriented)
* component[Verbal].code = $loinc#9270-0 "Glasgow coma score verbal"
* component[Verbal].valueCodeableConcept = $sct#163024005 "Oriented (finding)"

// Motor response (6 = obeys commands)
* component[Motor].code = $loinc#9268-4 "Glasgow coma score motor"
* component[Motor].valueCodeableConcept = $sct#247800000 "Obeys command"

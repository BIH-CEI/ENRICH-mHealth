Instance: Example-ENRICH-Arterieller-Blutdruck
InstanceOf: ENRICH_Observation_Arterieller_Blutdruck
Title: "Example ENRICH Arterieller Blutdruck Observation"
Description: "Example instance for documenting systemic arterial blood pressure observations within ENRICH-mHealth (based on ISiKBlutdruckSystemischArteriell)."
Usage: #example

// Category (Vital Signs)
* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* status = #final

// Code (LOINC & SNOMED CT) - codes are fixed by the ISiK profile
* code.coding[loinc].system = "http://loinc.org"
* code.coding[loinc].code = #85354-9
* code.coding[loinc].display = "Blood pressure panel with all children optional"
* code.coding[snomed].system = "http://snomed.info/sct"
* code.coding[snomed].code = #75367002
* code.coding[snomed].display = "Blood pressure (observable entity)"

// Subject and Metadata
* subject = Reference(Patient/example)
* encounter = Reference(Encounter/example)
* effectiveDateTime = "2025-02-17T10:30:00Z"

// Systolic Blood Pressure
* component[SystolicBP].code.coding[LOINC].system = "http://loinc.org"
* component[SystolicBP].code.coding[LOINC].code = #8480-6
* component[SystolicBP].code.coding[LOINC].display = "Systolic blood pressure"
* component[SystolicBP].valueQuantity.value = 120
* component[SystolicBP].valueQuantity.unit = "mmHg"
* component[SystolicBP].valueQuantity.system = "http://unitsofmeasure.org"
* component[SystolicBP].valueQuantity.code = #"mm[Hg]"

// Diastolic Blood Pressure
* component[DiastolicBP].code.coding[LOINC].system = "http://loinc.org"
* component[DiastolicBP].code.coding[LOINC].code = #8462-4
* component[DiastolicBP].code.coding[LOINC].display = "Diastolic blood pressure"
* component[DiastolicBP].valueQuantity.value = 80
* component[DiastolicBP].valueQuantity.unit = "mmHg"
* component[DiastolicBP].valueQuantity.system = "http://unitsofmeasure.org"
* component[DiastolicBP].valueQuantity.code = #"mm[Hg]"

// Mean Blood Pressure
* component[meanBP].code.coding[LOINC].system = "http://loinc.org"
* component[meanBP].code.coding[LOINC].code = #8478-0
* component[meanBP].code.coding[LOINC].display = "Mean blood pressure"
* component[meanBP].valueQuantity.value = 93
* component[meanBP].valueQuantity.unit = "mmHg"
* component[meanBP].valueQuantity.system = "http://unitsofmeasure.org"
* component[meanBP].valueQuantity.code = #"mm[Hg]"

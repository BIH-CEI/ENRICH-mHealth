Instance: Example-ENRICHSauerstoffsaettigung
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "An example Observation for arterial oxygen saturation (SpO2), e.g. measured by a wearable pulse oximeter."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"

* valueQuantity = 98 '%' "%"
* status = #final
* subject = Reference(Patient/PatientinMusterfrau)
* effectiveDateTime = "2020-10-11"
* performer = Reference(Practitioner/1)
* device = Reference(Example-ENRICH-Device-Corsano)

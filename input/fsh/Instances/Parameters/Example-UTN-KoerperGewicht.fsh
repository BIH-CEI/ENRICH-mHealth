Instance: Example-ENRICHKoerpergewicht
InstanceOf: ENRICHKoerpergewicht
Usage: #example
Description: "An example Observation for Body Weight."

* category = $observation-category#vital-signs
//* code.coding[0] = urn:iso:std:iso:11073:10101#188736 "MDC_MASS_BODY_ACTUAL"
* code.coding[+] = $loinc#29463-7 "Body weight"
//* code.coding[+] = $sct#27113001 "Body weight"
* code.text = "Körpergewicht"
* valueQuantity = 79 'kg' "kilogram"
* status = #final
* subject = Reference(Example-ENRICH-Patient-2)
* encounter = Reference(xample-ENRICH-Encounter-PRtoPR)
* effectiveDateTime = "2020-10-11"
* performer = Reference(Example-ENRICH-Practitioner)
Instance: Example-ENRICHKopfumfang
InstanceOf: ENRICHKopfumfang
Usage: #example
Description: "An example Observation for head circumference."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#9843-4 "Head Occipital-frontal circumference"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#153856 "MDC_CIRCUM_HEAD"
* code.text = "Kopfumfang"

* valueQuantity = 57 'cm' "cm"
* status = #final
* subject = Reference(Patient/PatientinMusterfrau)
* effectiveDateTime = "2020-10-11"

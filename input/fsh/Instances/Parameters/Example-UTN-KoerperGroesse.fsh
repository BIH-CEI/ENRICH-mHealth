Instance: Example-ENRICH-Koerpergroesse
InstanceOf: ENRICHKoerpergroesse
Usage: #example
Description: "An example Observation for body height (based on ISiKKoerpergroesse)."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8302-2 "Body height"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#188740 "MDC_LEN_BODY_ACTUAL"
* code.text = "Körpergröße"

* status = #final
* subject = Reference(Example-ENRICH-Patient-2)
* effectiveDateTime = "2020-10-11"
* valueQuantity = 180 'cm' "centimeter"

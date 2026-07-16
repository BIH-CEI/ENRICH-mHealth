Instance: Example-ENRICHKoerpertemperatur
InstanceOf: ENRICHKoerperTemperatur
Usage: #example
Description: "An example Observation for body core temperature (based on ISiKKoerperkerntemperatur)."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8310-5 "Body temperature"
* code.coding[coretemp-loinc] = $loinc#8329-5 "Body temperature - Core"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150364 "MDC_TEMP_BODY"
* code.text = "Körperkerntemperatur"

* valueQuantity = 36.8 'Cel' "°C"
* status = #final
* subject = Reference(Patient/PatientinMusterfrau)
* effectiveDateTime = "2020-10-11"

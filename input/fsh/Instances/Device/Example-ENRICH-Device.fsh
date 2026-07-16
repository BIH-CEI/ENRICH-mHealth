Instance: Example-ENRICH-Device-Corsano
InstanceOf: ENRICHPersonalHealthDevice
Usage: #example
Description: "Example wearable (Corsano CardioWatch 287-2) used to capture ENRICH-mHealth vital signs."

* status = #active
* manufacturer = "Corsano Health"
* deviceName.name = "CardioWatch 287-2"
* deviceName.type = #manufacturer-name
* serialNumber = "CW287-000123"
* modelNumber = "287-2"
* type.text = "Wrist-worn multi-parameter wearable"
* version.value = "2.1.0"
* specialization.systemType = urn:iso:std:iso:11073:10101#528391 "MDC_DEV_ANALY_SAT_O2_MDS"
* patient = Reference(Example-ENRICH-Patient-2)

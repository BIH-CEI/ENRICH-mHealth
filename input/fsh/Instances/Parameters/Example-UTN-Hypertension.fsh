Instance: Example-ENRICH-Condition
InstanceOf: Condition
Title: "Example of Hypertonus Condition"
Description: "Represents a condition of systemic hypertension"
* clinicalStatus = #active
* code.coding[0].system = "http://snomed.info/sct"
* code.coding[0].code = #38341003
* code.coding[0].display = "Hypertensive disorder, systemic arterial (disorder)"
* subject = Reference(Example-ENRICH-Patient-2)
* encounter = Reference(Example-ENRICH-Encounter-PRtoPR)
* recorder = Reference(Example-ENRICH-Practitioner-PR1)

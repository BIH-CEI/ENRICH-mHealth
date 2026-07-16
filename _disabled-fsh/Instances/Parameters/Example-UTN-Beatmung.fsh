Instance: Example-ENRICH-Invasive-Beatmung
InstanceOf: ENRICH_Procedure_Beatmung
Title: "Example of ENRICH Procedure Beatmung"
Description: "Example instance of a ventilation procedure conforming to ENRICH_Procedure_Beatmung profile"
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/beatmung"
* status = #in-progress


* category.coding[sct].code = $sct#40617009  // e.g. Artificial respiration procedure
* category.coding[sct].display = "Artificial Ventilation"
* code.coding[sct].code = $sct#1258985005 "Invasive mechanical ventilation (regime/therapy)"

* subject = Reference(Example-ENRICH-Patient-2)
* encounter = Reference(Example-ENRICH-Encounter-PRtoPR)

* performedPeriod.start = "2025-01-14T16:48:00+01:00"
* recorder = Reference(Example-ENRICH-Practitioner-PR1)

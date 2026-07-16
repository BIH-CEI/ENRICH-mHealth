Instance: Example-ENRICH-Procedure
InstanceOf: ENRICH-Procedure
Title: "Ultrasound Procedure with Stone Outcome"
Description: "An example Procedure resource conforming to the MII profile where sonography reveals a stone."
Usage: #example

* status = #completed
* code = $sct#16310003 "Ultrasonography"
* subject = Reference(Example-ENRICH-Patient-2)
* encounter = Reference(Example-ENRICH-Encounter-PRtoPR)
* performedDateTime = "2025-01-14T16:49:00+01:00"
* outcome = $sct#31054009 "Ureteric Stone"
Instance: ENRICH-Teleconsultation-PRtoPR-ServiceRequest
InstanceOf: ServiceRequest
Title: "Teleconsultation Request"
Description: "Request for a teleconsultation from practitioner to practitioner"
Usage: #example

* status = #active
* intent = #order

* category.coding.system = "http://terminology.hl7.org/CodeSystem/servicerequest-category"
* category.coding.code = $sct#409063005
* category.coding.display = "Counselling"



* subject = Reference(Example-ENRICH-Patient)
* encounter = Reference(Example-ENRICH-Encounter-PRtoPR)
* requester = Reference(Example-ENRICH-Practitioner-PR1)
* performer = Reference(Example-ENRICH-Practitioner-PR2)

* supportingInfo = Reference(Example-ENRICH-Teleconsultation-PRtoPR)

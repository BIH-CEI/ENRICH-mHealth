Instance: Example-ENRICH-Teleconsultation-PTtoPR
InstanceOf: Composition
Usage: #example
Title: "Teleconsultation note between patient and practitioner"

* status = #final
* type = $loinc#85208-7 "Telehealth Consult note"
* category = $loinc#11488-4 "Consult Note"
* subject = Reference(Example-ENRICH-Patient)
* encounter = Reference(Example-ENRICH-Encounter-PTtoPR)
* date = "2012-01-04T09:10:14Z"
* author = Reference(Example-ENRICH-Practitioner-PR1)
* title = "Consultation Note"

* section[+]
  * title = "Consultation Note Text"
  * code = $loinc#29545-1 "Physical findings Narrative"
  * author = Reference(Example-ENRICH-Practitioner-PR1)
  * text.status = #generated
  * text.div = """
  <div xmlns="http://www.w3.org/1999/xhtml">
    <p>Patient reports mild chest pain during exercise. No other symptoms reported. ECG normal. Advised lifestyle modification and follow-up in 1 month.</p>
  </div>
  """

/////////////////////////////////////////////


Instance: Example-ENRICH-Teleconsultation-PRtoPR
InstanceOf: Composition
Usage: #example
Title: "Teleconsultation note between practitioner and practitioner"
Description: "Teleconsultation note sent to practitioner as part of the Service Request"

* status = #final
* type = $loinc#85208-7 "Telehealth Consult note"
* category = $loinc#11488-4 "Consult Note"
* subject = Reference(Example-ENRICH-Patient-2)
* encounter = Reference(Example-ENRICH-Encounter-PRtoPR)
* date = "2012-01-04T09:10:14Z"
* author = Reference(Example-ENRICH-Practitioner-PR1)
* title = "Consultation Note"

* section[+]
  * title = "Aufnahme"
  * author = Reference(Example-ENRICH-Practitioner-PR1)
  * entry[+] = Reference(Example-ENRICH-AllergyIntolerance)
  * entry[+] = Reference(Example-ENRICHKoerpergewicht)
  * entry[+] = Reference(Example-ENRICH-Koerperroesse)
  * entry[+] = Reference(Example-ENRICH-Sepsis)

* section[+]
  * title = "Vorerkrankungen / Vor-OPs"
  * author = Reference(Example-ENRICH-Practitioner-PR1)
  * entry[+] = Reference(Example-ENRICH-Condition)

* section[+]
  * title = "Vormedikation"
  * author = Reference(Example-ENRICH-Practitioner-PR1)
  * entry[+] = Reference(Example-ENRICH-MedikationStatement)

* section[+]
  * title = "Beatmung"
  * author = Reference(Example-ENRICH-Practitioner-PR1)
  * entry[+] = Reference(Example-ENRICH-Invasive-Beatmung)

* section[+]
  * title = "Adjuvante Therapien"
  * author = Reference(Example-ENRICH-Practitioner-PR1)
  * entry[+] = Reference(Example-ENRICH-VVECMO)

* section[+]
  * title = "Diagnostik"
  * author = Reference(Example-ENRICH-Practitioner-PR1)
  * entry[+] = Reference(Example-ENRICH-Procedure)

* section[+]
  * title = "Labor"
  * author = Reference(Example-ENRICH-Practitioner-PR1)
  * entry[+] = Reference(Example-ENRICHKreatinin)

* section[+]
  * title = "Vital Parameter"
  * author = Reference(Example-ENRICH-Practitioner-PR1)
  * entry[+] = Reference(Example-ENRICHAtemfrequenz) 
  * entry[+] = Reference(Example-ENRICHHerzfrequenz) 
  * entry[+] = Reference(Example-ENRICHKoerpertemperatur) 
  * entry[+] = Reference(Example-ENRICH-Arterieller-Blutdruck) 
  



/////////////////////////////////////////////////////
Extension: CompositionBasedOnServiceRequest
Id: composition-basedon-servicerequest
Title: "Composition BasedOn ServiceRequest"
Description: "Links a Composition to the ServiceRequest it is based on."
* value[x] only Reference(ServiceRequest)
* valueReference 1..1

Instance: Example-ENRICH-Teleconsultation-PRtoPR-Return
InstanceOf: Composition
Usage: #example
Title: "Teleconsultation note between practitioner and practitioner"
Description: "Teleconsultation note sent back to practitioner based on the Service Request"

* status = #final
* type = $loinc#85208-7 "Telehealth Consult note"
* category = $loinc#11488-4 "Consult Note"
* subject = Reference(Example-ENRICH-Patient-2)
* encounter = Reference(Example-ENRICH-Encounter-PRtoPR)
* date = "2012-01-04T09:10:14Z"
* author = Reference(Example-ENRICH-Practitioner-PR2)
* title = "Consultation Note"

* section[+]
  * title = "Aufnahme"
  * author = Reference(Example-ENRICH-Practitioner-PR1)
  * entry[+] = Reference(Example-ENRICH-AllergyIntolerance)
  * entry[+] = Reference(Example-ENRICHKoerpergewicht)
  * entry[+] = Reference(Example-ENRICH-Koerpergroesse)
  * entry[+] = Reference(Example-ENRICH-Sepsis)

* section[+]
  * title = "Vorerkrankungen / Vor-OPs"
  * author = Reference(Example-ENRICH-Practitioner-PR1)
  * entry[+] = Reference(Example-ENRICH-Condition)

* section[+]
  * title = "Vormedikation"
  * author = Reference(Example-ENRICH-Practitioner-PR1)
  * entry[+] = Reference(Example-ENRICH-MedikationStatement)

* section[+]
  * title = "Beatmung"
  * author = Reference(Example-ENRICH-Practitioner-PR1)
  * entry[+] = Reference(Example-ENRICH-Invasive-Beatmung)

* section[+]
  * title = "Adjuvante Therapien"
  * author = Reference(Example-ENRICH-Practitioner-PR1)
  * entry[+] = Reference(Example-ENRICH-VVECMO)

* section[+]
  * title = "Diagnostik"
  * author = Reference(Example-ENRICH-Practitioner-PR1)
  * entry[+] = Reference(Example-ENRICH-Procedure)

* section[+]
  * title = "Labor"
  * author = Reference(Example-ENRICH-Practitioner-PR1)
  * entry[+] = Reference(Example-ENRICHKreatinin)

* section[+]
  * title = "Vital Parameter"
  * author = Reference(Example-ENRICH-Practitioner-PR1)
  * entry[+] = Reference(Example-ENRICHAtemfrequenz) 
  * entry[+] = Reference(Example-ENRICHHerzfrequenz) 
  * entry[+] = Reference(Example-ENRICHKoerpertemperatur) 
  * entry[+] = Reference(Example-ENRICH-Arterieller-Blutdruck) 

* section[+]
  * title = "Teleconsultation Note"
  * author = Reference(Example-ENRICH-Practitioner-PR2)
  * text.status = #generated
  * text.div = """
  <div xmlns="http://www.w3.org/1999/xhtml">
    <p>Patient reports mild chest pain during exercise. No other symptoms reported. ECG normal. Advised lifestyle modification and follow-up in 1 month.</p>
  </div>
  """
* extension[+].url = "http://example.org/fhir/StructureDefinition/composition-basedon-servicerequest"
* extension[=].valueReference = Reference(ENRICH-Teleconsultation-PRtoPR-ServiceRequest)

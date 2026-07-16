Instance: Example-ENRICHEKG
InstanceOf: ENRICHEKG
Usage: #example
Description: "An example Observation for a single-lead ECG recorded by a wearable, carrying the curve as SampledData."

* category = $observation-category#procedure
* code.coding[loinc] = $loinc#11524-6 "EKG study"
* code.coding[snomed] = $sct#106073009 "Electrocardiographic procedure (procedure)"
* code.text = "EKG"

* status = #final
* subject = Reference(Patient/PatientinMusterfrau)
* effectiveDateTime = "2020-10-11"
* performer = Reference(Practitioner/1)

// Lead I curve as SampledData (illustrative, abbreviated sample series)
* component[ekgLeads].code = $sct#251199005 "Electrocardiographic lead I"
* component[ekgLeads].valueSampledData.origin = 0 'mV' "mV"
* component[ekgLeads].valueSampledData.period = 4
* component[ekgLeads].valueSampledData.dimensions = 1
* component[ekgLeads].valueSampledData.data = "0 1 3 8 15 12 6 2 0 -1 0"

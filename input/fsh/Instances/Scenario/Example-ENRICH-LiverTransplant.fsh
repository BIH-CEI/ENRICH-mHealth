// =====================================================================
// Scenario: 45-year-old liver transplant patient, monitored with a
// Withings ScanWatch 2 for 2 weeks before and 2 weeks after surgery.
// Vital signs (SpO2 + heart rate) are captured every 6 hours.
// Surgery (liver transplantation): 2026-03-02
//   pre-op window:  2026-02-16 .. 2026-03-01 (56 timepoints, every 6h)
//   post-op window: 2026-03-03 .. 2026-03-16 (56 timepoints, every 6h)
// => 56 timepoints x 2 periods x 2 parameters = 224 Observations
// (generated programmatically; see instances.md for the scenario summary)
// =====================================================================

Instance: Example-ENRICH-Patient-LiverTx
InstanceOf: ENRICHPatient
Usage: #example
Description: "45-year-old male liver transplant patient (ENRICH-mHealth monitoring scenario)."

* id = "enrich-mhealth-patient-livertx"
* identifier.type.coding[0].system = "https://example.com"
* identifier.type.coding[0].code = #MR
* identifier.system = "https://example.com"
* identifier.value = "LTX-4501"
* name[0].family = "Beispiel"
* name[0].given = "Thomas"
* address.type = #both
* address.line[0] = "Transplantweg 12"
* address.city = "Berlin"
* address.postalCode = "13353"
* address.country = "DE"
* birthDate = "1981-04-10"
* gender = #male


Instance: Example-ENRICH-Device-Withings-LiverTx
InstanceOf: ENRICHPersonalHealthDevice
Usage: #example
Description: "Withings ScanWatch 2 issued to the liver transplant patient for peri-operative vital sign monitoring."

* status = #active
* manufacturer = "Withings"
* deviceName.name = "ScanWatch 2"
* deviceName.type = #manufacturer-name
* serialNumber = "SW2-LTX-004501"
* modelNumber = "ScanWatch 2"
* type.text = "Hybrid smartwatch (SpO2, heart rate, ECG, temperature)"
* version.value = "2.0.0"
* patient = Reference(Example-ENRICH-Patient-LiverTx)


Instance: Example-ENRICH-Procedure-LiverTransplant
InstanceOf: ENRICH-Procedure
Usage: #example
Title: "Liver Transplantation"
Description: "Orthotopic liver transplantation performed on the ENRICH-mHealth monitoring patient."

* status = #completed
* code = $sct#18027006 "Transplantation of liver"
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* performedDateTime = "2026-03-02"


Instance: Example-ENRICH-SpO2-LiverTx-Pre-01
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "pre-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 1/56 at 2026-02-16T00:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 97 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-16T00:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Pre-01
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "pre-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 1/56 at 2026-02-16T00:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 66 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-16T00:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Pre-02
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "pre-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 2/56 at 2026-02-16T06:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 98 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-16T06:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Pre-02
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "pre-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 2/56 at 2026-02-16T06:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 76 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-16T06:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Pre-03
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "pre-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 3/56 at 2026-02-16T12:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 97 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-16T12:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Pre-03
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "pre-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 3/56 at 2026-02-16T12:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 72 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-16T12:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Pre-04
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "pre-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 4/56 at 2026-02-16T18:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 96 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-16T18:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Pre-04
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "pre-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 4/56 at 2026-02-16T18:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 67 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-16T18:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Pre-05
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "pre-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 5/56 at 2026-02-17T00:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 97 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-17T00:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Pre-05
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "pre-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 5/56 at 2026-02-17T00:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 66 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-17T00:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Pre-06
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "pre-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 6/56 at 2026-02-17T06:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 98 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-17T06:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Pre-06
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "pre-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 6/56 at 2026-02-17T06:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 76 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-17T06:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Pre-07
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "pre-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 7/56 at 2026-02-17T12:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 97 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-17T12:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Pre-07
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "pre-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 7/56 at 2026-02-17T12:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 72 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-17T12:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Pre-08
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "pre-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 8/56 at 2026-02-17T18:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 96 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-17T18:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Pre-08
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "pre-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 8/56 at 2026-02-17T18:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 67 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-17T18:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Pre-09
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "pre-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 9/56 at 2026-02-18T00:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 97 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-18T00:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Pre-09
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "pre-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 9/56 at 2026-02-18T00:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 66 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-18T00:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Pre-10
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "pre-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 10/56 at 2026-02-18T06:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 98 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-18T06:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Pre-10
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "pre-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 10/56 at 2026-02-18T06:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 76 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-18T06:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Pre-11
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "pre-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 11/56 at 2026-02-18T12:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 97 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-18T12:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Pre-11
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "pre-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 11/56 at 2026-02-18T12:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 72 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-18T12:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Pre-12
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "pre-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 12/56 at 2026-02-18T18:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 96 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-18T18:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Pre-12
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "pre-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 12/56 at 2026-02-18T18:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 67 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-18T18:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Pre-13
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "pre-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 13/56 at 2026-02-19T00:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 97 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-19T00:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Pre-13
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "pre-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 13/56 at 2026-02-19T00:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 66 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-19T00:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Pre-14
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "pre-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 14/56 at 2026-02-19T06:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 98 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-19T06:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Pre-14
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "pre-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 14/56 at 2026-02-19T06:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 76 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-19T06:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Pre-15
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "pre-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 15/56 at 2026-02-19T12:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 97 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-19T12:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Pre-15
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "pre-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 15/56 at 2026-02-19T12:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 72 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-19T12:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Pre-16
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "pre-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 16/56 at 2026-02-19T18:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 96 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-19T18:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Pre-16
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "pre-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 16/56 at 2026-02-19T18:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 67 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-19T18:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Pre-17
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "pre-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 17/56 at 2026-02-20T00:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 97 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-20T00:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Pre-17
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "pre-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 17/56 at 2026-02-20T00:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 66 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-20T00:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Pre-18
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "pre-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 18/56 at 2026-02-20T06:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 98 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-20T06:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Pre-18
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "pre-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 18/56 at 2026-02-20T06:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 76 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-20T06:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Pre-19
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "pre-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 19/56 at 2026-02-20T12:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 97 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-20T12:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Pre-19
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "pre-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 19/56 at 2026-02-20T12:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 72 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-20T12:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Pre-20
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "pre-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 20/56 at 2026-02-20T18:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 96 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-20T18:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Pre-20
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "pre-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 20/56 at 2026-02-20T18:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 67 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-20T18:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Pre-21
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "pre-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 21/56 at 2026-02-21T00:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 97 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-21T00:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Pre-21
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "pre-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 21/56 at 2026-02-21T00:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 66 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-21T00:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Pre-22
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "pre-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 22/56 at 2026-02-21T06:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 98 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-21T06:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Pre-22
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "pre-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 22/56 at 2026-02-21T06:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 76 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-21T06:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Pre-23
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "pre-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 23/56 at 2026-02-21T12:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 97 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-21T12:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Pre-23
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "pre-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 23/56 at 2026-02-21T12:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 72 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-21T12:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Pre-24
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "pre-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 24/56 at 2026-02-21T18:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 96 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-21T18:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Pre-24
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "pre-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 24/56 at 2026-02-21T18:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 67 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-21T18:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Pre-25
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "pre-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 25/56 at 2026-02-22T00:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 97 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-22T00:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Pre-25
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "pre-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 25/56 at 2026-02-22T00:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 66 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-22T00:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Pre-26
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "pre-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 26/56 at 2026-02-22T06:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 98 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-22T06:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Pre-26
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "pre-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 26/56 at 2026-02-22T06:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 76 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-22T06:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Pre-27
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "pre-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 27/56 at 2026-02-22T12:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 97 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-22T12:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Pre-27
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "pre-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 27/56 at 2026-02-22T12:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 72 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-22T12:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Pre-28
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "pre-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 28/56 at 2026-02-22T18:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 96 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-22T18:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Pre-28
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "pre-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 28/56 at 2026-02-22T18:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 67 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-22T18:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Pre-29
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "pre-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 29/56 at 2026-02-23T00:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 97 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-23T00:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Pre-29
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "pre-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 29/56 at 2026-02-23T00:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 66 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-23T00:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Pre-30
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "pre-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 30/56 at 2026-02-23T06:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 98 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-23T06:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Pre-30
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "pre-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 30/56 at 2026-02-23T06:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 76 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-23T06:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Pre-31
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "pre-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 31/56 at 2026-02-23T12:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 97 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-23T12:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Pre-31
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "pre-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 31/56 at 2026-02-23T12:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 72 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-23T12:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Pre-32
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "pre-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 32/56 at 2026-02-23T18:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 96 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-23T18:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Pre-32
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "pre-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 32/56 at 2026-02-23T18:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 67 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-23T18:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Pre-33
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "pre-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 33/56 at 2026-02-24T00:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 97 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-24T00:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Pre-33
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "pre-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 33/56 at 2026-02-24T00:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 66 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-24T00:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Pre-34
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "pre-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 34/56 at 2026-02-24T06:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 98 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-24T06:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Pre-34
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "pre-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 34/56 at 2026-02-24T06:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 76 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-24T06:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Pre-35
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "pre-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 35/56 at 2026-02-24T12:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 97 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-24T12:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Pre-35
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "pre-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 35/56 at 2026-02-24T12:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 72 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-24T12:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Pre-36
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "pre-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 36/56 at 2026-02-24T18:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 96 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-24T18:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Pre-36
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "pre-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 36/56 at 2026-02-24T18:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 67 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-24T18:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Pre-37
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "pre-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 37/56 at 2026-02-25T00:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 97 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-25T00:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Pre-37
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "pre-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 37/56 at 2026-02-25T00:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 66 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-25T00:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Pre-38
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "pre-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 38/56 at 2026-02-25T06:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 98 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-25T06:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Pre-38
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "pre-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 38/56 at 2026-02-25T06:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 76 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-25T06:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Pre-39
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "pre-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 39/56 at 2026-02-25T12:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 97 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-25T12:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Pre-39
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "pre-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 39/56 at 2026-02-25T12:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 72 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-25T12:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Pre-40
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "pre-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 40/56 at 2026-02-25T18:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 96 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-25T18:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Pre-40
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "pre-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 40/56 at 2026-02-25T18:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 67 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-25T18:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Pre-41
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "pre-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 41/56 at 2026-02-26T00:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 97 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-26T00:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Pre-41
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "pre-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 41/56 at 2026-02-26T00:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 66 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-26T00:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Pre-42
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "pre-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 42/56 at 2026-02-26T06:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 98 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-26T06:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Pre-42
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "pre-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 42/56 at 2026-02-26T06:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 76 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-26T06:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Pre-43
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "pre-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 43/56 at 2026-02-26T12:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 97 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-26T12:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Pre-43
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "pre-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 43/56 at 2026-02-26T12:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 72 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-26T12:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Pre-44
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "pre-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 44/56 at 2026-02-26T18:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 96 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-26T18:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Pre-44
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "pre-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 44/56 at 2026-02-26T18:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 67 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-26T18:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Pre-45
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "pre-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 45/56 at 2026-02-27T00:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 97 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-27T00:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Pre-45
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "pre-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 45/56 at 2026-02-27T00:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 66 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-27T00:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Pre-46
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "pre-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 46/56 at 2026-02-27T06:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 98 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-27T06:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Pre-46
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "pre-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 46/56 at 2026-02-27T06:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 76 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-27T06:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Pre-47
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "pre-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 47/56 at 2026-02-27T12:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 97 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-27T12:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Pre-47
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "pre-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 47/56 at 2026-02-27T12:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 72 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-27T12:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Pre-48
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "pre-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 48/56 at 2026-02-27T18:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 96 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-27T18:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Pre-48
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "pre-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 48/56 at 2026-02-27T18:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 67 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-27T18:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Pre-49
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "pre-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 49/56 at 2026-02-28T00:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 97 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-28T00:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Pre-49
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "pre-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 49/56 at 2026-02-28T00:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 66 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-28T00:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Pre-50
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "pre-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 50/56 at 2026-02-28T06:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 98 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-28T06:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Pre-50
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "pre-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 50/56 at 2026-02-28T06:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 76 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-28T06:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Pre-51
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "pre-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 51/56 at 2026-02-28T12:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 97 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-28T12:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Pre-51
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "pre-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 51/56 at 2026-02-28T12:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 72 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-28T12:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Pre-52
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "pre-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 52/56 at 2026-02-28T18:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 96 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-28T18:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Pre-52
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "pre-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 52/56 at 2026-02-28T18:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 67 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-02-28T18:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Pre-53
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "pre-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 53/56 at 2026-03-01T00:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 97 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-01T00:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Pre-53
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "pre-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 53/56 at 2026-03-01T00:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 66 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-01T00:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Pre-54
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "pre-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 54/56 at 2026-03-01T06:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 98 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-01T06:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Pre-54
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "pre-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 54/56 at 2026-03-01T06:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 76 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-01T06:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Pre-55
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "pre-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 55/56 at 2026-03-01T12:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 97 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-01T12:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Pre-55
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "pre-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 55/56 at 2026-03-01T12:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 72 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-01T12:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Pre-56
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "pre-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 56/56 at 2026-03-01T18:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 96 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-01T18:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Pre-56
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "pre-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 56/56 at 2026-03-01T18:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 67 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-01T18:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Post-01
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "post-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 1/56 at 2026-03-03T00:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 94 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-03T00:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Post-01
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "post-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 1/56 at 2026-03-03T00:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 84 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-03T00:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Post-02
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "post-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 2/56 at 2026-03-03T06:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 95 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-03T06:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Post-02
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "post-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 2/56 at 2026-03-03T06:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 94 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-03T06:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Post-03
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "post-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 3/56 at 2026-03-03T12:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 94 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-03T12:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Post-03
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "post-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 3/56 at 2026-03-03T12:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 90 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-03T12:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Post-04
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "post-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 4/56 at 2026-03-03T18:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 94 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-03T18:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Post-04
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "post-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 4/56 at 2026-03-03T18:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 85 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-03T18:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Post-05
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "post-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 5/56 at 2026-03-04T00:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 95 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-04T00:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Post-05
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "post-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 5/56 at 2026-03-04T00:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 84 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-04T00:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Post-06
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "post-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 6/56 at 2026-03-04T06:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 94 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-04T06:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Post-06
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "post-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 6/56 at 2026-03-04T06:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 93 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-04T06:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Post-07
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "post-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 7/56 at 2026-03-04T12:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 94 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-04T12:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Post-07
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "post-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 7/56 at 2026-03-04T12:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 89 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-04T12:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Post-08
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "post-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 8/56 at 2026-03-04T18:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 95 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-04T18:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Post-08
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "post-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 8/56 at 2026-03-04T18:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 84 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-04T18:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Post-09
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "post-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 9/56 at 2026-03-05T00:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 94 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-05T00:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Post-09
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "post-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 9/56 at 2026-03-05T00:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 83 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-05T00:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Post-10
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "post-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 10/56 at 2026-03-05T06:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 94 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-05T06:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Post-10
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "post-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 10/56 at 2026-03-05T06:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 93 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-05T06:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Post-11
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "post-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 11/56 at 2026-03-05T12:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 95 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-05T12:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Post-11
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "post-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 11/56 at 2026-03-05T12:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 88 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-05T12:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Post-12
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "post-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 12/56 at 2026-03-05T18:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 94 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-05T18:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Post-12
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "post-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 12/56 at 2026-03-05T18:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 83 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-05T18:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Post-13
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "post-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 13/56 at 2026-03-06T00:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 94 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-06T00:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Post-13
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "post-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 13/56 at 2026-03-06T00:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 82 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-06T00:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Post-14
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "post-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 14/56 at 2026-03-06T06:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 95 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-06T06:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Post-14
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "post-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 14/56 at 2026-03-06T06:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 92 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-06T06:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Post-15
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "post-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 15/56 at 2026-03-06T12:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 95 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-06T12:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Post-15
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "post-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 15/56 at 2026-03-06T12:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 88 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-06T12:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Post-16
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "post-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 16/56 at 2026-03-06T18:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 95 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-06T18:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Post-16
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "post-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 16/56 at 2026-03-06T18:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 82 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-06T18:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Post-17
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "post-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 17/56 at 2026-03-07T00:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 96 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-07T00:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Post-17
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "post-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 17/56 at 2026-03-07T00:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 81 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-07T00:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Post-18
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "post-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 18/56 at 2026-03-07T06:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 95 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-07T06:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Post-18
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "post-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 18/56 at 2026-03-07T06:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 91 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-07T06:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Post-19
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "post-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 19/56 at 2026-03-07T12:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 95 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-07T12:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Post-19
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "post-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 19/56 at 2026-03-07T12:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 87 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-07T12:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Post-20
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "post-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 20/56 at 2026-03-07T18:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 96 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-07T18:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Post-20
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "post-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 20/56 at 2026-03-07T18:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 82 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-07T18:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Post-21
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "post-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 21/56 at 2026-03-08T00:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 95 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-08T00:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Post-21
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "post-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 21/56 at 2026-03-08T00:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 80 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-08T00:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Post-22
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "post-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 22/56 at 2026-03-08T06:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 95 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-08T06:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Post-22
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "post-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 22/56 at 2026-03-08T06:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 90 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-08T06:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Post-23
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "post-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 23/56 at 2026-03-08T12:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 96 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-08T12:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Post-23
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "post-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 23/56 at 2026-03-08T12:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 86 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-08T12:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Post-24
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "post-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 24/56 at 2026-03-08T18:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 95 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-08T18:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Post-24
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "post-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 24/56 at 2026-03-08T18:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 81 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-08T18:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Post-25
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "post-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 25/56 at 2026-03-09T00:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 95 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-09T00:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Post-25
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "post-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 25/56 at 2026-03-09T00:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 80 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-09T00:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Post-26
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "post-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 26/56 at 2026-03-09T06:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 96 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-09T06:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Post-26
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "post-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 26/56 at 2026-03-09T06:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 89 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-09T06:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Post-27
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "post-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 27/56 at 2026-03-09T12:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 95 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-09T12:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Post-27
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "post-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 27/56 at 2026-03-09T12:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 85 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-09T12:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Post-28
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "post-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 28/56 at 2026-03-09T18:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 95 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-09T18:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Post-28
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "post-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 28/56 at 2026-03-09T18:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 80 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-09T18:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Post-29
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "post-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 29/56 at 2026-03-10T00:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 97 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-10T00:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Post-29
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "post-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 29/56 at 2026-03-10T00:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 79 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-10T00:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Post-30
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "post-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 30/56 at 2026-03-10T06:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 96 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-10T06:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Post-30
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "post-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 30/56 at 2026-03-10T06:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 89 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-10T06:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Post-31
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "post-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 31/56 at 2026-03-10T12:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 96 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-10T12:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Post-31
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "post-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 31/56 at 2026-03-10T12:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 84 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-10T12:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Post-32
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "post-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 32/56 at 2026-03-10T18:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 97 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-10T18:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Post-32
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "post-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 32/56 at 2026-03-10T18:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 79 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-10T18:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Post-33
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "post-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 33/56 at 2026-03-11T00:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 96 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-11T00:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Post-33
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "post-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 33/56 at 2026-03-11T00:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 78 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-11T00:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Post-34
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "post-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 34/56 at 2026-03-11T06:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 96 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-11T06:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Post-34
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "post-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 34/56 at 2026-03-11T06:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 88 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-11T06:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Post-35
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "post-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 35/56 at 2026-03-11T12:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 97 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-11T12:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Post-35
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "post-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 35/56 at 2026-03-11T12:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 84 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-11T12:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Post-36
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "post-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 36/56 at 2026-03-11T18:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 96 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-11T18:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Post-36
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "post-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 36/56 at 2026-03-11T18:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 78 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-11T18:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Post-37
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "post-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 37/56 at 2026-03-12T00:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 96 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-12T00:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Post-37
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "post-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 37/56 at 2026-03-12T00:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 77 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-12T00:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Post-38
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "post-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 38/56 at 2026-03-12T06:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 97 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-12T06:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Post-38
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "post-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 38/56 at 2026-03-12T06:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 87 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-12T06:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Post-39
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "post-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 39/56 at 2026-03-12T12:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 96 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-12T12:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Post-39
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "post-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 39/56 at 2026-03-12T12:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 83 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-12T12:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Post-40
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "post-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 40/56 at 2026-03-12T18:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 96 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-12T18:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Post-40
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "post-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 40/56 at 2026-03-12T18:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 78 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-12T18:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Post-41
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "post-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 41/56 at 2026-03-13T00:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 97 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-13T00:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Post-41
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "post-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 41/56 at 2026-03-13T00:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 76 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-13T00:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Post-42
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "post-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 42/56 at 2026-03-13T06:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 96 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-13T06:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Post-42
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "post-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 42/56 at 2026-03-13T06:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 86 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-13T06:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Post-43
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "post-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 43/56 at 2026-03-13T12:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 97 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-13T12:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Post-43
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "post-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 43/56 at 2026-03-13T12:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 82 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-13T12:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Post-44
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "post-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 44/56 at 2026-03-13T18:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 98 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-13T18:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Post-44
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "post-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 44/56 at 2026-03-13T18:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 77 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-13T18:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Post-45
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "post-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 45/56 at 2026-03-14T00:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 97 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-14T00:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Post-45
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "post-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 45/56 at 2026-03-14T00:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 76 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-14T00:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Post-46
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "post-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 46/56 at 2026-03-14T06:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 97 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-14T06:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Post-46
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "post-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 46/56 at 2026-03-14T06:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 85 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-14T06:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Post-47
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "post-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 47/56 at 2026-03-14T12:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 98 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-14T12:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Post-47
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "post-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 47/56 at 2026-03-14T12:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 81 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-14T12:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Post-48
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "post-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 48/56 at 2026-03-14T18:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 97 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-14T18:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Post-48
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "post-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 48/56 at 2026-03-14T18:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 76 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-14T18:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Post-49
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "post-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 49/56 at 2026-03-15T00:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 97 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-15T00:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Post-49
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "post-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 49/56 at 2026-03-15T00:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 75 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-15T00:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Post-50
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "post-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 50/56 at 2026-03-15T06:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 98 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-15T06:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Post-50
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "post-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 50/56 at 2026-03-15T06:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 85 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-15T06:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Post-51
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "post-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 51/56 at 2026-03-15T12:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 97 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-15T12:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Post-51
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "post-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 51/56 at 2026-03-15T12:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 80 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-15T12:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Post-52
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "post-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 52/56 at 2026-03-15T18:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 97 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-15T18:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Post-52
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "post-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 52/56 at 2026-03-15T18:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 75 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-15T18:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Post-53
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "post-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 53/56 at 2026-03-16T00:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 98 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-16T00:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Post-53
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "post-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 53/56 at 2026-03-16T00:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 74 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-16T00:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Post-54
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "post-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 54/56 at 2026-03-16T06:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 97 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-16T06:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Post-54
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "post-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 54/56 at 2026-03-16T06:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 84 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-16T06:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Post-55
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "post-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 55/56 at 2026-03-16T12:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 97 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-16T12:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Post-55
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "post-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 55/56 at 2026-03-16T12:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 80 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-16T12:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-SpO2-LiverTx-Post-56
InstanceOf: ENRICHSauerstoffsaettigung
Usage: #example
Description: "post-op SpO2 (Withings ScanWatch 2), 6-hourly timepoint 56/56 at 2026-03-16T18:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#150324 "MDC_PULS_OXIM_SAT_O2"
* code.text = "Sauerstoffsättigung (SpO2)"
* valueQuantity = 98 '%' "%"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-16T18:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Instance: Example-ENRICH-HR-LiverTx-Post-56
InstanceOf: ENRICHHerzfrequenz
Usage: #example
Description: "post-op heart rate (Withings ScanWatch 2), 6-hourly timepoint 56/56 at 2026-03-16T18:00:00+01:00."

* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* valueQuantity = 74 '/min' "per minute"
* status = #final
* subject = Reference(Example-ENRICH-Patient-LiverTx)
* effectiveDateTime = "2026-03-16T18:00:00+01:00"
* device = Reference(Example-ENRICH-Device-Withings-LiverTx)

Profile: ENRICH_Observation_Arterieller_Blutdruck
Parent: ISiKBlutdruckSystemischArteriell
Id: enrich-mhealth-observation-arterieller-blutdruck
Title: "ENRICH-mHealth Observation Arterieller Blutdruck"
Description: "Profile for documenting systemic arterial blood pressure observations within ENRICH-mHealth. Based on ISiKBlutdruckSystemischArteriell (ISiK Vitalparameter 6.0.0)."

* status MS
* category MS
* code MS
* subject MS
* encounter MS
* effective[x] MS
* performer MS
* dataAbsentReason MS
* method MS
* device MS

// Systolic / Diastolic / Mean components are pre-sliced by the ISiK parent
* component[SystolicBP] MS
* component[SystolicBP].value[x] MS
* component[DiastolicBP] MS
* component[DiastolicBP].value[x] MS
* component[meanBP] MS

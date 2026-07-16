Profile: ENRICHGCS
Parent: ISiKGCS
Id: enrich-mhealth-isik-gcs
Title: "ENRICH-mHealth Observation Glasgow Coma Scale (GCS) Profile"
Description: "Profile for documenting the Glasgow Coma Scale (GCS) total score and its eye/verbal/motor sub-scores within ENRICH-mHealth. Based on ISiKGCS (ISiK Vitalparameter 6.0.0)."

* status MS
* category MS
* code MS
* subject MS
* encounter MS
* effective[x] MS
* performer MS
* value[x] MS
* value[x].value MS
* dataAbsentReason MS
* method MS
* device MS

// Sub-scores are pre-sliced by the ISiK parent
* component[Eye] MS
* component[Eye].value[x] MS
* component[Verbal] MS
* component[Verbal].value[x] MS
* component[Motor] MS
* component[Motor].value[x] MS

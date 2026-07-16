Profile: ENRICHEKG
Parent: ISiKEKG
Id: enrich-mhealth-isik-ekg
Title: "ENRICH-mHealth Observation EKG Profile"
Description: "Profile for documenting electrocardiogram (EKG/ECG) observations within ENRICH-mHealth. Based on ISiKEKG (ISiK Vitalparameter 6.0.0). Supports wearable single-/multi-lead ECG via SampledData components."

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

// ECG curve data is carried in the ekgLeads component slice (SampledData)
* component[ekgLeads] MS
* component[ekgLeads].value[x] MS
* component[ekgLeads].value[x].origin MS
* component[ekgLeads].value[x].period MS
* component[ekgLeads].value[x].dimensions MS
* component[ekgLeads].value[x].data MS

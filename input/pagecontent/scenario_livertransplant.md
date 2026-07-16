This page shows an end-to-end example of **wearable-based peri-operative vital sign monitoring** in ENRICH-mHealth, using the ISiK Vitalparameter observation profiles together with the HDDT-derived [Personal Health Device](StructureDefinition-enrich-mhealth-personal-health-device.html) profile.

### Clinical narrative

A **45-year-old male patient** is scheduled for an **orthotopic liver transplantation**. To capture his physiological baseline and his post-operative recovery outside the hospital, he is equipped with a **Withings ScanWatch 2** and monitored **for two weeks before and two weeks after** the transplantation (surgery on **2026-03-02**).

Throughout both periods the wearable records **arterial oxygen saturation (SpO2)** and **heart rate** **every 6 hours** (four measurements per day). The pre-operative series documents a stable baseline; the post-operative series shows the expected recovery trend — a transiently reduced SpO2 that normalises and an initially elevated heart rate that settles over the two weeks.

Every measurement is captured as an `Observation` that **references the wearable** via `Observation.device`, so each value carries explicit **device provenance** back to the registered Personal Health Device.

### Monitoring design

| | |
|---|---|
| Device | Withings ScanWatch 2 ([Personal Health Device](Device-Example-ENRICH-Device-Withings-LiverTx.html)) |
| Parameters | SpO2 ([profile](StructureDefinition-enrich-mhealth-isik-sauerstoffsaettigung.html)), heart rate ([profile](StructureDefinition-isik-herzfrequenz.html)) |
| Sampling interval | every 6 hours (4× / day) |
| Pre-op window | 2026-02-16 … 2026-03-01 (56 timepoints) |
| Post-op window | 2026-03-03 … 2026-03-16 (56 timepoints) |
| Total observations | 56 × 2 periods × 2 parameters = **224** |

The full series is named `Example-ENRICH-{SpO2\|HR}-LiverTx-{Pre\|Post}-01 … -56`; all 224 instances are listed under [FHIR Artifacts](artifacts.html).

### Timeline

| Date | Event | Resource(s) |
|---|---|---|
| 2026-02-16 – 2026-03-01 | Pre-operative baseline monitoring, SpO2 + heart rate every 6 h | [SpO2 pre-op #1](Observation-Example-ENRICH-SpO2-LiverTx-Pre-01.html), [Heart rate pre-op #1](Observation-Example-ENRICH-HR-LiverTx-Pre-01.html) |
| 2026-03-02 | Orthotopic liver transplantation | [Liver Transplantation](Procedure-Example-ENRICH-Procedure-LiverTransplant.html) |
| 2026-03-03 – 2026-03-16 | Post-operative recovery monitoring, SpO2 + heart rate every 6 h | [SpO2 post-op #1](Observation-Example-ENRICH-SpO2-LiverTx-Post-01.html), [Heart rate post-op #1](Observation-Example-ENRICH-HR-LiverTx-Post-01.html) |

### Information model

| Element | Resource | Example instance |
|---|---|---|
| Patient (45 y, male) | `Patient` | [Patient](Patient-enrich-mhealth-patient-livertx.html) |
| Wearable | `Device` (Personal Health Device) | [Withings ScanWatch 2](Device-Example-ENRICH-Device-Withings-LiverTx.html) |
| Transplantation | `Procedure` | [Liver Transplantation](Procedure-Example-ENRICH-Procedure-LiverTransplant.html) |
| Oxygen saturation | `Observation` (SpO2) | [SpO2 pre-op #1](Observation-Example-ENRICH-SpO2-LiverTx-Pre-01.html) … `-56`, [post-op #1](Observation-Example-ENRICH-SpO2-LiverTx-Post-01.html) … `-56` |
| Heart rate | `Observation` (Herzfrequenz) | [Heart rate pre-op #1](Observation-Example-ENRICH-HR-LiverTx-Pre-01.html) … `-56`, [post-op #1](Observation-Example-ENRICH-HR-LiverTx-Post-01.html) … `-56` |

### Links in the example

- **Device provenance:** every `Observation.device` references the [Withings ScanWatch 2](Device-Example-ENRICH-Device-Withings-LiverTx.html) Personal Health Device.
- **Subject:** all resources reference the same [Patient](Patient-enrich-mhealth-patient-livertx.html) via `subject` / `patient`.
- **Coding:** each observation carries both a LOINC code and the corresponding IEEE 11073 MDC code (e.g. `MDC_PULS_OXIM_SAT_O2`, `MDC_ECG_HEART_RATE`), as inherited from the ISiK Vitalparameter profiles.

{: .grid }

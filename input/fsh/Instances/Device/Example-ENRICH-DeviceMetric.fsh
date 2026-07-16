Instance: Example-ENRICH-DeviceMetric-SpO2
InstanceOf: ENRICHDeviceMetric
Usage: #example
Description: "SpO2 sensor of the Corsano wearable, with its calibration status."

* type = urn:iso:std:iso:11073:10101#150456 "MDC_PULS_OXIM_SAT_O2"
* category = #measurement
* operationalStatus = #on
* unit = $unitsofmeasure#% "%"
* source = Reference(Example-ENRICH-Device-Corsano)
* calibration.type = #two-point
* calibration.state = #calibrated
* calibration.time = "2020-10-11T09:00:00Z"

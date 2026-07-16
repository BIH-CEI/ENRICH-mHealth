Profile: ENRICHDeviceMetric
Parent: DeviceMetric
Id: enrich-mhealth-device-metric
Title: "ENRICH-mHealth Device Metric (Sensor Type and Calibration Status)"
Description: "Profile for a single metric/sensor of an ENRICH-mHealth Personal Health Device, capturing the sensor type (IEEE 11073 MDC) and its calibration status. Multiple sensors reference one device via `source` (e.g. a smartwatch reporting both pulse and SpO2). Modeled after the gematik HDDT `hddt-sensor-type-and-calibration-status` (DeviceMetric)."

* type 1.. MS
* category 1.. MS
* operationalStatus MS
* unit MS
* source 1.. MS
* source only Reference(ENRICHPersonalHealthDevice)
* parent MS
* calibration MS
* calibration.type MS
* calibration.state 1.. MS
* calibration.time MS

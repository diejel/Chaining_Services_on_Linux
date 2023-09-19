# Chaining_Services_on_Linux
A briefly example about how to chaining services on Linux

![chainin_services_diagram](https://github.com/diejel/Chaining_Services_on_Linux/assets/15971140/5d81548d-abf3-4364-96ac-97a2346535d3)

## The logic behind this example
As intended to create a dummy service simulation, both scripts (do-backup & upload-backup)
generate a RANDOM number between {1..5}, if this number is equal to 02
the output is SUCCESS, in other situation is considered as FAILED.

### PartOf on [Unit]
This is needed in order to stop services even not stopping directly,
if upload-backup.service is part of do-backup.service. Just only
is nedeed to stop do-backup.service that upload-backup.service will
stop too.

### Intermediate Validation
Is considered the exit code and the output of its result and is saved
into a temporary file which will be used at ExecStartPost step for validation
purpose.

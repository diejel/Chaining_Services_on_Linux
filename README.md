# Chaining Services on Linux
A briefly example about how to chain services on Linux systems.

## Schematic Diagram 
![chainin_services_diagram](https://github.com/diejel/Chaining_Services_on_Linux/assets/15971140/5d81548d-abf3-4364-96ac-97a2346535d3)

## The logic behind this example
Was intended to create a "dummy" service simulation, so was created 02 shell scripts (do-backup.sh & upload-backup.sh). Those scripts generate a RANDOM number between {1..5}. For convenience, was decided that if the RANDOM number is equal to "02" the output is SUCCESS, in other situation is considered as FAILED status. Both scripts will represent services that perform specific task but one depends on the other.

## Customized Systemd Unit Files
### do-backup.service
This is the main service, that will contain 02 start type, the first one is for executing the do-backup script and the second post execution is regarding to an external validation which was updated by the script. This validation is key for chaining those services based on a condition.

### upload-backup.sh
This is the secondary service. It will be triggered depending on the post execution result obtained in the do-backup.service. This custom unit file contains the "PartOf" option in the [Unit] section in order to be stopped together with the do-backup.service. Since upload-backup.service is part of do-backup.service. Just only is nedeed to stop do-backup.service that upload-backup.service will
stop too.



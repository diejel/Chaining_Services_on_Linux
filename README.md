# Chaining_Services_on_Linux
A briefly example about how to chaining services on Linux

## The logic behind this example
As intended to create a dummy service simulation, both scripts (do-backup & upload-backup)
generate a RANDOM number between {1..5}, if this number is equal to 02
the output is SUCCESS, in other situation is considered as FAILED.


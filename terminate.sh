#!/bin/bash

instance_id=$(aws ec2 describe-instances --filters Name=instance-state-name,Values=running | jq -r '.Reservations[].Instances[].InstanceId')
aws ec2 terminate-instances --instance-ids $instance_id

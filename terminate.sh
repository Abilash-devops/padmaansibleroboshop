#!/bin/bash

instance_id=$(aws ec2 describe-instances --filters Name=instance-state-name,Values=running | jq -r '.Reservations[].Instances[].InstanceId')
for instance_ids in instance_id
do
aws ec2 terminate-instances --instance_ids
done
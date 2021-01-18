#!/bin/bash
#set -xe
set -xeuo pipefail

usage="USAGE:
bash 02-subread_qsub.sh <sample_list.txt> <walltime> <memory> <account_department> <genome_index> <aligner>"

#define stepo in the pipeline - should be the same name as the script
step=02-subread

######### Setup ################
sample_list=$1
walltime=$2
mem=$3
account_department=$4
index=$5
aligner=$6
if [ "$#" -lt "6" ]
then
echo $usage
exit -1
else
echo "Submitting samples listed in '$sample_list' for alignment"
cat $sample_list
fi

echo $account_department

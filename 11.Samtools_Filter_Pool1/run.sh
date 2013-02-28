#!/bin/sh
echo "using samtools to filter  sam files"
echo " running on all populations"
 for N in {2..8}; do  samtools view -q 20 -Sb ../10.bwa_sw_Pool1/Pool1_Pop$N.sam | samtools sort - Pool1_Pop$N.filtered ; done

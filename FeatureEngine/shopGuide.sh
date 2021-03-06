#!/bin/sh
sharding=$1
/home/hadoop/spark/bin/spark-submit \
--master yarn \
--deploy-mode cluster \
--name ShopGuide"$sharding" \
--num-executors 2 \
--executor-memory 1g \
--executor-cores 1 \
--jars /data/lib/joda-convert-1.8.1.jar,/data/lib/joda-time-2.9.9.jar \
--class com.ezr.actwilling.ShopGuide \
/data/lib/FeatureEngine.jar $sharding

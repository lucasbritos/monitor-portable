#!/bin/bash


cp conf.d/* examples/


for f in examples/*.conf; do
  sed -i 's/community = "\w*"/community = "public"/g' "$f"
  sed -i 's/agents = \[.*\]/agents = \["1.1.1.1"\]/g' "$f"
  sed -i 's/urls = \[.*\]/urls = \["1.1.1.1"\]/g' "$f"
done
echo "Examples generated and ofuscated"

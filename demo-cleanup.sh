#!/usr/bin/env bash

# source the goodness
. ./init.sh

# hide the evidence
clear

# put your demo awesomeness here
pe "cf apps ; cf services ; cf routes"

pe "cf delete sample-app -f"
pe "cf delete-service sample-app-db -f"
pe "cf delete-orphaned-routes -f"
pe "rm -rf sample-app"

# show a prompt so as not to reveal our true nature after
# the demo has concluded
p ""

#!/bin/bash

rviz2 &

sleep 1

./bin/driving_viewer ./config/amr_params.yaml &

sleep 3
export LD_LIBRARY_PATH="$(pwd)/lib:$LD_LIBRARY_PATH"
./bin/amr_emulator ./config/amr_params.yaml




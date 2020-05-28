#!/bin/bash
# Copyright 2020 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This script tests all Edge TPU supported model structures for
# transfer-learning.
#
# This script will be available once installing docker container following
# classification transfer-learn tutorial. Just run:
#   ./workflow_test.sh

# Exit script on error.
set -e
# Echo each command, easier for debugging.
set -x

source "$PWD/constants.sh"
declare -a all_network_types=(
  "mobilenet_v1"
  "mobilenet_v2"
  "inception_v1"
  "inception_v2"
  "inception_v3"
  "inception_v4")

# Train small interations to save time.
TRAIN_STEPS=5
QUANTIZE_DELAY=1

# Place to keep converted tflite graphs.
TFLITE_GRAPHS="/tmp/tflite_graphs"
mkdir -p "${TFLITE_GRAPHS}"

for network_type in "${all_network_types[@]}"; do
  for train_whole_model in "true" "false"; do
    echo "----------------------"
    echo "TESTING workflow with ${network_type} ${train_whole_model} ..."
    if [[ -d "${LEARN_DIR}" ]]; then
      rm -rf "${LEARN_DIR}"
    fi
    ./prepare_checkpoint_and_dataset.sh --network_type "${network_type}"
    ./start_training.sh --network_type "${network_type}" \
      --train_steps "${TRAIN_STEPS}" \
      --quantize_delay "${QUANTIZE_DELAY}" \
      --train_whole_model "${train_whole_model}"
    ./run_evaluation.sh --network_type "${network_type}"
    if [[ -d "${OUTPUT_DIR}" ]]; then
      rm -rf "${OUTPUT_DIR}"
    fi
    ./convert_checkpoint_to_edgetpu_tflite.sh --network_type "${network_type}" \
      --checkpoint_num "${TRAIN_STEPS}"
    cp "${OUTPUT_DIR}/output_tflite_graph.tflite" \
      "${TFLITE_GRAPHS}/${network_type}-${train_whole_model}.tflite"
  done
done

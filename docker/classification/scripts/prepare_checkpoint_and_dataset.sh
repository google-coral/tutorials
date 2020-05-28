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

# Exit script on error.
set -e
# Echo each command, easier for debugging.
set -x

usage() {
  cat << END_OF_USAGE
  Downloads checkpoint and dataset needed for the tutorial.

  --network_type    Can be one of [mobilenet_v1, mobilenet_v2, inception_v1,
                    inception_v2, inception_v3, inception_v4],
                    mobilenet_v1 by default.
  --help            Display this help.
END_OF_USAGE
}

network_type="mobilenet_v1"
while [[ $# -gt 0 ]]; do
  case "$1" in
    --network_type)
      network_type=$2
      shift 2 ;;
    --help)
      usage
      exit 0 ;;
    --*)
      echo "Unknown flag $1"
      usage
      exit 1 ;;
  esac
done

source "$PWD/constants.sh"

echo "PREPARING checkpoint ..."
mkdir -p "${LEARN_DIR}"
mkdir -p "${CKPT_DIR}"
cd "${CKPT_DIR}"
ckpt_link="${ckpt_link_map[${network_type}]}"
ckpt_name="${ckpt_name_map[${network_type}]}"
wget -O "${ckpt_name}.tgz" "${ckpt_link}"
tar zxvf "${ckpt_name}.tgz"

echo "PREPARING dataset ..."
mkdir -p "${DATASET_DIR}"
cd "${SLIM_DIR}"
python download_and_convert_data.py \
  --dataset_name=flowers \
  --dataset_dir="${DATASET_DIR}"

echo "CHECKPOINT and dataset available in ${LEARN_DIR}"

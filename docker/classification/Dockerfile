# Copyright 2018 The TensorFlow Authors. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# #==========================================================================

# Run the following from this directory to build this image and run it:
#
#     CLASSIFY_DIR=${PWD}/out && mkdir -p $CLASSIFY_DIR
#
#     docker build . -t classify-tutorial-tf1
#
#     docker run --name edgetpu-classify \
#       --rm -it --privileged -p 6006:6006 \
#       --mount type=bind,src=${CLASSIFY_DIR},dst=/tensorflow/models/research/slim/transfer_learn \
#       classify-tutorial-tf1

FROM tensorflow/tensorflow:1.11.0-rc2-devel

# Get the tensorflow models research directory, and move it into tensorflow
# source folder to match recommendation of installation
RUN git clone https://github.com/tensorflow/models.git && \
    (cd models && git checkout f788046ca876a8820e05b0b48c1fc2e16b0955bc) && \
    mv models /tensorflow/models

# Install wget (to make life easier below) and editors (to allow people to edit
# the files inside the container)
RUN apt-get update && \
    apt-get install -y wget vim emacs nano

ARG work_dir=/tensorflow/models/research/slim

# Get classification transfer learning scripts.
COPY scripts/ ${work_dir}/

WORKDIR ${work_dir}

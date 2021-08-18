#!/bin/bash

# AVA evaluate

python tools/run_net.py --cfg configs/AVA/c2/SLOW_8x8_R50.yaml \
AVA.FRAME_DIR /nfs/ada/hpirsiav/users/shared_datasets/AVA/ava/frames \
AVA.FRAME_LIST_DIR /nfs/ada/hpirsiav/users/shared_datasets/AVA \
AVA.ANNOTATION_DIR /nfs/ada/hpirsiav/users/shared_datasets/AVA \
TEST.CHECKPOINT_FILE_PATH /nfs/ada/hpirsiav/users/anisaha1/code/SlowFast/C2D_8x8_R50.pkl \
TEST.CHECKPOINT_TYPE caffe2

# SSv2 evaluate

python tools/run_net.py --cfg configs/SSv2/SLOWFAST_16x8_R50.yaml \
DATA.PATH_TO_DATA_DIR /nfs3/shared/shared_projects/ComPress_adapt_video/SSV2
TEST.CHECKPOINT_FILE_PATH /nfs/ada/hpirsiav/users/anisaha1/code/SlowFast/C2D_8x8_R50.pkl \
TEST.CHECKPOINT_TYPE caffe2


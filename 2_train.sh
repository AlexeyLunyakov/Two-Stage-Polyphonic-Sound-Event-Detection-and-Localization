#!/bin/bash

FEATURE_TYPE='logmelgcc'
AUDIO_TYPE='mic'
SEED=10

# Data directory
DATASET_DIR='./dataset_root/'

# Feature directory
FEATURE_DIR='./dataset_features/'

# Workspace
WORKSPACE='./'

# GPU number
GPU_ID=0

# Train SED
# TASK_TYPE: 'sed_only' | 'doa_only' | 'two_staged_eval' | 'seld'

# TASK_TYPE='sed_only'
# for FOLD in {1..4}
#     do
#     echo $'\nFold: '$FOLD
#     CUDA_VISIBLE_DEVICES=$GPU_ID python main.py train --workspace=$WORKSPACE --feature_dir=$FEATURE_DIR --feature_type=$FEATURE_TYPE --audio_type=$AUDIO_TYPE --task_type=$TASK_TYPE --fold=$FOLD --seed=$SEED
# done

# Train SED on one FOLD only
CUDA_VISIBLE_DEVICES=$GPU_ID python main.py train --workspace=$WORKSPACE --feature_dir=$FEATURE_DIR --feature_type=$FEATURE_TYPE --audio_type=$AUDIO_TYPE --task_type=$TASK_TYPE --fold=1 --seed=$SEED

# Train DOA (turned off for SED task)
# TASK_TYPE: 'sed_only' | 'doa_only' | 'two_staged_eval' | 'seld'

# TASK_TYPE='doa_only'
# for FOLD in {1..4}
#     do
#     echo $'\nFold: '$FOLD
#     # CUDA_VISIBLE_DEVICES=$GPU_ID python ${WORKSPACE}main.py train --workspace=$WORKSPACE --feature_dir=$FEATURE_DIR --feature_type=$FEATURE_TYPE --audio_type=$AUDIO_TYPE --task_type=$TASK_TYPE --fold=$FOLD --seed=$SEED
#     CUDA_VISIBLE_DEVICES=$GPU_ID python main.py train --workspace=$WORKSPACE --feature_dir=$FEATURE_DIR --feature_type=$FEATURE_TYPE --audio_type=$AUDIO_TYPE --task_type=$TASK_TYPE --fold=$FOLD --seed=$SEED
# done






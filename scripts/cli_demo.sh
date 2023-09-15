#!/bin/bash

CUDA_VISIBLE_DEVICES=0 python ./src/cli_demo.py \
    --model_name_or_path /models/Zhongjing-LLaMA-base \
    --checkpoint_dir ./checkpoints/zhongjing_7_13/checkpoint-6000,./checkpoints/zhongjing_7_26 \
    --template ziya \
    --repetition_penalty 1.2
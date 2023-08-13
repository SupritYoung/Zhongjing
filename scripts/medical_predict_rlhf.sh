#!/bin/bash

export CUDA_VISIBLE_DEVICES=0

# RLHF
accelerate launch --config_file=./configs/infer_config.yaml ./src/train_sft.py \
    --do_rlhf \
    --rlhf_k 4 \
    --model_name_or_path /hy-tmp/Ziya-LLaMA-13B-v1 \
    --prompt_template ziya \
    --checkpoint_dir ./checkpoints/medical_pretrain_6-7,./checkpoints/zhongjing_7_13,./checkpoints/yimin_7_26 \
    --dataset CMtMedQA_rlhf \
    --dataset_dir ./data \
    --output_dir ./results/medical_rlhf \
    --per_device_eval_batch_size 16 \
    --gradient_accumulation_steps 4 \
    --fp16 \
    --predict_with_generate \
    --ddp_find_unused_parameters False
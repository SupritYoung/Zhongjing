#!/bin/bash

# 多卡
export CUDA_VISIBLE_DEVICES=0,1,2,3

accelerate launch python src/train_pt.py \
    --model_name_or_path /root/autodl-tmp/Ziya-LLaMA-13B-v1 \
    --prompt_template ziya \
    --do_train \
    --dataset cn-med \
    --finetuning_type lora \
    --output_dir checkpoints/medical_pretrain_6-7 \
    --overwrite_cache \
    --per_device_train_batch_size 4 \
    --gradient_accumulation_steps 4 \
    --lr_scheduler_type cosine \
    --logging_steps 10 \
    --save_steps 1000 \
    --learning_rate 5e-5 \
    --num_train_epochs 3.0 \
    --plot_loss \
    --fp16
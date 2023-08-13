#!/bin/bash

CUDA_VISIBLE_DEVICES=0 python src/train_rm.py \
    --model_name_or_path /hy-tmp/Ziya-LLaMA-13B-v1 \
    --do_train \
    --dataset zhongjing_rlhf \
    --finetuning_type lora \
    --lora_rank 32 \
    --resume_lora_training False \
    --checkpoint_dir ./checkpoints/medical_pretrain_6-7 \
    --output_dir ./checkpoints/zhongjing/rm_8_1 \
    --per_device_train_batch_size 16 \
    --gradient_accumulation_steps 4 \
    --lr_scheduler_type cosine \
    --logging_steps 10 \
    --save_steps 50 \
    --learning_rate 7e-4 \
    --num_train_epochs 10.0 \
    --plot_loss \
    --fp16 \
    --dev_ratio 0.1
deepspeed --num_gpus=7 ../sft/supervised_finetuning.py \
    --model_name_or_path /home/zhangzc/workplace/hs_nlp/src/data/models/llm_models/Baichuan2-13B-Base \
    --train_file_dir ../data/sft \
    --validation_file_dir ../data/sft \
    --template_name baichuan-chat \
    --per_device_train_batch_size 1 \
    --per_device_eval_batch_size 1 \
    --padding_side left \
    --do_train \
    --do_eval \
    --use_peft True \
    --fp16 \
    --max_eval_samples 100 \
    --num_train_epochs 4 \
    --learning_rate 2e-5 \
    --logging_strategy steps \
    --logging_steps 100 \
    --eval_steps 100 \
    --evaluation_strategy steps \
    --save_steps 100 \
    --save_strategy steps \
    --save_total_limit 3 \
    --gradient_accumulation_steps 1 \
    --preprocessing_num_workers 40 \
    --model_max_length 1024 \
    --output_dir ../model/sft/outputs-sft-v1 \
    --ddp_timeout 30000 \
    --logging_first_step True \
    --target_modules all \
    --lora_rank 8 \
    --lora_alpha 16 \
    --lora_dropout 0.05 \
    --torch_dtype float16 \
    --device_map auto \
    --report_to tensorboard \
    --ddp_find_unused_parameters False \
    --gradient_checkpointing True \
    --adam_beta1 0.9 \
    --adam_beta2 0.95 \
    --adam_epsilon 1e-5 \
    --weight_decay 0.1 \
    --warmup_steps 2000 \
    --warmup_ratio 0.1 \
    --lr_scheduler_type cosine \
    --deepspeed ../sft/deepspeed_config.json
